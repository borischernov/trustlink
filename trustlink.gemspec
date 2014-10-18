# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'trustlink/version'

Gem::Specification.new do |gem|
  gem.name          = "trustlink"
  gem.version       = Trustlink::VERSION
  gem.authors       = ["Boris Chernov"]
  gem.email         = ["icemedved@gmail.com"]
  gem.description   = %q{trustlink.ru Rails integration code packaged as a gem}
  gem.summary       = %q{trustlink gem}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
