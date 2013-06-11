$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "concerto_iframe/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "concerto_iframe"
  s.version     = ConcertoIframe::VERSION
  s.authors     = ["Marvin Frederickson"]
  s.email       = ["marvin.frederickson@gmail.com"]
  s.homepage    = "https://github.com/concerto/concerto-iframe"
  s.summary     = "custom iframe support for Concerto 2"
  s.description = "Adds support for custom iframes, in Concerto 2"

  s.files = Dir["{app,config,db,lib,public}/**/*"] + ["LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2"

  s.add_development_dependency "sqlite3"
end
