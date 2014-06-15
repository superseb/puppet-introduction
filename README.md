Introduction to Puppet
======================

Prerequisites
-------------
Have recent version of the following software installed:
* VirtualBox - https://www.virtualbox.org/wiki/Downloads
* Vagrant - http://downloads.vagrantup.com
* Git - http://git-scm.com/downloads

Initialization
--------------
Clone puppet-introduction git repository:

    git clone https://github.com/xebia/puppet-introduction.git

Download and add CentOS 6.5 box for vagrant:

    wget http://puppet-vagrant-boxes.puppetlabs.com/centos-65-x64-virtualbox-nocm.box
    vagrant box add centos-65-x64-virtualbox-nocm centos-65-x64-virtualbox-nocm.box

Download and add Puppet Enterprise 3.2.3 to pe_binary folder:

    cd pe_binary
    wget https://s3.amazonaws.com/pe-builds/released/3.2.3/puppet-enterprise-3.2.3-el-6-x86_64.tar.gz

Install the Vagrant Oscar plugin

    vagrant plugin install oscar

Start the images:

    vagrant up

This will create two images: a Puppet Master, and a Puppet Agent. The following output will be shown when puppet runs successfully:

    ==> agent: Running Puppet with standalone.pp...
    ==> agent: Notice: Compiled catalog for agent.local in environment production in 0.03 seconds
    ==> agent: Notice: Puppet says hi!
    ==> agent: Notice: /Stage[main]/Main/Notify[Greeting]/message: defined 'message' as 'Puppet says hi!'
    ==> agent: Notice: Finished catalog run in 0.14 seconds

Run puppet (again):

    vagrant provision
