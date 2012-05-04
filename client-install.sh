
# install base dependencies
sudo yum --installroot=/mnt/centos6.2/ install -y perl-XML-Simple dosfstools perl-AppConfig mkisofs

# install systemconfigurator first
sudo rpm -v -h -i --root=/mnt/centos6.2/ systemconfigurator-2.2.11-1.noarch.rpm 

# install system imager server
sudo rpm  -v -h -i --root=/mnt/centos6.2/ systemimager-common-4.0.2-1.noarch.rpm systemimager-client-4.0.2-1.noarch.rpm
