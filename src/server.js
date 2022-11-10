import express from 'express';
import configViewEngine from './config/configEngine';
import routes from './routes/web';
import socketIoController from './controllers/socketIoController';
import cronJobContronler from './controllers/cronJobContronler';
import { TC_API } from './TC_API';
let connectMongo = require('./config/connectMongo');
let mongoose = require('mongoose');

require('dotenv').config();
let cookieParser = require('cookie-parser');

const app = express();
const server = require('http').createServer(app);
const io = require('socket.io')(server);

const port = process.env.PORT || 3000;

app.use(cookieParser());
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.get('/launchGame', async (req, res) => {
  const { username } = req.query;
  if (username) {
    //console.log(username);
    const data = await TC_API.launchGame(username);
    res.send(data)
  }
  else {
    res.send('no query')
  }
});

// setup viewEngine
configViewEngine(app);
// init Web Routes
routes.initWebRouter(app);

// Connect MongoDB
require('mongoose-long')(mongoose);
mongoose.connect(connectMongo.url, connectMongo.options).catch(function (error) {
  if (error) console.log('Connect to MongoDB failed', error);
  else console.log('Connect to MongoDB success');
});

// Cron game 1 Phut
cronJobContronler.cronJobGame1p(io);

// Check xem ai connect vào sever
socketIoController.sendMessageAdmin(io);

// app.all('*', (req, res) => {
//     return res.render("404.ejs");
// });

server.listen(port, () => {
  console.log('Connected success port: ' + port);
});
