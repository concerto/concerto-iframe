# Concerto 2 iframe Plugin
This plugin provides support to render a custom iframe, in Concerto 2.  It requires the latest version of concerto 2.

1.  Add to your Gemfile: ```gem 'concerto_iframe', :git => 'git://github.com/mfrederickson/concerto-iframe.git'```  (just until it moves to a production location)
2.  ```bundle install```
3.  ```rails generate concerto_iframe:install install```

The last step produces a lot of output, if it runs successfully, because it recompiles the frontend js files.

Concerto 2 iframe is licensed under the Apache License, Version 2.0.
