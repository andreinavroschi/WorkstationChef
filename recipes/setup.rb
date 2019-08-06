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

template '/etc/motd' do
  source 'motd.erb'
  variables(
    :name => 'Andrei Navroschi'
  )
  action :create
  owner 'root'
  group 'root'
  mode '644'
end
