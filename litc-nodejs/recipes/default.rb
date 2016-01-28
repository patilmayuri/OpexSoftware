#
# Cookbook Name:: litc-nodejs
# Recipe:: default
#
# Copyright 2015, OPEX SOFTWARE
#
# All rights reserved - Do Not Redistribute
#

name = 'Node.js'
machine_arch = node['kernel']['machine']
installer_options = '/qn'
temp_path = Chef::Config[:file_cache_path]

ver = node['litc-nodejs']['version']
source = node['litc-nodejs']['source']
installer = File.basename(source)

if (source =~ /x86_64/)
  if (!(machine_arch =~ /x86_64/))
    Chef::Log.error('Installation not done: Cannot install 64 bit application on 32 bit OS')
    return
  end
end

windows_package name do
  source URI.escape(source)
  options installer_options
  installer_type :msi
  version ver
  action :install
end

#Cleanup after we are done
cookbook_file "#{temp_path}\\#{installer}" do
  backup false
  action :delete
  only_if { File.exists?("#{temp_path}\\#{installer}") }
end

