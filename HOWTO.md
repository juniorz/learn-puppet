# CentOS 6.3 Vagrant

References:

* http://blog.vandenbrand.org/2012/02/21/creating-a-centos-6-2-base-box-for-vagrant/
* https://gist.github.com/2883519
* http://wiki.centos.org/HowTos/Virtualization/VirtualBox/CentOSguest
* http://www.uncompiled.com/centos-6-puppet-27-mcollective-foreman-rabbit

* https://gist.github.com/3624528
* https://gist.github.com/3615875

Other links

* http://devops.me/2011/10/07/bootstrapping-vagrant-with-puppet/

## Steps

1. Create a VirtualBox vm
2. Install CentOS
3. Run commands

```
rpm -ivh http://dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-7.noarch.rpm
yum -y update
reboot

yum install -y dkms sudo vim make gcc kernel-devel-`uname -r`
# install virtualbox guest tools

#rpm -ivh http://yum.puppetlabs.com/el/6/products/i386/puppetlabs-release-6-6.noarch.rpm

# Install dependencies for RVM and Ruby...
sudo yum -y install gcc-c++ patch readline readline-devel zlib zlib-devel libxml2-devel libyaml-devel libxslt-devel libffi-devel openssl-devel make bzip2 autoconf automake libtool bison iconv-devel git

# Get and install RVM
curl -L https://get.rvm.io | sudo bash -s stable

# Source rvm.sh so we have access to RVM in this shell
source /etc/profile.d/rvm.sh

# Install Ruby 1.9.3-125
rvm install 1.9.3 -C --sysconfdir=/etc
rvmsudo rvm alias create default 1.9.3
gem install 

Edit /etc/hosts and add
127.0.0.1 vagrant-centos63
::1 vagrant-centos63

[root@vagrant-centos63 ~]# cat /etc/sysconfig/network
NETWORKING=yes
HOSTNAME=vagrant-centos63
[root@vagrant-centos63 ~]# 
