# -*- mode: ruby -*-
# vi: set ft=ruby :

# This Vagrantfile is for testing the setup locally.

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    config.vm.define "tester-es" do |testvm|
        testvm.vm.box = "puphpet/debian75-x64"

        testvm.ssh.port = 2400
        testvm.vm.network "forwarded_port", guest: 22, host: testvm.ssh.port
        testvm.vm.network "private_network", ip: "192.168.33.60"
    end

    config.vm.define "tester-es-2" do |testvm|
        testvm.vm.box = "puphpet/debian75-x64"

        testvm.ssh.port = 2401
        testvm.vm.network "forwarded_port", guest: 22, host: testvm.ssh.port
        testvm.vm.network "private_network", ip: "192.168.33.61"
    end
end
