var koa = require('koa');
var app = new koa();

app.use(function *(){
	this.set('Connection', 'close');
  this.body = 'Hello World!';
});

app.listen(8000);