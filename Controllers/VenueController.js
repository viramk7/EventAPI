const mysql = require('mysql');

var config = require('../Connectionconfig');
var { validateAddVenueData } = require('../Validation/VenueValidation');

module.exports = function loginController() {

    function addVenue(req, res, next) {

        let connection = mysql.createConnection(config);

        try {

            let validation = validateAddVenueData({});
            if (!validation.success) {
                res.json({ success: validation.success, message: validation.message });
            }

            let query = "";

            let data = [];

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
            res.json({ success: false, message: 'Error: ' +  error});
        } finally {
            connection.end();
        }

    }

    return {
        addVenue,
    }

}