var express = require('express');
var router = express.Router();

var { addVenue } = require('../Controllers/VenueController')();

router.post('/AddVennue', addVenue);

module.exports = router;