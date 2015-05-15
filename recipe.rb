package 'epel-release'

package 'http://rpms.famillecollet.com/enterprise/remi-release-6.rpm' do
  not_if 'rpm -q remi-release'
end

package 'php' do
  options '--enablerepo=remi-php56'
end

service 'httpd' do
  action [:enable, :start]
end

template '/etc/php.ini' do
  source 'php.ini.erb'
  notifies :restart, 'service[httpd]'
end

