#!/bin/bash
#
# this is a script I wrote for another project
# GPLv3 Licensed, use at your own risk
#

mkdir -p /mnt/centos6.2/var/lib/rpm
rpm --rebuilddb --root=/mnt/centos6.2/
rpm -v -i --root=/mnt/centos6.2/ --nodeps centos-release-6.2-el6.centos.7.x86_64.rpm
if [[! -f /etc/pki]]; then
	ln -s /mnt/centos6.2/etc/pki /etc/
fi
mkdir -p /mnt/centos6.2/root
cp /etc/skel/.??* /mnt/centos6.2/root
yum --installroot=/mnt/centos6.2 install -y rpm-build yum mount
mount --bind proc /mnt/centos6.2/proc/
mount --bind dev /mnt/centos6.2/dev/
