const getbalance = require('./live/getbalance');
const transfer = require('./live/transfer');
module.exports = function (socket, data) {
  if (!!data.getbalance) {
    getbalance(socket, data.getbalance);
  }
  if (!!data.transfer) {
    transfer(socket, data.transfer);
  }
};
