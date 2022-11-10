var TGCUser = require("../modal/TCGModels/TGCUser");
let doRequest = require("../bussiness/doRequest");

// Models
let AgLog = require("../modal/TCGModels/AgLog");
let SexLog = require("../modal/TCGModels/SexLog");
let YlLog = require("../modal/TCGModels/YlLog");
let UserInfo = require("../modal/TCGModels/UserInfo");
let Helpers = require("../Helpers/Helpers");

module.exports = function (client, data) {
  if (data.type !== void 0 && data.gameId !== void 0) {
    let transferAmount = data.amount;
    let type = data.type;
    let product_type = 0;
    let createLog = null;
    if (data.gameId == 0) {
      product_type = 4;
      createLog = AgLog;
    } else if (data.gameId == 1) {
      product_type = 125;
      createLog = YlLog;
    } else if (data.gameId == 2) {
      product_type = 112;
      createLog = SexLog;
    }

    if (type == 1) {
      let phandu = transferAmount % 1000;
      transferAmount -= phandu;
      UserInfo.findOne({ name: client.profile.name }, function (err, user) {
        if (user) {
          if (user.red < transferAmount) {
            client.red({
              notice: {
                load: false,
                text: "Số dư không đủ vui lòng thử lại !!!",
                title: "THÔNG BÁO",
              },
            });
          } else {
            createLog.create(
              {
                uid: client.UID,
                name: client.profile.name,
                type: type,
                amount: transferAmount,
                time: new Date(),
              },
              async function (err, small) {
                if (small) {
                  let params = {
                    method: "ft",
                    username: client.profile.name,
                    product_type: product_type,
                    fund_type: 1,
                    amount: ((transferAmount * (80 / 100)) >> 0) / 1000,
                    reference_no: small._id,
                  };
                  var transferData = await doRequest(params);
                  if (transferData.status == 0) {
                    user.red -= transferAmount * 1;
                    user.save();
                    params = {
                      method: "gb",
                      username: client.profile.name,
                      product_type: product_type,
                    };
                    var dataBalance = await doRequest(params);
                    TGCUser.updateOne(
                      { name: client.profile.name },
                      { $inc: { buyin: transferAmount * 1 } }
                    ).exec();
                    client.red({
                      notice: {
                        load: false,
                        text:
                          "QUY ĐỔI THÀNH CÔNG " +
                          Helpers.numberWithCommas(transferAmount) +
                          " D",
                        title: "THÀNH CÔNG",
                      },
                      user: { red: user.red },
                      live: { balance: dataBalance.balance },
                    });
                  } else {
                    client.red({
                      notice: {
                        load: false,
                        text:
                          "VUI LÒNG LIÊN HỆ FANPAGE MÃ LỖI (" +
                          transferData.status +
                          ")",
                        title: "THẤT BẠI",
                      },
                    });
                  }
                  small.status = transferData.status;
                  small.reason = transferData.error_desc;
                  small.save();
                }
              }
            );
          }
        }
      });
    } else {
      createLog.create(
        {
          uid: client.UID,
          name: client.profile.name,
          type: type,
          amount: transferAmount,
          time: new Date(),
        },
        async function (err, small) {
          if (small) {
            let params = {
              method: "ft",
              username: client.profile.name,
              product_type: product_type,
              fund_type: 2,
              amount: transferAmount,
              reference_no: small._id,
            };
            var transferOutValue = (transferAmount / 0.8) * 1000;
            var transferData = await doRequest(params);
            if (transferData.status == 0) {
              UserInfo.findOneAndUpdate(
                { name: client.profile.name },
                { $inc: { red: transferOutValue } },
                async function (err, user) {
                  params = {
                    method: "gb",
                    username: client.profile.name,
                    product_type: product_type,
                  };
                  var dataBalance = await doRequest(params);
                  client.red({
                    notice: {
                      load: false,
                      text:
                        "QUY ĐỔI THÀNH CÔNG " +
                        Helpers.numberWithCommas(transferAmount) +
                        " D",
                      title: "THÀNH CÔNG",
                    },
                    user: { red: user.red * 1 + transferOutValue },
                    live: { balance: dataBalance.balance },
                  });
                }
              );
              TGCUser.updateOne(
                { name: client.profile.name },
                { $inc: { payout: transferOutValue * 1 } }
              ).exec();
            } else if (transferData.status == 11) {
              client.red({
                notice: {
                  load: false,
                  text: "SỐ DƯ KHÔNG ĐỦ ĐỂ RÚT",
                  title: "THẤT BẠI",
                },
              });
            } else {
              client.red({
                notice: {
                  load: false,
                  text:
                    "VUI LÒNG LIÊN HỆ FANPAGE MÃ LỖI (" +
                    transferData.status +
                    ")",
                  title: "THẤT BẠI",
                },
              });
            }
            small.status = transferData.status;
            small.reason = transferData.error_desc;
            small.save();
          }
        }
      );
    }
  }
};
