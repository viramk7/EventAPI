const mysql = require('mysql');
//const bcrypt = require('bcrypt');
//const saltRounds = 10;

const config = require('../Connectionconfig');
const { validateLogin, validateSignup } = require('../Validation/login.validation');
const { getJsonResult } = require('../Common/Utility');

module.exports = function loginController() {

    function login(req, res, next) {

        let connection = mysql.createConnection(config);

        try {


            // // SEE HERE
            // var hash = '$2b$10$FhVDPVJ28RegqKgIucln7.7IlKogMbpBpT80Aw/10FjAzs6fXjVtO';
            // var isValid = bcrypt.compareSync(req.body.password, hash); 
            // console.log('isValid: ' + isValid);

            // let query = "SELECT `id`, user_type, name, email, email_verified_at, status, remember_token" +
            let query = "SELECT *" +
                "FROM `users`" +
                "WHERE (email = ? OR name = ?) AND BINARY `password` = ?;";

            let userName = req.body.username;
            let pwd = req.body.password;

            if (!validateLogin(userName, pwd)) {
                res.json(getJsonResult(0, 'Data is invalid.'));
                return;
            }

            connection.query(query, [userName, userName, pwd], function (error, results, fields) {

                if (error) {
                    res.json(getJsonResult(0, 'Something went wrong.'));
                    return;
                }

                if (results.length <= 0) {
                    res.json(getJsonResult);
                } else {
                    let userData = {
                        id: results[0].id,
                        name: results[0].name,
                        email: results[0].email,
                        user_type: results[0].user_type,
                    }
                    res.json(getJsonResult(1, 'You have been logged in successfully.', userData));
                }
            });

        } catch (error) {
            res.json(getJsonResult(0, 'Something went wrong.'));
        } finally {
            connection.end();
        }

    }

    function signup(req, res, next) {

        let connection = mysql.createConnection(config);

        try {

            let signupBody = {
                email: req.body.email || '',
                password: req.body.password || '',
                usertype: req.body.usertype || '',
                name: req.body.name || '',
                password: req.body.password || '',
            };

            // // SEE HERE
            // var hash = bcrypt.hashSync(signupBody.password, saltRounds);
            // console.log('hash: ' + hash);


            let validation = validateSignup(signupBody);
            if (!validation.success) {
                let status = validation.success ? 1 : 0;
                res.json(getJsonResult(status,validation.message));
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

                if (error) {
                    console.log(error);
                    if (error.code == 'ER_DUP_ENTRY') {
                        res.json(getJsonResult(0, 'The record you entered is already in our database.'));
                        return
                    }

                    res.json(getJsonResult(0, 'Something went wrong.'));
                    return;
                }

                if (results.affectedRows <= 0) {
                    res.json(getJsonResult(0, 'Could not save record.'));
                    return;
                } else {
                    var userData = {
                        id: results.insertId,
                        user_type: signupBody.usertype,
                        name: signupBody.name,
                        email: signupBody.email,
                    }
                    res.json(getJsonResult(1, 'User Registration Successfully. Please Login with your credentials.',userData));
                    return;
                }
            });


        } catch (error) {
            res.json(getJsonResult(0, 'Something went wrong.'));
        } finally {
            connection.end();
        }

    }

    return {
        login,
        signup
    };

};