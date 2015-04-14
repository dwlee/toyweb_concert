# toyweb_concert

## 설치 가이드 

* rocon 설치 및 시뮬레이션 구동
  * https://github.com/robotics-in-concert/rocon_demos/blob/demo_concert/Readme.md
* toyweb concert 설치 

```
  > cd <your rocon workspace>
  > cd src
  > wstool merge https://raw.githubusercontent.com/dwlee/toyweb_concert/master/rosinstall/toyweb_concert.rosinstall
  > wstool update -j10
  > cd ..
  > yujin_make --install-rosdeps
  > yujin_make
  > . .bashrc
```
* toyweb concert 구동
```
  > rocon_launch toyweb_concert toyweb.concert --screen
```
* 안드로이드 app과 연동 확인 방법
  * Toyweb concert 환경 설정
  
    ```
    > cd <your rocon workspace>
    > . .bashrc
    ```
  * 안드로이드 app 에서 concert ip 입력후, concert와 연결한다. 
  * 다음 명령어를 통해 ```/send_action``` 토픽으로 concert와 안드로이드 기기가 연결됨을 확인한다. 

    ```
    > rostopic info /send_action
    ```
  * 다음과 같은 메세지를 확인하면 연결이 성공한 것이다. 
    ```
    Type: std_msgs/String

    Publishers: None

    Subscribers: 
      * /software/workflow_engine_blockly/rosbridge_websocket (http://192.168.10.24:45430/)
      * /my_application (http://192.168.10.124:54465/)
    ```
## Troubleshooting

* ```could not find the avahi-daemon - is it running?``` 메세지가 출력된 경우 
  * 다음과 같은 명령어를 통해 avahi-daemon을재 실행한다. 
  ```
    > sudo service avahi-daemon restart
  ```
* 아이로비가 연결되지 않는경우 
  * 아이로비 ip 확인한 후, composer에서 설정을 변경한다. 
