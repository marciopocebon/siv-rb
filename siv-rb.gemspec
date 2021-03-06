$:.push File.expand_path('../lib', __FILE__)
require 'siv-rb/version'

Gem::Specification.new do |s|
  
  s.name        = 'siv-rb'
  s.version     = SIV::VERSION
  s.authors     = ['Louis Mullie']
  s.email       = ['louis.mullie@gmail.com']
  s.homepage    = 'https://github.com/cryodex/siv-rb'
  s.summary     = %q{ Ruby C extension for the AES-SIV deterministic authenticated encryption mode. }
  s.description = %q{ Ruby C extension for the AES-SIV deterministic authenticated encryption mode. }

  s.files = Dir.glob('lib/**/*.rb') +
  Dir.glob('ext/**/*.{c,h,rb}')

  s.extensions << 'ext/siv/extconf.rb'
  s.add_development_dependency 'rspec', '~> 2.12.0'
  s.add_development_dependency 'rake'
  
end
