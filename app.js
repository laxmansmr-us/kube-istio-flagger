const http = require('http');

//create a server object:
const version = process.env.version || '11111111';
http.createServer(function (req, res) {

    res.writeHead(200, {'Content-type': 'application/json'})
    res.end(JSON.stringify({
        message: `I am server, my version is ${version} .`
    }))
    // res.write(`I am server, my version is ${version} .`); //write a response to the client
    // res.end(); //end the response
}).listen(8080); //the server object listens on port 8080