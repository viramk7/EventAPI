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

                let addVenueData = prepareAddVenueData(fields);

                let validation = validateAddVenueData(addVenueData);
                if (!validation.success) {
                    res.json({ success: validation.success, message: validation.message });
                }

                let query = "INSERT INTO `venue_profiles` (`venue_id`,`name`,`phone`,`dress_code`,`capacity`," +
                    "`parking`, `payment_type`,`venue_type`,`entertainments`,`music_genres`,`address`," +
                    "`description`, `latitude`,`longitude`, `created_at`)" +
                    " VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

                let data = [
                    addVenueData.venue_id, addVenueData.name, addVenueData.phone, addVenueData.dress_code,
                    addVenueData.capacity, addVenueData.parking, addVenueData.payment_type,
                    addVenueData.venue_type, addVenueData.entertainments, addVenueData.music_genres,
                    addVenueData.address, addVenueData.description, addVenueData.latitude, 
                    addVenueData.longitude, addVenueData.created_at
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
            });

            form.on('end', function (err) {
                connection.end();
                console.log("END");
            });


            form.on('error', function (err) {
                connection.end();
                console.log("error: " + error);
            });


        } catch (error) {
            res.json({ success: false, message: 'Error: ' + error });
        } finally {
            // connection.end();
        }

    }

    function prepareAddVenueData(fields) {
        return {
            venue_id: fields.venue_id || '',
            name: fields.name || '',
            phone: fields.phone || '',
            dress_code: fields.dress_code || '',
            capacity: fields.capacity || '',
            parking: fields.parking || '',
            payment_type: fields.payment_type || '',
            venue_type: fields.venue_type || '',
            entertainments: fields.entertainments || '',
            music_genres: fields.music_genres || '',
            address: fields.address || '',
            description: fields.description || '',
            latitude: fields.latitude || '',
            longitude: fields.longitude || '',
            created_at: new Date()
        };
    }

    return {
        addVenue,
    }

}
