monit-graph Cookbook
====================
Chef cookbook for monit-graph package

Requirements
------------

Attributes
----------
#### monit-graph::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>["monit-graph"]["server_name"]</tt></td>
    <td>String</td>
    <td>The server name in web server configuration. It is not generated if you didn't set its value</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>["monit-graph"]["port"]</tt></td>
    <td>String</td>
    <td>The port number which monit-graph listens</td>
    <td><tt>8080</tt></td>
  </tr>
  <tr>
    <td><tt>["monit-graph"]["install_dir"]</tt></td>
    <td>String</td>
    <td>The directory which monit-graph is installed</td>
    <td><tt>/var/www/cgi-bin</tt></td>
  </tr>
  <tr>
    <td><tt>["monit-graph"]["php-fpm_socket"]</tt></td>
    <td>String</td>
    <td>The path to php-fpm_socket which is used in Nginx configuration</td>
    <td><tt>/var/run/php-fpm-www.sock</tt></td>
  </tr>
  <tr>
    <td><tt>["monit-graph"]["nginx_home"]</tt></td>
    <td>String</td>
    <td>The path to Nginx home</td>
    <td><tt>/etc/nginx</tt></td>
  </tr>
  <tr>
    <td><tt>["monit-graph"]["server"]</tt></td>
    <td>String</td>
    <td>Connection configuration</td>
    <td><tt>
    <pre>
[
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
    </pre>
    </tt></td>
  </tr>
</table>

Usage
-----
#### monit-graph::default
This recipe installs monit-graph.
Just include `monit-graph` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[monit-graph]"
  ],
  "monit-graph": {
    "name": "MyHost",
    "monit_url": "localhost:2812",
    "use_ssl": "true",
    "verify_ssl": "true",
    "basic_auth": {
      "username": "admin123",
      "password": "monit456"
    }
  }
}
```

#### monit-graph::nginx

This recipe puts a Nginx configuration file for monit-graph.
Add `monit-graph::nginx` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[monit-graph]"
    "recipe[monit-graph::nginx]"
  ]
}
```

#### monit-graph::apache
This recipe puts an Apache2 configuration file for monit-graph.
Add `monit-graph::apache` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[monit-graph]"
    "recipe[monit-graph::apache]"
  ]
}
```

Contributing
------------
Contributing is very welcome.

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Takuma J Miyake
