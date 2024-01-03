#!/bin/bash
# SPDX-FileCopyrightText: 2023 Naoki Kaizawa
# SPDX-License-Identifier: BSD-3-Clause

dir=~
[ "$1" != "" ] && dir="$1"   # 引数があったら、そちらをホームに変える。

cd "$dir/ros2_ws"
colcon build
source "$dir/.bashrc"
timeout 10 ros2 launch mypkg talk_listen.launch.py > /tmp/mypkg.log

last_number=$(tail -n 1 /tmp/mypkg.log | grep -o '[0-9]*$')

if [ "$last_number" -ge 1 ] && [ "$last_number" -le 6 ]; then
  exit 0  # 通常時（0）を返す
else
  exit 1  # エラー時（1）を返す
fi