var express = require('express');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var mysql = require('mysql');
//const fileUpload = require('express-fileupload');
//var engines = require('consolidate');
var engines = require('ejs');
var expressValidator = require("express-validator");
var session = require('express-session');


//--------- my code----------
var needtocheck = false;
if (needtocheck) {
    
var cluster = require('cluster');
var PORT = +process.env.PORT || 3000;

// if (cluster.isMaster) {
//     cluster.fork();
//     cluster.fork();

//     cluster.on('disconnect', function (worker) {
//         console.error('disconnect!');
//         cluster.fork();
//     });
// }
// else {
//     var domain = require('domain');
//     var server = require('http').createServer(function (req, res) {
//         var d = domain.create();
//         d.on('error', function (er) {
//             //something unexpected occurred
//             console.error('error', er.stack);
//             try {
//                 //make sure we close down within 30 seconds
//                 var killtimer = setTimeout(function () {
//                     process.exit(1);
//                 }, 30000);
//                 // But don't keep the process open just for that!
//                 killtimer.unref();
//                 //stop taking new requests.
//                 server.close();
//                 //Let the master know we're dead.  This will trigger a
//                 //'disconnect' in the cluster master, and then it will fork
//                 //a new worker.
//                 cluster.worker.disconnect();

//                 //send an error to the request that triggered the problem
//                 res.statusCode = 500;
//                 res.setHeader('content-type', 'text/plain');
//                 res.end('Oops, there was a problem!\n');
//             }
//             catch (er2) {
//                 //oh well, not much we can do at this point.
//                 console.error('Error sending 500!', er2.stack);
//             }
//         });
//         //Because req and res were created before this domain existed,
//         //we need to explicitly add them.
//         d.add(req);
//         d.add(res);
//         //Now run the handler function in the domain.
//         d.run(function () {
//             //You'd put your fancy application logic here.
//             handleRequest(req, res);
//         });
//     });
//     server.listen(PORT);
// }

}
//------------end code-------

var app = express();




// view engine setup
//app.set('views', path.join(__dirname, 'Web/View'));
//app.engine('html', engines.mustache);
//app.engine('html', engines.renderFile);
//app.set('view engine', 'html');
app.set('view engine', 'ejs');

// uncomment after placing your favicon in /public
//app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(logger('dev'));
app.use(bodyParser.json({ limit: '50mb' }));
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'Web')));
app.use('/uploads',express.static(path.join(__dirname, 'uploads')));
app.use(express.static(__dirname + '/views/databaseManagement/scripts'));
app.use(expressValidator());
app.use(session({ secret: 'sit@123', cookie: { maxAge: (12000 * 1000) } }));


//CORS middleware
var allowCrossDomain = function (req, res, next) {
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE');
    res.header('Access-Control-Allow-Headers', 'X-Requested-With,content-type');

    // Pass to next layer of middleware
    next();

}

app.use(allowCrossDomain);

// routes 

var LoginService = require('./API/LoginAPI');
app.use('/', LoginService);

var VenueService = require('./API/VenueAPI');
app.use('/', VenueService);

var MongoDbDemo = require('./API/MongoDbDemo.js');
app.use('/', MongoDbDemo);

// catch 404 and forward to error handler

app.use(function(req, res, next) {
    var err = new Error('Not Found');
    err.status = 404;
     next(err);
    
});

process.on('uncaughtException', function (err) {
    console.error(err);
    console.log("Node NOT Exiting...");
  });

app.listen(3000, "0.0.0.0", function() {
    console.log('listening on 3000');
});

module.exports = app;

