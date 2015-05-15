#
# Cookbook Name:: httpd
# Recipe:: default
#

package 'httpd'

service 'httpd' do
  action [:enable, :start]
end

