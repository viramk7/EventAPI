var express = require('express');
var router = express.Router();

var { venueprofile } = require('../Controllers/VenueController')();

router.post('/venueprofile', venueprofile);

module.exports = router;