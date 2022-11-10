let AutoIncrement =
  require("mongoose-auto-increment-reworked").MongooseAutoIncrementID;
let mongoose = require("mongoose");

let Schema = new mongoose.Schema({
  uid: { type: String, required: true }, // id
  name: { type: String, required: true }, // Tên nhân vật
  type: { type: Number, require: true }, // 1 nap 0 rut
  amount: { type: Number, require: true }, // so tien
  status: { type: Number, default: -1 }, // so tien
  reason: { type: String, default: "" }, // Tên nhân vật
  time: { type: mongoose.Schema.Types.Date, required: true }, // time
});
Schema.index({ uid: 1, name: 1, reference: 1 }, { background: true });
Schema.plugin(AutoIncrement.plugin, { modelName: "SexLog", field: "id" });

module.exports = mongoose.model("SexLog", Schema);
