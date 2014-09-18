# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_admin_pundit/version'

Gem::Specification.new do |gem|
  gem.name          = "rails_admin_pundit"
  gem.version       = RailsAdminPundit::VERSION
  gem.platform      = Gem::Platform::RUBY
  gem.authors       = ["Oleg Popadiuk"]
  gem.email         = ["superdodman@gmail.com"]
  gem.description   = %q{Pundit authorization system in Rails Admin}
  gem.summary       = %q{Rails Admin integration with Pundit authorization system}
  gem.homepage      = "https://github.com/sudosu/rails_admin_pundit"

  gem.add_runtime_dependency("pundit", ">= 0.2.3")
  gem.add_runtime_dependency("rails_admin", ">= 0.6.2")

  gem.files         = Dir['lib/**/*', '[A-Z]*'] - ['Gemfile.lock']
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
