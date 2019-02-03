var mysql = require('mysql');


function MakeConnection()
{
    connection = mysql.createConnection({
    host: 'localhost', //localhost
   
    user: 'root',//sit
    password: '', //sit@123456
    database: 'event',
    multipleStatements: true
});
};

module.exports = {
    makeConnection : MakeConnection,
    reconnect : function(err)
                {
                    if(err.fatal  || err.message.indexOf('enqueue')> -1  || err.message.indexOf('fatal') > -1)
                    {
                        MakeConnection();
                    }
                }
}