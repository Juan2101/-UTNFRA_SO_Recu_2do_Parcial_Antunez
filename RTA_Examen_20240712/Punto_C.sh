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
