# Stop 만들어진 PID로 서비스 종료
pwd
cat ./application.pid
pid=`cat ./application.pid 2> /dev/null`

if [ "$pid" == "" ]
then
  printf "Not running"
else
  echo "Stopping..."
  sudo kill $pid
fi

# Start 및 해당 PID 파일로 만들기
sudo nohup java -jar ./target/sht_webapp.jar 2>> /dev/null >> /dev/null &
