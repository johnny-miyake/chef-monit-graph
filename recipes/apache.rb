include_recipe "apache2"

web_app "monit-graph" do
  if sn = node["monit-graph"]["server_name"] || node["fqdn"]
    server_name sn
  end
  docroot "#{node["monit-graph"]["install_dir"]}/monit-graph"
  cookbook "apache2"
end
