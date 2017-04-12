apt-get install apache2-utils
apt-get install npm
npm install hapi
npm install express
npm install restify
npm install koa
npm install n
npm install total.js
n install latest
n latest

echo express >> results.txt ;
node expressserver.js & sleep 5 ; ab -k -n 50000 -c 100 -t 20 http://127.0.0.1:8000/ | grep "Requests per second:" >> results.txt ;
pkill -f expressserver ;
sleep 5

echo hapi >> results.txt ;
node hapiserver.js & sleep 5 ;
ab -k -n 50000 -c 100 -t 20 http://127.0.0.1:8000/ | grep "Requests per second:" >> results.txt ;
pkill -f hapiserver ;
sleep 5

echo node >> results.txt ;
node rawnodeserver.js & sleep 5 ; ab -k -n 50000 -c 100 -t 20 http://127.0.0.1:8000/ | grep "Requests per second:" >> results.txt ;
pkill -f rawnodeserver ;
sleep 5

echo restify >> results.txt ;
node restifyserver.js & sleep 5 ; ab -k -n 50000 -c 100 -t 20 http://127.0.0.1:8000/ | grep "Requests per second:" >> results.txt ;
pkill -f restifyserver ;
sleep 5

echo koa >> results.txt ;
node koaserver.js & sleep 5 ; ab -k -n 50000 -c 100 -t 20 http://127.0.0.1:8000/ | grep "Requests per second:" >> results.txt ;
pkill -f koaserver ;
sleep 5

echo total.js >> results.txt ;
node totalserver/total.js & sleep 5 ; ab -k -n 50000 -c 100 -t 20 http://127.0.0.1:8000/ | grep "Requests per second:" >> results.txt ;
pkill -f total ;
sleep 5