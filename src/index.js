/**
 * Created by apple on 2017.
 */

var http = require('http');
var app = http.createServer(function(req, res) {
    res.writeHead(200);
    res.end('This is ivuex/docker_pm2_demo.\n');
});
var listener = app.listen(6500, function() {
    console.log('Listening on port ' + listener.address().port);
    // 发送消息给pm2
});
