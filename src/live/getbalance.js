var TGCUser = require("../modal/TCGModels/TGCUser");
let doRequest = require("../bussiness/doRequest");
module.exports = function (client, data) {
  let platform = "html5-desktop";
  if (data.isMobile) {
    platform = "html5";
  }
  if (data.gameId !== void 0) {
    let product_type = 0;
    let game_code = "";
    let language = "";
    if (data.gameId == 0) {
      product_type = 4;
      game_code = "A00070";
      language = "VI";
    } else if (data.gameId == 1) {
      product_type = 125;
      game_code = "YL0016";
      language = "VI";
    } else if (data.gameId == 2) {
      product_type = 112;
      game_code = "SEX001";
      language = "VI";
    }
    TGCUser.findOne({ uid: client.UID }, async function (err, ok) {
      if (!!ok) {
        let params = {
          method: "gb",
          username: ok.username,
          product_type: product_type,
        };
        var dataBalance = await doRequest(params);
        var paramgame = {
          username: ok.username,
          language: language,
          method: "lg",
          product_type: product_type,
          game_code: game_code,
          game_mode: "1",
          platform: platform,
        };
        var datalinkgame = await doRequest(paramgame);
        if (dataBalance.status == 0 && datalinkgame.status == 0) {
          client.red({
            live: {
              balance: dataBalance.balance,
              link: datalinkgame.game_url,
              transferrate: 80,
              transfermin: 100000,
            },
          });
        } else {
          if (dataBalance.status == 30 || dataBalance.status == 30) {
            client.red({
              notice: {
                load: false,
                text: "CỔNG GAME HIỆN ĐANG BẢO TRÌ",
                title: "THÔNG BÁO",
              },
            });
          }
          console.error(dataBalance.error_desc + "-" + datalinkgame.error_desc);
        }
      } else {
        let params = {
          method: "cm",
          username: client.profile.name,
          password: client.profile.name,
        };
        var createData = await doRequest(params);
        if (createData.status == 0) {
          TGCUser.create(
            {
              uid: client.UID,
              name: client.profile.name,
              username: client.profile.name,
              password: client.profile.name,
            },
            async function (err, small) {
              if (small) {
                params = {
                  method: "gb",
                  username: small.username,
                  product_type: product_type,
                };
                var paramgame = {
                  username: small.username,
                  language: language,
                  method: "lg",
                  product_type: product_type,
                  game_code: game_code,
                  game_mode: "1",
                  platform: platform,
                };
                var dataBalance = await doRequest(params);
                var datalinkgame = await doRequest(paramgame);
                if (dataBalance.status == 0 && datalinkgame.status == 0) {
                  client.red({
                    live: {
                      balance: dataBalance.balance,
                      link: datalinkgame.game_url,
                      transferrate: 80,
                      transfermin: 100000,
                    },
                  });
                } else {
                  if (dataBalance.status == 30 || dataBalance.status == 30) {
                    client.red({
                      notice: {
                        load: false,
                        text: "CỔNG GAME HIỆN ĐANG BẢO TRÌ",
                        title: "THÔNG BÁO",
                      },
                    });
                  }
                  console.error(
                    dataBalance.error_desc + "-" + datalinkgame.error_desc
                  );
                }
              }
            }
          );
        }
      }
    });
  } else {
    client.red({
      notice: {
        load: false,
        text: "CỔNG GAME HIỆN ĐANG BẢO TRÌ",
        title: "THÔNG BÁO",
      },
    });
  }
};
