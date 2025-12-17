#!/bin/bash
user=$1
useradd -m $user -s /bin/bash
passwd $user
