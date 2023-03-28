const express = require("express");

const app = express();


var cors = require("cors");
app.use(cors());
let port = process.env.PORT||3000;
const idfunc = (req,res)=>{
    res.status(200).json({
        message : `app is running on ${port}`
    })

    console.log(req.params.id);
}

module.exports=idfunc;