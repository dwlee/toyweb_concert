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

## Troubleshooting
* 아이로비가 연결되지 않는경우 
  * 아이로비 ip 확인한 후, composer에서 설정을 변경한다. 
