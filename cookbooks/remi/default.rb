#
# Cookbook Name:: remi
# Recipe:: default
#

version = node[:platform_version][0]

package 'epel-release'

package "http://rpms.famillecollet.com/enterprise/remi-release-#{version}.rpm" do
  not_if 'rpm -q remi-release'
end

