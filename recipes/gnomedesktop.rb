
execute "yum -y groupinstall \"GNOME Desktop\""

link "/etc/systemd/system/default.target" do
  owner "root"
  group "root"
  to "/lib/systemd/system/runlevel5.target"
  link_type :symbolic
end

