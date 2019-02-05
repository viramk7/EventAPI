const mysql = require('mysql');
var formidable = require('formidable');

var config = require('../Connectionconfig');
var { validateAddVenueData } = require('../Validation/VenueValidation');

module.exports = function venueController() {

    function addVenue(req, res, next) {

        let connection = mysql.createConnection(config);

        try {

            var form = new formidable.IncomingForm();
            
            form.parse(req, function (err, fields, files) {
                if (err) {
                    console.log("error: " + err);
                    next(err);
                }

                console.log("fields: "+ fields.venue_id);
            });

            form.on('end', function (err) {
                console.log("END");
            });


            form.on('error', function (err) {
                console.log("error: " + error);
            });

            var addVenueData = prepareAddVenueData(req);

            let validation = validateAddVenueData(addVenueData);
            if (!validation.success) {
                res.json({ success: validation.success, message: validation.message });
            }

            let query = "INSERT INTO `venue_profiles` (`venue_id`,`name`,`phone`,`dress_code`,`capacity`," +
                "`parking`, `payment_type`,`venue_type`,`entertainments`,`music_genres`,`address`," +
                "`description`, `latitude`,`longitude`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

            let data = [
                addVenueData.venue_id,
                addVenueData.name,
                addVenueData.phone,
                addVenueData.dress_code,
                addVenueData.capacity,
                addVenueData.parking,
                addVenueData.payment_type,
                addVenueData.venue_type,
                addVenueData.entertainments,
                addVenueData.music_genres,
                addVenueData.address,
                addVenueData.description,
                addVenueData.latitude,
                addVenueData.longitude
            ];

            connection.query(query, data, function (error, results, fields) {

                if (error) {

                    if (error.code == 'ER_DUP_ENTRY') {
                        res.json({ success: false, message: 'Duplicate entry.' });
                        return
                    }

                    res.json({ success: false, message: 'Something went wrong.' + error });
                    return;
                }

                if (results.affectedRows <= 0) {
                    res.json({ success: false, message: 'could not save data.' });
                    return;
                } else {
                    res.json({ success: true, message: 'record saved successfully.', data: [] });
                    return;
                }
            });

        } catch (error) {
            res.json({ success: false, message: 'Error: ' + error });
        } finally {
            connection.end();
        }

    }

    function prepareAddVenueData(req) {
        return {
            venue_id: req.body.venue_id || '',
            name: req.body.name || '',
            phone: req.body.phone || '',
            dress_code: req.body.dress_code || '',
            capacity: req.body.capacity || '',
            parking: req.body.parking || '',
            payment_type: req.body.payment_type || '',
            venue_type: req.body.venue_type || '',
            entertainments: req.body.entertainments || '',
            music_genres: req.body.music_genres || '',
            address: req.body.address || '',
            description: req.body.description || '',
            latitude: req.body.latitude || '',
            longitude: req.body.longitude || ''
        };
    }

    return {
        addVenue,
    }

}
