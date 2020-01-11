# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.define "web" do |web|
        web.vm.box = "ubuntu/bionic64"
        web.vm.network "private_network", ip: "71"
        web.vm.provider "virtualbox" do |v|
            v.memory = 2048
        end
        web.vm.provision :ansible_local do |ansible|
            ansible.playbook = "playbook.yml"
            ansible.tags = "initial-vagrant"
            ansible.verbose = true
            ansible.extra_vars = {
                server_name: "mtgfantasydjango.local",
                listen_port: 80,
                pronym_environment: "vagrant",
                include_ssl_certs: false,
                runserver_port: 8000,
                notebook_port: 8100,
                copy_local_secrets: true,
                copy_ssl_certs: false
            }
        end
    end
end