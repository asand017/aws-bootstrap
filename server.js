const { hostname } = require('os');
const http = require('http');

const message = `Hello World from ${hostname()}\n`;
const port = 8181;

const server = http.createServer((req, res) => {
	res.statusCode = 200;
	res.setHeader('Content-Type', 'text/plain');
	res.end(message);
});

server.listen(port, hostname, () => {
	console.log(`Server running at http://${hostname()}:${port}/`);
});
