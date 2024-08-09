Gem::Specification.new do |spec|
  spec.name          = "jekyll-og-generator"
  spec.version       = "0.1"
  spec.authors       = ["azlen"]
  spec.email         = ["contact@azlen.me"]
  spec.summary       = "Generate opengraph images for pages"
  spec.description   = "No description"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "jekyll", ">= 1.5"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rickshaw"
end