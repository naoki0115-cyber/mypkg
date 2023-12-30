#!/bin/bash
# SPDX-FileCopyrightText: 2023 Naoki KAizawa
# SPDX-License-Identifier: BSD-3-Clause

dir=~
[ "$1" != "" ] && dir="$1"   #引数があったら、そちらをホームに変える。

cd "$dir/ros2_ws"
colcon build
source "$dir/.bashrc"
timeout 10 ros2 launch mypkg talk_listen.launch.py > /tmp/mypkg.log

last_line=$(tail -n 1 /tmp/mypkg.log)
if [[ $last_line =~ [1-6] ]]; then
    echo "0"
else
    echo "1"
fi

