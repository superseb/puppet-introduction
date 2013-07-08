Introduction to Puppet
======================

Prerequisites
-------------
Have the following software installed:
* VirtualBox 4.2.x - https://www.virtualbox.org/wiki/Downloads
* Vagrant 1.2.x - http://downloads.vagrantup.com
* Git 1.8.x - http://git-scm.com/downloads

Initialization
--------------
Download and add CentOS 6.4 Puppet master and agent boxes for vagrant:

    wget https://s3-eu-west-1.amazonaws.com/xebia-vm/vagrant-boxes/centos-64-i386-minimal-pe-master.box
    vagrant box add centos-64-i386-minimal-pe-master centos-64-i386-minimal-pe-master.box

    wget https://s3-eu-west-1.amazonaws.com/xebia-vm/vagrant-boxes/centos-64-i386-minimal-pe-agent.box
    vagrant box add centos-64-i386-minimal-pe-agent centos-64-i386-minimal-pe-agent.box

    wget https://s3-eu-west-1.amazonaws.com/xebia-vm/vagrant-boxes/precise32-vanilla.box
    vagrant box add precise32-vanilla precise32-vanilla.box

Clone puppet-introduction git repository:

    git clone https://github.com/xebia/puppet-introduction.git

Start the image:

    vagrant up

The following output will be shown when puppet runs successfully:

    Running Puppet with standalone.pp...
    notice: Puppet says hi!
    notice: /Stage[main]//Node[default]/Notify[Greeting]/message: defined 'message' as 'Puppet says hi!'
    notice: Finished catalog run in 0.05 seconds

Run puppet (again):

    vagrant provision
