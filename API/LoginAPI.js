var express = require('express');
var mysql = require('mysql');
var router = express.Router();
var app = express();
var config = require('./Connectionconfig');


router.post('/Login', function (req, res, next) {
   
    let connection = mysql.createConnection(config);

    try {
        
        let query = "SELECT id, user_type, name, email, email_verified_at, status, remember_token FROM `users` WHERE (email = ? OR name = ?) AND `password` = ?;";
    
        let userName = req.body.username;
        let pwd = req.body.password;

        if(userName === undefined || pwd == undefined){
            res.json({success: false, message: 'invalid data sent'});
        }

        connection.query(query,[userName,userName,pwd], function (error, results, fields) {
            
            if (error){
                res.json({success: false, message: 'Something went wrong'});
            } 
            
            if(results.length <= 0){
                res.json({success: false, message: 'Invalid username or password.'});
            }else{
                res.json({success: true, message: 'success', data: results[0]});
            }
        });

    } catch (error) {
        res.json({success: false, message: 'Error'});
    } finally{
        connection.end();
    }

});
 

module.exports = router;

