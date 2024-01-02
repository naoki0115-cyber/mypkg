# SPDX-FileCopyrightText: 2023 Naoki Kaizawa
# SPDX-License-Identifier: BSD-3-Clause

import rclpy
from rclpy.node import Node
from std_msgs.msg import Int16
import random

class Talker():
    def __init__(self, node):
        self.pub = node.create_publisher(Int16, "random_numbers", 10)
        node.create_timer(0.5, self.cb)

    def cb(self):
        msg = Int16()
        msg.data = random.randint(1, 100)
        self.pub.publish(msg)

def main():
    rclpy.init()
    node = Node("talker")
    talker = Talker(node)
    rclpy.spin(node)

if __name__ == '__main__':
    main()
