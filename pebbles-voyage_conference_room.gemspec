# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pebbles/voyage_conference_room/version'

Gem::Specification.new do |spec|
  spec.name          = "pebbles-voyage_conference_room"
  spec.version       = Pebbles::VoyageConferenceRoom::VERSION
  spec.authors       = ["fukayatsu"]
  spec.email         = ["fukayatsu@gmail.com"]
  spec.summary       = %q{Floor map of VoyageGroup 8F}
  spec.description   = %q{Floor map of VoyageGroup 8F}
  spec.homepage      = "https://github.com/fukayatsu/pebbles-voyage_conference_room"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "thor"
  spec.add_development_dependency "rainbow"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rspec", "~> 3.0.0.beta2"
end
