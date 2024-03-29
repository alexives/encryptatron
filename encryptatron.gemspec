
lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "encryptatron/version"

Gem::Specification.new do |spec|
  spec.name          = "encryptatron"
  spec.version       = Encryptatron::VERSION
  spec.authors       = ["Alex Ives"]
  spec.email         = ["alex.ives@granicus.com"]

  spec.summary       = 'Load and encrypt configuration files for configatron'
  spec.homepage      = "https://github.com/granicus/encryptatron"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "configatron", ">2"
  spec.add_dependency "deep_merge", ">1"
  spec.add_dependency "dotenv", ">1"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "pry", ">0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~>0.56"
end
