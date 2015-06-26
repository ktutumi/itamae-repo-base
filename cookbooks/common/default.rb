#
# Cookbook Name:: common
# Recipe:: default
#

include_recipe 'timezone'
include_recipe 'selinux::disabled'
include_recipe 'remi'
