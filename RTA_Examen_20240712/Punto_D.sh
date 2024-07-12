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
