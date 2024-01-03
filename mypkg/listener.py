# SPDX-FileCopyrightText: 2023 Naoki Kaizawa
# SPDX-License-Identifier: BSD-3-Clause

import rclpy
from rclpy.node import Node
from std_msgs.msg import Int16

def cb(msg):
    global node
    received_data = msg.data
    if 1 <= received_data <= 6:
        node.get_logger().info("%d" % received_data)
    else:
        node.get_logger().info("Received: %d" % received_data)

rclpy.init()
node = Node("listener")
sub = node.create_subscription(Int16, "random_numbers", cb, 10)
rclpy.spin(node)
