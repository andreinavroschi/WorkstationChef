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

file '/etc/motd' do
  action :create
  content 'This server is property of Andrei Navroschi'
  owner 'root'
  group 'root'
  mode '644'
end
