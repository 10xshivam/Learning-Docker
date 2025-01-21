import express from "express"

const PORT = process.env.PORT || 8000

const app = express()

app.get('/',(req,res)=>{
    return res.json({
        status: "Success",
        message: "Hello from express server",
    });
})

app.listen(PORT,()=>{
    console.log(`Server is listening on the port ${PORT}`)
})

/**
 * Node.js v20.15.1
 * npm installed v10.9.0
 */