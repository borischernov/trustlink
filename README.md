trustlink
=========

trustlink.ru Rails integration code packaged as a gem (Rails 3 compatible)

USAGE
-----

add the fiollowing to the Gemfile:

```
gem 'trustlink', :git => 'git://github.com/borischernov/trustlink.git'
```

create configuration file config/trustlink.yml:

```
production:
  user_id: your-trustlink-user-id-here
  options:
    :encoding: UTF-8
```

use the following code to render trustlink ads inside a template:

```
<%= Trustlink::Trustlink.new_client(request).build_links.html_safe.force_encoding("UTF-8")  %>
```  
