template "#{node['monit-graph']['nginx_conf_dir']}/monit-graph.conf" do
  owner "root"
  group "root"
  mode 00644
  source "nginx_conf.erb"
  notifies :reload, "service[nginx]"
end
