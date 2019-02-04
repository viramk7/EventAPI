var validator = require('validator');
var { isValidatePassword, isValidateUserType } = require('../Common/Utility');

module.exports = {

    validateLogin: function (username, password) {
        console.log("username: " + username);
        console.log("password:" + password);
        return (username != undefined && password !== undefined);
    },

    validateSignup: function (data) {

        var email = data.email || '';
        var password = data.password || '';
        var usertype = data.usertype || '';
        var name = data.name || '';

        // VALIDATIONS

        if (validator.isEmpty(email)) {
            return { success: false, message: 'email is required' };
        }

        if (validator.isEmpty(password)) {
            return { success: false, message: 'password is required' };
        }

        if (validator.isEmpty(usertype)) {
            return { success: false, message: 'usertype is required' };
        }

        if (validator.isEmpty(name)) {
            return { success: false, message: 'name is required' };
        }

        if (!validator.isEmail(email)) {
            return { success: false, message: 'Invalid email address' };
        }

        if (!isValidatePassword(password)) {
            return { success: false, message: 'Password does not meet the minimum requirement' };
        }

        if (!isValidateUserType(usertype)) {
            return { success: false, message: 'user type is not valid' };
        }

        return { success: true, message: 'valid' }
    }

};