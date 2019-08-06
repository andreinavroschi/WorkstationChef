package 'vim-enhanced'
package 'nano'
package 'emacs'
package 'mlocate'
package 'dos2unix'

package 'tree' do
  action :install
end

package 'git' do
  action :install
end

package 'ntp'

# node['ipaddress']
# node['memory']['total']


file '/etc/motd' do
  action :create
  content "This server is property of Andrei Navroschi
  HOSTNAME: #{node['hostname']}
  IPADDRESS: #{node['ipaddress']}
  CPU: #{node['cpu']['0']['mhz']}
  MEMORY: #{node['memory']['total']}
"
  owner 'root'
  group 'root'
  mode '644'
end
