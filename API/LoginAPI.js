var express = require('express');
var router = express.Router();
var app = express();
var server = require('./Connectionconfig');


// var mysql      = require('mysql');
// var connection = mysql.createConnection({
//   host     : 'localhost',
//   port: 80,
//   user     : 'root',
//   password : '',
//   database : 'event'
// });


router.get('/pagenotfound', function (req, res, next) {
    console.log(1);
   
});

router.get('/Login', function (req, res, next) {
    //console.log(req);
   // var User = req.body;

  
    console.log("sdgsigsjh");


    connection.connect();
 
connection.query('SELECT * from users', function (error, results, fields) {
  if (error) throw error;
  console.log('The solution is: ', results[0]);
});
 
connection.end();
    // connection.connect(function (err) {

    //     if(err)
    //     {
    //        console.log("Connection error");
    //     }
    //     //connection.end();
    //     var sql = "select * from users";

    //     connection.query( sql, function (error, results, fields) {
    //         console.log("In COnnection");
    //         //console.log(error.code); // 'ECONNREFUSED'
    //         //console.log(error.fatal); // true
    //         console.log(results);

    //       });
    
    // });

});
module.exports = router;

