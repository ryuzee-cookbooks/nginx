#
# Cookbook Name:: nginx 
# Recipe:: default 
#
# Author:: Ryuzee <ryuzee@gmail.com>
#
# Copyright 2013, Ryutaro YOSHIBA 
#
# This software is released under the MIT License.
# http://opensource.org/licenses/mit-license.php

case node["platform"]
when "centos", "redhat", "amazon", "scientific", "fedora"

  include_recipe "ca-certificates::default"

  if node["platform"] == "centos" 
    include_recipe 'yum-epel'
  end

  package "nginx" do
    action :install
  end

  directory "/etc/nginx/conf.d/server" do
    action :create
    owner 'root'
    group 'root'
    mode '0755'
  end

  template 'default.conf' do
    path '/etc/nginx/conf.d/default.conf'
    source 'default.conf.erb'
    owner 'root'
    group 'root'
    mode '0644'
    notifies :restart, "service[nginx]"
  end

  service "nginx" do
    action [:enable, :start]
  end

end
