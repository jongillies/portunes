# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'portunes/version'

Gem::Specification.new do |gem|
  gem.name          = "portunes"
  gem.version       = Portunes::VERSION
  gem.authors       = ["Jon Gillies"]
  gem.email         = ["supercoder@gmail.com"]
  gem.description   = %q{Portunes was greek god of keys, doors. This "portunes" manages SSH access for service accounts via signed SSH private keys.}
  gem.summary       = %q{Mangae SSH access for service accounts.}
  gem.homepage      = "https://github.com/jongillies/portunes/client"
 
  gem.files = Dir['Rakefile', 'Gemfile', '{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = Dir['{test,spec,features}']

  gem.add_development_dependency "rspec"
  gem.add_runtime_dependency "trollop"

end
