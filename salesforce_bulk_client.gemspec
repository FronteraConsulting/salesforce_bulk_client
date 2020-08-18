# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'salesforce_bulk_client/version'

Gem::Specification.new do |spec|
  spec.name          = 'salesforce_bulk_client'
  spec.version       = SalesforceBulkClient::VERSION
  spec.authors       = ['David Massad']
  spec.email         = ['david.massad@fronteraconsulting.net']
  spec.license       = 'MIT'

  spec.summary       = 'Salesforce JSON-based Bulk API Client'
  spec.homepage      = 'https://github.com/FronteraConsulting/salesforce_bulk_client'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'restforce', '~> 5'
  spec.add_dependency 'multi_json', '~> 1'
  spec.add_dependency 'fire_poll', '~> 1'

  spec.add_development_dependency 'rspec', '~> 3'
  spec.add_development_dependency 'simplecov', '~> 0'
  spec.add_development_dependency 'dotenv', '~> 2'
  spec.add_development_dependency 'vcr', '~> 6'
  spec.add_development_dependency 'webmock', '~> 3'
  spec.add_development_dependency 'addressable', '~> 2'
end
