#
# Cookbook Name:: remi
# Recipe:: default
#

package 'epel-release'

package 'http://rpms.famillecollet.com/enterprise/remi-release-6.rpm' do
  not_if 'rpm -q remi-release'
end

