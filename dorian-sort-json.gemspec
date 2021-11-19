Gem::Specification.new do |s|
  s.name = "dorian-sort-json"
  s.version = "0.2.0"
  s.summary = "Sorts keys of hashes of JSON files"
  s.description = s.summary + "\n\n" + "e.g. `sort-json package.json`"
  s.authors = ["Dorian Marié"]
  s.email = "dorian@dorianmarie.fr"
  s.files = ["lib/dorian/sort-json.rb"]
  s.executables << "sort-json"
  s.homepage = "https://github.com/dorianmariefr/sort-json"
  s.license = "MIT"
end
