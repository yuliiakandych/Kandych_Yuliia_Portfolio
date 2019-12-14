const config = require("../config");
const sql = require('mysql');

const connect = sql.createPool({
    host: config.host,
    port: config.port,
    user: config.uname,
    password: config.pname,
    database: config.database,
    connectionLimit : 20,
    queueLimit : 100,
    waitForConnections : true
})

module.exports = connect;