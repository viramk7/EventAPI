var express = require('express');
var router = express.Router();

var { addVenue } = require('../Controllers/VenueController')();

router.post('/addVenue', addVenue);

module.exports = router;