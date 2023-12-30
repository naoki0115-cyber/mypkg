# ROS_2mypkg
[![test](https://github.com/naoki0115-cyber/mypkg/actions/workflows/test.yml/badge.svg)](https://github.com/naoki0115-cyber/mypkg/actions/workflows/test.yml)
## 概要
これは2つのノード間で通信を行うROS2のパッケージです。
talkerノードから``random_numbers``トピックにプッシュされたデータをlistenerノードがサブスクライブし、表示します。
## 起動方法
* ROS2が導入されている環境で、以下のコマンドを実行して、トピックのパブリッシャ(talker)とサブスクライバ(listener)を起動します。
```
$ ros2 launch mypkg talk_listen.launch.py
```
* パブリッシャ(talker)とサブスクライバ(listener)を個別に実行する場合、別々の端末で以下のコマンドを実行して下さい。
* パブリッシャ(talker)
```
$ ros2 run mypkg talkerr
```
* サブスクライバ(listener)
```
$ ros2 run mypkg listener
```
## 使用例
listenerは、talkerから受け取った1~6までの整数を0.5秒間隔で表示します。
```
[INFO] [launch]: All log files can be found below /home/naoki/.ros/log/2023-12-30-21-44-03-548452-LAPTOP-SVGPSVBR-123787
[INFO] [launch]: Default logging verbosity is set to INFO
[INFO] [talker-1]: process started with pid [123788]
[INFO] [listener-2]: process started with pid [123790]
[listener-2] [INFO] [1703940366.611012552] [listener]: 5
[listener-2] [INFO] [1703940367.104194198] [listener]: 6
[listener-2] [INFO] [1703940367.566554686] [listener]: 5
[listener-2] [INFO] [1703940368.092197100] [listener]: 3
[listener-2] [INFO] [1703940368.575127275] [listener]: 4
```
## ノードとトピックの概要
* **Talker**(``talker``)：このノードは1～6のランダムな数字を0.5秒毎に``random_numbers``トピックにプッシュします。
* **Listener**(``listener``)：このノードは``random_numbers``トピックから数字を受け取り、表示します。
* **random_number**s：16ビットの符号付き整数のトピックであり、1～6のランダムな数字を含みます。
## ソフトウェア環境
* このパッケージを使用するには、以下のソフトウェアが必要です。
	* Python 3
	* ROS 2
## テスト環境
* このパッケージは以下の環境でテストされています。
	* Ubuntu 22.04.3 LTS
## ライセンス・著作権
* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
* このパッケージのコードの一部は，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
	* https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022
* © 2023 Naoki Kaizawa
