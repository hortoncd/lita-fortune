Gem::Specification.new do |spec|
  spec.name          = 'lita-fortune'
  spec.version       = '0.0.1'
  spec.authors       = ['Chris Horton']
  spec.email         = ['hortoncd@gmail.com']
  spec.description   = %q{A Lita handler for fortune cookies.}
  spec.summary       = %q{A Lita handler for fortune cookies.}
  spec.homepage      = 'https://github.com/hortonce/lita-fortune'
  spec.license       = 'Apache 2.0'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'lita', '>= 2.0'

  spec.add_development_dependency 'bundler', '~> 1.8'
  spec.add_development_dependency 'rspec', '~> 3.2.0'
end
