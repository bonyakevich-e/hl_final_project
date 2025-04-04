# -*- mode: ruby -*-
# vim: set ft=ruby :

Vagrant.configure("2") do |config|
   
   config.vm.box = "bento/ubuntu-24.04"
      config.vm.provider "virtualbox" do |v| 
         v.memory = 2048 
         v.cpus = 1 
      end  

   config.vm.define "haproxy-ext-1" do |haproxyext1|
      haproxyext1.vm.host_name = "haproxy-ext-1"
      haproxyext1.vm.network "public_network", ip: "192.168.30.131", bridge: "eno1"
      haproxyext1.vm.network "private_network", ip: "192.168.56.10"
   end      

   config.vm.define "haproxy-ext-2" do |haproxyext2|
      haproxyext2.vm.host_name = "haproxy-ext-2"
      haproxyext2.vm.network "public_network", ip: "192.168.30.132", bridge: "eno1"
      haproxyext2.vm.network "private_network", ip: "192.168.56.11"
   end

   config.vm.define "backend" do |backend|
      backend.vm.host_name = "backend"
      backend.vm.network "private_network", ip: "192.168.56.12"
   end

#   config.vm.define "control1" do |control1|
#      control1.vm.host_name = "control1"
#      control1.vm.network "public_network", ip: "192.168.30.14", bridge: "eno1"
#   end
 
#   config.vm.define "control2" do |control2|
#      control2.vm.host_name = "control2"
#      control2.vm.network "public_network", ip: "192.168.30.15", bridge: "eno1"
#   end
 
#   config.vm.define "control3" do |control3|
#      control3.vm.host_name = "control3"
#      control3.vm.network "public_network", ip: "192.168.30.16", bridge: "eno1"
#   end
 
#   config.vm.define "node1" do |node1|
#      node1.vm.host_name = "node1"
#      node1.vm.network "public_network", ip: "192.168.30.17", bridge: "eno1"
#      node1.vm.provider "virtualbox" do |v| 
#         v.memory = 4096 
#         v.cpus = 2
#      end
#   end

#   config.vm.define "node2" do |node2|
#      node2.vm.host_name = "node2"
#      node2.vm.network "public_network", ip: "192.168.30.18", bridge: "eno1"
#      node2.vm.provider "virtualbox" do |v| 
#         v.memory = 4096 
#         v.cpus = 2
#      end
#   end

#   config.vm.define "node3" do |node3|
#      node3.vm.host_name = "node3"
#      node3.vm.network "public_network", ip: "192.168.30.11", bridge: "eno1"
#      node3.vm.provider "virtualbox" do |v| 
#         v.memory = 4096 
#         v.cpus = 2
#      end
#   end

#   config.vm.define "storage" do |storage|
#      storage.vm.host_name = "storage"
#      storage.vm.network "public_network", ip: "192.168.30.12", bridge: "eno1"
#      storage.vm.disk :disk, size: "50GB", primary: true
#      storage.vm.provider "virtualbox" do |v| 
#         v.memory = 2048 
#         v.cpus = 1
#      end
#   end
 
 end