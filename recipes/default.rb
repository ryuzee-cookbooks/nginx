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

  if node["platform"] == "centos" 
    include_recipe "yum::epel"
  end

  package "nginx" do
    action :install
  end

  service "nginx" do
    action [:enable, :start]
  end

end
