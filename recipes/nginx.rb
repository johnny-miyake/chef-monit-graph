template "#{node['monit-graph']['nginx_home']}/sites-available/monit-graph" do
  owner "root"
  group "root"
  mode 00644
  source "nginx_conf.erb"
end

link "#{node['monit-graph']['nginx_home']}/sites-enabled/monit-graph" do
  owner "root"
  group "root"
  to "#{node['monit-graph']['nginx_home']}/sites-available/monit-graph"
  notifies :reload, "service[nginx]"
end
