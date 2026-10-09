

import http, {type IncomingMessage, type ServerResponse}from "node:http"


const PORT =  5000

const server = http.createServer((req: IncomingMessage, res : ServerResponse) =>{
    const method = req.method
        // get > read data
        // post > create data
        // put > replace data
        // patch > update partial data
        // delete > delete data 


    const url = req.url
        // in which path the client is actually requesting 



    const userAgent =  req.headers["user-agent"]



    res.statusCode = 200
        // set http status code
        // 200 > req is successfull
        // 201, 400, 400, 429, 401

    res. setHeader('Content-Type', 'text/plain')


    res.end(` Basic http node server: ${method}: ${url}: ${userAgent}`)

})


server.listen(PORT, ()=>{
    console.log(`server is running on port ${PORT}`)
})


