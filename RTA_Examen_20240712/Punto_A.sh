sudo fdisk -l
sudo fdisk /dev/sdc/
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
sudo fdisk /dev/sde
sudo fdisk -l
sudo pvcreate /dev/sdc5 /dev/sdc6 /dev/sdd5 /dev/sde6
sudo pvs
sudo vgcreate vg_datos /dev/sdc6 /dev/sdd5 /dev/sde6
sudo vgcreate vg_temp /dev/sdc5
sudo vgs
sudo lvcreate -L +10M vg_datos -n lv_docker
sudo lvcreate -l +100%FREE vg_datos -n lv_multimedia
sudo lvcreate -l +100%FREE vg_temp -n lv_swap
sudo lvs
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_multimedia
sudo mkswap /dev/mapper/vg_temp-lv_swap
sudo swapon /dev/mapper/vg_temp-lv_swap
free -h
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo mkdir /multimedia/
sudo mount /dev/mapper/vg_datos-lv_multimedia /multimedia/
sudo lsblk -f
sudo pvs
sudo systemctl restart docker
sudo mkswap /dev/sde5
sudo swapon /dev/sde5
free -h
sudo lvs



