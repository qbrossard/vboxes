# Using the JRuby VM

## prerequisites

* [Virtualbox] (http://www.virtualbox.org)
* [Vagrant] (http://www.vagrantup.com)

## Creating an environment

* clone this repo

    `git clone https://github.com/qbrossard/vboxes.git`

* go to the jruby directory

    `cd vboxes/jruby`

* download and start the vagrant box (will take some time as it downloads the 500Mb box)

    `vagrant up`

* to login to the box with ssh run 

    `vagrant ssh`

## Using the VM
The VM folder automatically gets shared between host and guest system. This way you can use your dev environment on the host and run the preconfigured ruby+rails on the guest/VM

once you're connected with `vagrant ssh` to create a new rails app named testapp run 

   `jruby -S rails new testapp`

