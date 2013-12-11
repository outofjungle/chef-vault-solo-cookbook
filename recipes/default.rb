#
# Cookbook Name:: chef-solo-vault
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

chef_gem 'chef-vault'
require 'chef-vault'

secrets = ChefVault::Item.load('vagrant', 'secrets')
