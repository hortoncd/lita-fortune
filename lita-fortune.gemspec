Gem::Specification.new do |spec|
  spec.name          = 'lita-fortune'
  spec.version       = '0.0.8'
  spec.authors       = ['Chris Horton']
  spec.email         = ['hortoncd@gmail.com']
  spec.description   = %q{A Lita handler for fortune cookies.}
  spec.summary       = %q{A Lita handler for fortune cookies.}
  spec.homepage      = 'https://github.com/hortoncd/lita-fortune'
  spec.license       = 'Apache 2.0'
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'lita', '>= 2.0'
  spec.add_runtime_dependency 'i18n', '~> 0.9'
  spec.add_runtime_dependency 'rack', '>= 2.1.4', '< 2.3.0'

  spec.add_development_dependency 'bundler', '> 1.17'
  spec.add_development_dependency "rake", ">= 12.3.3"
  spec.add_development_dependency "rspec", "~> 3.5"
  spec.add_development_dependency "fakeredis", "~> 0.7.0"
end
