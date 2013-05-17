# Concerto 2 iframe Plugin
This plugin provides support to render a custom iframe, in Concerto 2.

1.  Add to your Gemfile: ```gem 'concerto_iframe'```
2.  ```bundle install```
3.  ```rails generate concerto_iframe:install install```
4.  Because the install in step three includes a file that needs to be minified with all the others into the frontend.js file, we need to compile it with the closure compiler.  So...
    a.  Go into the vendor/tools directory and at the shell prompt, type ```git clone https://code.google.com/p/closure-library/``` and then move all those files into the directory concerto will look for it  ```mv closure-library/* closure/```
    b.  Next, make sure that the bin files are executable, go into the closure/bin directory and type ```chmod u+x *.py```
    c.  Get the closure compiler from [here](http://closure-compiler.googlecode.com/files/compiler-latest.zip) and put the compiler.jar file in the public/frontend_js directory.
    d.  Compile the new frontend.js file, go into public/frontend_js and type ```./compile.sh```

Concerto 2 iframe is licensed under the Apache License, Version 2.0.
