$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "timeline/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "timeline"
  s.version     = Timeline::VERSION
  s.authors     = ["Chris Blackburn"]
  s.email       = ["chris@madetech.co.uk"]
  s.homepage    = "https://www.madetech.co.uk/"
  s.summary     = "Timeline management engine"
  s.description = "Timeline management engine"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.11"

  s.add_development_dependency "sqlite3"
end
