#
# Cookbook Name:: chef-vault-solo-cookbook
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

chef_gem 'chef-vault-solo'
require 'chef-vault-solo/patch'

secrets = ChefVault::Item.load('vagrant', 'secrets')
