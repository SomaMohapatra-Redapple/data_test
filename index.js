const id = require('./route/route')

const express = require("express");

const app = express();


var cors = require("cors");
app.use(cors());
let port = process.env.PORT||3000;
app.use('/:id',id)



app.listen(port,"0.0.0.0", () => console.log("server is running on "+process.env.STATUS + " mode and listening on " + port) );