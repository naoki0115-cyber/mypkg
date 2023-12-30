#ROS_2mypkg
##概要
これは2つのノード間で通信を行うROS2のパッケージです。
talkerノードから``random_numbers``トピックにプッシュされたデータをlistenerノードがサブスクライブし、表示します。
##起動方法
下記のコマンドを実行して、トピックのパブリッシャ(talker)とサブスクライバ(listener)を起動します。
```
$ ros2 launch mypkg talk_listen.launch.py
```
##使用例
listenerは、talkerから受け取った1~6までの整数を0.5秒間隔で表示します。
```
使用コードを書く
```
##ノードとトピックの概要
	* **Talker**(``talker``)：このノードは1~6のランダムな数字を0.5秒毎に``random_numbers``トピックにプッシュします。
	* **Listener**(``listener``)：このノードは``random_numbers``トピックから数字を受け取り、表示します。
	* random_numbers：16ビットの符号付き整数のトピックであり、1~6のランダムな数字を含みます。
##ソフトウェア環境
このパッケージを使用するには、以下のソフトウェアが必要です。
	* Python 3
	* ROS 2
##テスト環境
このパッケージは以下の環境でテストされています。
	* Ubuntu 22.04.3 LTS
##ライセンス・著作権
	* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
	* このパッケージのコードの一部は，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
	* https://ryuichiueda.github.io/my_slides/robosys_2022/lesson7.html#/
	* https://ryuichiueda.github.io/my_slides/robosys_2022/lesson8.html#/
	* https://ryuichiueda.github.io/my_slides/robosys_2022/lesson9.html#/
	* https://ryuichiueda.github.io/my_slides/robosys_2022/lesson10.html#/
	* https://ryuichiueda.github.io/my_slides/robosys_2022/lesson11.html#/
	* © 2023 Naoki Kaizawa
