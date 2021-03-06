# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fieldview/version"

Gem::Specification.new do |spec|
  spec.name          = "fieldview"
  spec.version       = Fieldview::VERSION
  spec.authors       = ["Felipe Mathies"]
  spec.email         = ["felipe.mathies@gmail.com"]

  spec.summary       = %q{Climate FieldView API Gem}
  spec.description   = %q{Climate FieldView API Gem}
  #spec.homepage      = ""

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'faraday', '~> 0.8'

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
