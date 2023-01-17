const express = require('express')

const app = express()

app.listen(3000,()=>console.log("to ouvindo"))

app.get('/',(req,res)=>{
    res.send("Hello World!")

})





