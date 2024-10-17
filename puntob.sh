#!/bin/bash


sudo fdisk /dev/sdc << EOF
n
p
1

+2.5G

n
p
2

+2.5G

n
p
3

+2.5G

n
e
4

+2.5g

w
EOF
#formateo
sudo mkfs.ext3 /dev/sdc1
sudo mkfs.ext3 /dev/sdc2
sudo mkfs.ext3 /dev/sdc3
sudo mkfs.ext3 /dev/sdc4

#montaje
sudo mkdir /mnt/part1
sudo mkdir /mnt/part2
sudo mkdir /mnt/part3
sudo mkdir /mnt/part4

sudo mount /dev/sdc1 /mnt/part1
sudo mount /dev/sdc2 /mnt/part2
sudo mount /dev/sdc3 /mnt/part3
sudo mount /dev/sdc4 /mnt/part4

#instruccion para mostrar tabla final
lsblk
