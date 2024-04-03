# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = "dorian-sort-json"
  s.version = "0.4.4"
  s.summary = "Sorts keys of hashes of JSON files"
  s.description = "#{s.summary}\n\ne.g. `sort-json package.json`"
  s.authors = ["Dorian Marié"]
  s.email = "dorian@dorianmarie.com"
  s.files = ["bin/sort-json"]
  s.executables << "sort-json"
  s.homepage = "https://github.com/dorianmariecom/sort-json"
  s.license = "MIT"
  s.metadata = { "rubygems_mfa_required" => "true" }
end
