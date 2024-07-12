cd ~
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
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
history
ls
./UTN-FRA_SO_Examenes/202407_Recu/script_Precondicion.sh
source ~/.bashrc
ls
cd RTA_Examen_20240712/
cat > Punto_A.sh
nano Punto_A.sh 
cd ..
cd UTN-FRA_SO_Examenes/202407_Recu/docker/
ls
cd web
ls
nano index.html 
sudo chmod 666 /var/run/docker.sock
docker login  -u juan2101
cd ..
nano dockerfile 
docker build -t juan2101/web2-antunez:v1 .
sudo fdisk /dev/sdc
sudo pvcreate /dev/sdc7
sudo vgextend vg_datos /dev/sdc7
sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker
docker build -t juan2101/web2-antunez:v1 .
docker image list
docker push juan2101/web2-antunez:v1
nano run.sh
sudo chmod 755 run.sh
./run.sh
docker ps
curl localhost:8080
cd web/file/
ls
lscpu | grep 'Model name:' | sed 's/Model name:\s*//' > info.txt
nano info.txt 
cd ..
ls
cd ..
ls
nano docker-compose.yml 
sudo apt install docker-compose
docker-compose up -d
docker ps
docker exec -it be46e1e39c45 /bin/bash
history
cd ~
cd RTA_Examen_20240712/
ls
nano Punto_C.sh 
cd ~
ssh-keygen
cd .ssh/
cat id_rsa.pub >> authorized_keys
cd ..
cd  UTN-FRA_SO_Examenes/202407_Recu/ansible/roles/2PRecuperatorio/tasks/
nano main.yml 
cd ..
ls
cd ..
ansible-galaxy role init Instala-tools_antunez
ls
rm Instala-tools_antunez/
rm -r Instala-tools_antunez/
ls
ansible-galaxy role init Instala-tools_antunez
rm -r Instala-tools_antunez/
cd roles/
ansible-galaxy role init Instala-tools_antunez
ls
cd Instala-tools_antunez/tasks/
nano main.yml 
cd ..
nano playbook.yml 
ansible-playbook -i /home/juan/UTN-FRA_SO_Examenes/202407_Recu/ansible/inventory/hosts playbook.ym
ansible-playbook -i hosts playbook.ym
ls
ansible-playbook -i hosts playbook.yml
ansible-playbook -i /home/juan/UTN-FRA_SO_Examenes/202407_Recu/ansible/inventory/hosts playbook.yml
ansible-playbook -i /home/juan/UTN-FRA_SO_Examenes/202407_Recu/ansible/inventory/hosts playbook.yml --ask-become-pass
cd roles/Instala-tools_antunez/tasks/
nano main.yml 
cd ..
ansible-playbook -i /home/juan/UTN-FRA_SO_Examenes/202407_Recu/ansible/inventory/hosts playbook.yml
ansible-playbook -i /home/juan/UTN-FRA_SO_Examenes/202407_Recu/ansible/inventory/hosts playbook.yml --ask-become-pass
cd roles/Instala-tools_antunez/tasks/
nano main.yml 
cd ..
ansible-playbook -i /home/juan/UTN-FRA_SO_Examenes/202407_Recu/ansible/inventory/hosts playbook.yml --ask-become-pass
cat /tmp/alumno/datos.txt
history
cd ~
cd RTA_Examen_20240712/
ls
nano Punto_D.sh 
cd ..
git init
git remote add origin https://github.com/Juan2101/-UTNFRA_SO_Recu_2do_Parcial_Antunez.git
git add UTN-FRA_SO_Examenes/202407_Recu/
git add RTA_Examen_20240712/
history -a
