var http = require("http");

http.createServer(function(request, response) {
	response.setHeader('Connection', 'close');
	response.end('Hello World!');
}).listen(8000);
