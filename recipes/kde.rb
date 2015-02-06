execute "yum -y groupinstall \"KDE Plasma Workspaces\""


package "kde-l10n-Japanese" do
  action :install
end

template "/home/vagrant/.xinitrc" do
  owner "vagrant"
  group "vagrant"
  mode 0644
end

link "/etc/systemd/system/default.target" do
  owner "root"
  group "root"
  to "/lib/systemd/system/runlevel3.target"
  link_type :symbolic
end

