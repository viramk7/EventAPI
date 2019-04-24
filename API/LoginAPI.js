var express = require('express');
var router = express.Router();

var { login, signup, test } = require('../Controllers/LoginController')();

router.get('/test', test);
router.post('/login', login);
router.post('/signup', signup);

module.exports = router;

