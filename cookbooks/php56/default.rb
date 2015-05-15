#
# Cookbook Name:: php56
# Recipe:: default
#

default_vars = {
    max_execution_time: '30',
    memory_limit: '128M',
    error_reporting: 'E_ALL & ~E_DEPRECATED & ~E_STRICT',
    display_errors: 'Off',
    post_max_size: '8M',
    upload_max_filesize: '2M',
    date_timezone: 'Asia/Tokyo',
}

node.reverse_merge!(php: default_vars)

package 'php' do
  options '--enablerepo=remi-php56'
end

template '/etc/php.ini' do
  notifies :reload, 'service[httpd]'
  variables(node[:php])
end

