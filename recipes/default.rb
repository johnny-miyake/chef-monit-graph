install_dir = node["monit-graph"]["install_dir"]
mg_home = "#{install_dir}/monit-graph"

directory install_dir do
  owner "root"
  group "root"
  recursive true
  mode 0755
end

git mg_home do
  repository "https://github.com/danschultzer/monit-graph.git"
  action :checkout
end

template "#{mg_home}/config.php" do
  owner "root"
  group "root"
  mode 00644
  source "config.php.erb"
end

execute "chmod 2777 #{mg_home}/data"

execute "chmod 644 #{mg_home}/data/index.php"

cron "Monit Graph" do
  minute "*"
  command "php #{mg_home}/cron.php >> /var/log/monit-graph.log 2>&1"
end
