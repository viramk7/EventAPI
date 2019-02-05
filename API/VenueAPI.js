var express = require('express');
var formidable = require('formidable');
var router = express.Router();

var { addVenue } = require('../Controllers/VenueController')();

router.post('/AddVennue', addVenue);

// router.post('/AddVennue', function (req, res, next) {
//     console.log('Req:' + req.body.venue_id);
//     var form = new formidable.IncomingForm();

//     form.parse(req, function (err, fields, files) {
//         if (err) {
//             console.log("error: " + err);
//             next(err);
//         }

//         console.log("fields: " + fields.venue_id);
//     });

// });

module.exports = router;