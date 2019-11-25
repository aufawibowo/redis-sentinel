# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define "redis_master" do |redis_master|
    redis_master.vm.hostname = "redis-master"
    redis_master.vm.box = "bento/ubuntu-18.04"
    redis_master.vm.network "private_network", ip: "192.168.16.184"
    
    redis_master.vm.provider "virtualbox" do |vb|
      vb.name = "redis-master"
      vb.gui = false
      vb.memory = "1024"
    end

    redis_master.vm.provision "shell", path: "provision/master.sh", privileged: false
  end

  (1..2).each do |i|
    config.vm.define "redis_slave_#{i}" do |set_redis_slave|
        set_redis_slave.vm.hostname = "redis-slave-#{i}"
        set_redis_slave.vm.box = "bento/ubuntu-18.04"
        set_redis_slave.vm.network "private_network", ip: "192.168.212.#{i+184}"
        set_redis_slave.vm.provider "virtualbox" do |vb|
          vb.name = "redis-slave-#{i}"
          vb.gui = false
          vb.memory = "1024"
        end
        set_redis_slave.vm.provision "shell", path: "provision/slave_#{i}.sh", privileged: false
    end
  end

end
