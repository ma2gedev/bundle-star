# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "bundle-star"
  spec.version       = "1.0.2"
  spec.authors       = ["Takayuki Matsubara"]
  spec.email         = ["takayuki.1229@gmail.com"]
  spec.description   = %q{Star github repositories automatically when you `bundle-star install`ed}
  spec.summary       = %q{Star github repositories automatically when you `bundle-star install`ed}
  spec.homepage      = "https://github.com/ma2gedev/bundle-star"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "bundler"
  spec.add_dependency "netrc"
  spec.add_dependency "octokit", "~> 2.0"

  spec.add_development_dependency "rake"
end
