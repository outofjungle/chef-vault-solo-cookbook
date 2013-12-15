# chef-vault-solo-cookbook cookbook

[![Build Status](https://travis-ci.org/outofjungle/chef-vault-solo-cookbook.png?branch=master)](https://travis-ci.org/outofjungle/chef-vault-solo-cookbook)
[![Dependency Status](https://gemnasium.com/outofjungle/chef-vault-solo-cookbook.png)](https://gemnasium.com/outofjungle/chef-vault-solo-cookbook)
[![Code Climate](https://codeclimate.com/github/outofjungle/chef-vault-solo-cookbook.png)](https://codeclimate.com/github/outofjungle/chef-vault-solo-cookbook)

# Description

Example cookbook that uses `chef-vault-solo` gem to monkey patch `chef-vault` calls to local databag.

# Requirements

  * ruby 1.9.3
  * bundler
  * Vagrant

# Usage

    git clone git@github.com:outofjungle/chef-vault-solo-cookbook.git
    cd chef-vault-solo-cookbook
    bundle install
    kitchen create && kitchen converge

  
