
# install base dependencies
sudo yum install -y perl-XML-Simple dosfstools perl-AppConfig mkisofs

# install systemconfigurator first
sudo rpm -Uvh systemconfigurator-2.2.11-1.noarch.rpm 

# install system imager server
sudo rpm -Uvh systemimager-common-4.0.2-1.noarch.rpm systemimager-x86_64boot-standard-4.0.2-1.noarch.rpm systemimager-x86_64initrd_template-4.0.2-1.noarch.rpm systemimager-server-4.0.2-1.noarch.rpm systemimager-bittorrent-4.0.2-1.noarch.rpm 
