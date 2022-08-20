# frozen_string_literal: true

require_relative "lib/date_converter_ja/version"

Gem::Specification.new do |spec|
  spec.name = "date_converter_ja"
  spec.version = DateConverterJa::VERSION
  spec.authors = ["holasoynaoki"]
  spec.email = ["naoki13futsal@gmail.com"]

  spec.summary = "date_converter_ja"
  spec.description = "date_converter_ja"
  spec.homepage = "https://github.com/holasoynaoki/date_converter_ja"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
