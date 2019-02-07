var express = require('express');
var router = express.Router();

var { login, signup } = require('../Controllers/LoginController')();


router.post('/login', login);
router.post('/signup', signup);

module.exports = router;

