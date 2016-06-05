#
# Cookbook Name:: users
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
group 'sample' do
  group_name 'sample'
  gid 999
  action :create
end

user 'sample' do
  comment 'sample user'
  group 'sample'
  home '/home/sample'
  shell '/bin/bash'
  supports :manage_home => true
  action: create
end

