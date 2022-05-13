echo "###############################"
echo "#####Test API Laravel todo#####"
echo "###############################"
echo "\n\n"

echo "##### POST TEST #####"
echo "Starting POST API test..."
sleep 3
curl -v -d @request.json -H "Content-Type: application/json" http://localhost:80/api/posts
echo "\n\n"

echo "##### GET TEST #####"
echo "Starting GET API test..."
sleep 3
curl -v http://localhost:80/api/posts
echo "\n\n"

echo "##### PUT TEST #####"
echo "Starting PUT API test..."
sleep 3
curl -v -d @update.json -H 'Content-Type: application/json' -X PUT http://localhost:80/api/posts/1
echo "\n\n"

echo "##### PUT TEST #####"
echo "Starting DELETE API test..."
sleep 3
curl -v -X DELETE http://localhost:80/api/posts/1
echo "\n\n"

echo "####done#####"
