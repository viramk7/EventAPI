var validator = require('validator');

module.exports = {

    // 8 - 10 length
    // 1 upper case
    // 1 lower case
    // 1 special character
    // 1 digit
    isValidatePassword : function (password){
        
        // 8 - 10 length
        if(password.length < 8 || password.length > 10){
            return false;
        }

        // lower case
        if(! (/[a-z]/.test(password))){
            return false;
        };

        // upper case
        if(!(/[A-Z]/.test(password))){
            return false;
        };

        // digit
        if(!(/\d/.test(password))){
            return false;
        }

        let format = /[ !@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]/;
        if(!format.test(password)){
            return false;
        }

        return true;
    },

    // 0 - guest, 1- venue , 2-promoter
    isValidateUserType: function (usertype){
        let validUserTypes = ['0','1','2'];
        return validUserTypes.indexOf(usertype) >= 0
    }


};


 