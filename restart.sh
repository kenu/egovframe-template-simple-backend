cd $TARGET_PATH

# Stop 만들어진 PID로 서비스 종료
# pid=`cat ./application.pid 2> /dev/null`
# echo "pid : $pid"
# if [ "$pid" == "" ]
# then
#   printf "Is not running"
# else
#   echo "Stopping..."
#   sudo kill $pid
# fi
pid=`cat ./application.pid 2> /dev/null`
sudo kill $pid
echo "pid : $pid"

# Start 및 해당 PID 파일로 만들기
sudo nohup java -jar ./target/sht_webapp.jar 2>> /dev/null >> /dev/null &
