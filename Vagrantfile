# -*- mode: ruby -*-
# vim: set ft=ruby :

Vagrant.configure("2") do |config|
   
   config.vm.box = "bento/ubuntu-24.04"
      config.vm.provider "virtualbox" do |v| 
         v.memory = 2048 
         v.cpus = 1 
      end  

#   config.vm.define "haproxy-ext-1" do |haproxyext1|
#      haproxyext1.vm.host_name = "haproxy-ext-1"
#      haproxyext1.vm.network "public_network", ip: "192.168.30.131", bridge: "eno1"
#      haproxyext1.vm.network "private_network", ip: "192.168.56.10"
#   end      

#   config.vm.define "haproxy-ext-2" do |haproxyext2|
#      haproxyext2.vm.host_name = "haproxy-ext-2"
#      haproxyext2.vm.network "public_network", ip: "192.168.30.132", bridge: "eno1"
#      haproxyext2.vm.network "private_network", ip: "192.168.56.11"
#   end

   config.vm.define "haproxy-int-1" do |haproxyint1|
      haproxyint1.vm.host_name = "haproxy-int-1"
      haproxyint1.vm.network "private_network", ip: "192.168.56.21"
   end      

   config.vm.define "haproxy-int-2" do |haproxyint2|
      haproxyint2.vm.host_name = "haproxy-int-2"
      haproxyint2.vm.network "private_network", ip: "192.168.56.22"
   end

   config.vm.define "control-1" do |control1|
      control1.vm.host_name = "control-1"
      control1.vm.network "private_network", ip: "192.168.56.31"
      control1.vm.provider "virtualbox" do |v| 
         v.memory = 4096 
         v.cpus = 2
      end
   end
 
   config.vm.define "control-2" do |control2|
      control2.vm.host_name = "control-2"
      control2.vm.network "private_network", ip: "192.168.56.32"
      control2.vm.provider "virtualbox" do |v| 
         v.memory = 4096 
         v.cpus = 2
      end
   end
 
   config.vm.define "control-3" do |control3|
      control3.vm.host_name = "control-3"
      control3.vm.network "private_network", ip: "192.168.56.33"
      control3.vm.provider "virtualbox" do |v| 
         v.memory = 4096 
         v.cpus = 2
      end
   end
 
   config.vm.define "node-1" do |node1|
      node1.vm.host_name = "node-1"
      node1.vm.network "private_network", ip: "192.168.56.41"
      node1.vm.disk :disk, name: "storage", size: "50GB"
      node1.vm.provider "virtualbox" do |v| 
         v.memory = 8192 
         v.cpus = 4
      end
   end

   config.vm.define "node-2" do |node2|
      node2.vm.host_name = "node-2"
      node2.vm.network "private_network", ip: "192.168.56.42"
      node2.vm.disk :disk, name: "storage", size: "50GB"
      node2.vm.provider "virtualbox" do |v| 
         v.memory = 8192 
         v.cpus = 4
      end
   end

   config.vm.define "node-3" do |node3|
      node3.vm.host_name = "node-3"
      node3.vm.network "private_network", ip: "192.168.56.43"
      node3.vm.disk :disk, name: "storage", size: "50GB"
      node3.vm.provider "virtualbox" do |v| 
         v.memory = 8192 
         v.cpus = 4
      end
   end

   config.vm.define "database-1" do |database1|
      database1.vm.host_name = "database-1"
      database1.vm.network "private_network", ip: "192.168.56.51"
      database1.vm.provider "virtualbox" do |v| 
         v.memory = 4096
         v.cpus = 2
      end
   end

   config.vm.define "database-2" do |database2|
      database2.vm.host_name = "database-2"
      database2.vm.network "private_network", ip: "192.168.56.52"
      database2.vm.provider "virtualbox" do |v| 
         v.memory = 4096 
         v.cpus = 2
      end
   end

   config.vm.define "database-3" do |database3|
      database3.vm.host_name = "database-3"
      database3.vm.network "private_network", ip: "192.168.56.53"
      database3.vm.provider "virtualbox" do |v| 
         v.memory = 4096 
         v.cpus = 2
      end
   end

end