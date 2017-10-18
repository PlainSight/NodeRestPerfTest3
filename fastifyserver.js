const fastify = require('fastify');

let app = fastify();

app.get('/', (req, reply) => {
  reply
    .header('Content-Type', 'text/plain')
    .header('Connection', 'close')
    .send('Hello world!');
});

app.listen(process.env.PORT || 3000, err => {
  if (err) throw err;
  console.log(`server listening on ${ app.server.address().port }`);
});
