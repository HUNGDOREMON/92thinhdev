let crypto = require("crypto");
var query = require("request-promise");
var key = Buffer.from("KXscTePH", "utf8");
var sha256 = require("js-sha256");
module.exports = async function (params) {
  var cipher = crypto.createCipheriv("des-ecb", key, "");
  var encryptedParams = cipher.update(JSON.stringify(params), "utf8", "base64");
  encryptedParams += cipher.final("base64");
  var sign = sha256(encryptedParams + "zfa4fH8eJOAAV7bd");
  var data =
    "merchant_code=m66winvnd" +
    "&params=" +
    encodeURIComponent(encryptedParams) +
    "&sign=" +
    encodeURIComponent(sign);
  var options = {
    method: "POST",
    uri: "http://www.connect6play.com/doBusiness.do",
    headers: {
      "Content-Type": "application/x-www-form-urlencoded",
    },
    body: data,
    json: true, // Automatically stringifies the body to JSON
  };
  const res = await query(options);
  //console.log(res);
  return res;
};
