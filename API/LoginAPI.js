var express = require('express');
var router = express.Router();

var { login, signup } = require('../Controllers/LoginController')();


router.post('/Login', login);
router.post('/Signup', signup);

module.exports = router;

