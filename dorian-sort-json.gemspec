# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = "dorian-sort-json"
  s.version = File.read("VERSION").strip
  s.summary = "sorts json"
  s.description = s.summary
  s.authors = ["Dorian Marié"]
  s.email = "dorian@dorianmarie.com"
  s.files = ["bin/sort-json"]
  s.executables << "sort-json"
  s.homepage = "https://github.com/dorianmariecom/dorian-sort-json"
  s.license = "MIT"
  s.metadata = { "rubygems_mfa_required" => "true" }
  s.add_dependency "dorian-arguments"
  s.required_ruby_version = "3.3.4"
end
