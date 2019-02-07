const mysql = require('mysql');
const formidable = require('formidableconst');

const config = require('../Connectionconfig');
const { validateAddVenueData } = require('../Validation/VenueValidation');
const { getJsonResult } = require('../Common/Utility');

module.exports = function venueController() {

    function venueprofile(req, res, next) {

        let connection = mysql.createConnection(config);

        try {

            var form = new formidable.IncomingForm();

            form.parse(req, function (err, fields, files) {

                let addVenueData = prepareAddVenueData(fields);

                let validation = validateAddVenueData(addVenueData);
                if (!validation.success) {
                    let status = validation.success ? 1 : 0;
                    res.json(getJsonResult(status,validation.message));
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
                            res.json(getJsonResult(0, 'The record you entered is already in our database.'));
                            return
                        }

                        res.json(getJsonResult(0, 'Something went wrong.'));
                        return;
                    }

                    if (results.affectedRows <= 0) {
                        res.json(getJsonResult(0, 'Could not save record.'));
                        return;
                    } else {
                        res.json(getJsonResult(1,'Venue profile added successfully, your data is securely store with our system'));
                        return;
                    }
                });
            });

            form.on('end', function (err) {
                connection.end();
            });

            form.on('error', function (err) {
                connection.end();
            });


        } catch (error) {
            res.json(getJsonResult(0, 'Something went wrong.'));
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
        venueprofile,
    }

}
