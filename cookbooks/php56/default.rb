#
# Cookbook Name:: php56
# Recipe:: default
#

package 'php' do
  options '--enablerepo=remi-php56'
end

template '/etc/php.ini' do
  notifies :restart, 'service[httpd]'
end

