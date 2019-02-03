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
 
router.post('/Signup', function (req, res, next) {

    let connection = mysql.createConnection(config);

    try {

        var isValid = validateSignup(req);

        res.json({success: isValid.success, message: isValid.message});


    } catch (error) {
        res.json({success: false, message: 'Error:' + error});
    } finally{
        connection.end();
    }

});

function validateSignup(req){
   
    var email = req.body.email || '';
    var password = req.body.password || '';
    var usertype = req.body.usertype || '';
    var name = req.body.name || '';

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

