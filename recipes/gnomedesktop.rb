
%w{
gnome-backgrounds
gnome-classic-session
gnome-packagekit
gnome-terminal
xorg-x11-drivers
gnu-free-mono-fonts
}.each do |pkg|
  package pkg do
    action :install
  end
end

link "/etc/systemd/system/default.target" do
  owner "root"
  group "root"
  to "/lib/systemd/system/runlevel5.target"
  link_type :symbolic
end

