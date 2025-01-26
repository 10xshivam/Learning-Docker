import express from "express"

const PORT = process.env.PORT || 8000

const app = express()

app.get('/',(req,res)=>{
    return res.json({
        status: "Success",
        message: "Hello from express server",
    });
})

app.get('/health',(req,res)=>{
    return res.json({
        message: "I am healthy",
    });
})

app.listen(PORT,()=>{
    console.log(`Server is listening on the port ${PORT}`)
})

