let mongoose = require("mongoose");

let Schema = new mongoose.Schema({
  uid: { type: String, required: true, unique: true }, // id
  name: { type: String, required: true, unique: true }, // Tên nhân vật
  username: { type: String, required: true, unique: true }, // Tên nhân vật
  password: { type: String, required: true, unique: true }, //nap the hoac choi game
  buyin: { type: Number, default: 0 }, //loai game / napthe/giao dich
  payout: { type: Number, default: 0 }, // Loại cộng -
});
Schema.index({ uid: 1, username: 1, name: 1 }, { background: true });

module.exports = mongoose.model("TGCUser", Schema);
