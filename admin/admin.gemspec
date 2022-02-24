$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "admin/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "admin"
  spec.version     = Admin::VERSION
  spec.authors     = ["Daniel Dvorkin"]
  spec.email       = ["dvorkin212@gmail.com"]
  spec.homepage    = "http://www.staticpagemanager.com"
  spec.summary     = "Static Page Manager: Summary of Admin."
  spec.description = "Static Page Manager: Description of Admin."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "Static Page Manager: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.2.6", ">= 5.2.6.2"

  spec.add_development_dependency "pg"
  spec.add_dependency "godmin"
end
