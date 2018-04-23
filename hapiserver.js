'use strict';

const Hapi = require('hapi');

// Create a server with a host and port
const server = new Hapi.Server({
    host: 'localhost',
    port: 8000
});

// Add the route
server.route({
    method: 'GET',
    path:'/',
    handler: function (request, h) {
        const response = h.response('Hello World!');
        response.header('Connection','close');
        return response;
    }
});

// Start the server
server.start((err) => {

    if (err) {
        throw err;
    }
    console.log('Server running at:', server.info.uri);
});