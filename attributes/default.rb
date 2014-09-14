default["monit-graph"]["server_name"] = nil
default["monit-graph"]["port"] = "8080"
default["monit-graph"]["install_dir"] = "/var/www/cgi-bin"
default["monit-graph"]["php-fpm_socket"] = "/var/run/php-fpm-www.sock"
default["monit-graph"]["nginx_home"] = "/etc/nginx"
default["monit-graph"]["servers"] = [
  {
    "name" => "Localhost",
    "monit_url" => "localhost:2812",
    "use_ssl" => "false",
    "verify_ssl" => "false",
    "basic_auth" => {
      "username" => "admin",
      "password" => "monit"
    }
  }
]
