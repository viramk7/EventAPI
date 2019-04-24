const MongoClient = require('mongodb').MongoClient;
const assert = require('assert');

var express = require('express');
var router = express.Router();


router.get('/testmongo', function (req, res, next) {

    // Connection URL
    const url = 'mongodb://viram:123@localhost:27017/';

    // Database Name
    const dbName = 'testdb';


    MongoClient.connect(url, function (err, db) {
        if (err) {
            console.log(err);
            throw err;
        } else {
            console.log('Connected');
            var dbo = db.db(dbName);
        }
        var dbo = db.db(dbName);

        dbo.createCollection("customers", function (err, res) {
            if (err) throw err;
            console.log("Collection created!");
            db.close();
        });
    });

    res.json({ success: "true" });

});


module.exports = router;