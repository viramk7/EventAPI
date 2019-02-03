var express = require('express');
var mysql = require('mysql');
var validator = require('validator');
var router = express.Router();
var app = express();
var config = require('./Connectionconfig');
var { isValidatePassword, isValidateUserType} = require('../Common/Utility');


router.post('/Login', function (req, res, next) {
   
    let connection = mysql.createConnection(config);

    try {
        
        let query = "SELECT id, user_type, name, email, email_verified_at, status, remember_token FROM `users` WHERE (email = ? OR name = ?) AND BINARY `password` = ?;";
    
        let userName = req.body.username;
        let pwd = req.body.password;

        if(userName === undefined || pwd == undefined){
            res.json({success: false, message: 'invalid data sent'});
        }

        connection.query(query,[userName,userName,pwd], function (error, results, fields) {
            
            if (error){
                res.json({success: false, message: 'Something went wrong'});
                return;
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
 
router.post('/Signup', function (req, res, next) {

    let connection = mysql.createConnection(config);

    try {

        let signupBody = {
             email : req.body.email || '',
             password : req.body.password || '',
             usertype : req.body.usertype || '',
             name : req.body.name || '',
             password : req.body.password || '123',
        }

        let validation = validateSignup(signupBody);
        if(!validation.success){
            res.json({success: validation.success, message: validation.message});
        }
        
        let query = "INSERT INTO `users` (`user_type`,`name`,`email`,`password`,`created_at`)" + 
                    "VALUES (?,?,?,?,?)";
        
        let values = [ 
            signupBody.usertype, 
            signupBody.name,
            signupBody.email,
            signupBody.password,
            new Date()
         ];

         connection.query(query, values, function (error, results, fields) {
            
            if (error){
                console.log(error);
                if(error.code == 'ER_DUP_ENTRY'){
                    res.json({success: false, message: 'Duplicate entry.' });
                    return    
                }

                res.json({success: false, message: 'Something went wrong. ' + error});
                return;
            } 
            
            if(results.affectedRows <= 0){
                res.json({success: false, message: 'could not save data.'});
                return;
            }else{
                res.json({success: true, message: 'record saved successfully.', data: []});
                return;
            }
        });

        
    } catch (error) {
        res.json({success: false, message: 'Error:' + error});
    } finally{
        connection.end();
    }

});

function validateSignup(data){
   
    var email = data.email || '';
    var password = data.password || '';
    var usertype = data.usertype || '';
    var name = data.name || '';

    // VALIDATIONS

    if(validator.isEmpty(email) ){
        return {success: false, message: 'email is required'};
    }

    if(validator.isEmpty(password)){
        return {success: false, message: 'password is required'};
    }

    if(validator.isEmpty(usertype)){
        return {success: false, message: 'usertype is required'};
    }

    if(validator.isEmpty(name)){
        return {success: false, message: 'name is required'};
    }
    
    if(!validator.isEmail(email)){
        return {success: false, message: 'Invalid email address'};
    }

    if(!isValidatePassword(password)){
        return {success: false, message: 'Password does not meet the minimum requirement'};
    }
  
    if(!isValidateUserType(usertype)){
        return {success: false, message: 'user type is not valid'};
    }

    return {success: true, message: 'valid'}
}

module.exports = router;

