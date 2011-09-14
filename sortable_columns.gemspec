# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "sortable_columns/version"

Gem::Specification.new do |s|
  s.name        = "sortable_columns"
  s.version     = SortableColumns::VERSION
  s.authors     = ["Brian McNabb"]
  s.email       = ["brian.d.mcnabb@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Make your columns sortable... in a snap!}
  s.description = %q{'sortable_columns' is a clean and lightweight solution for making table columns sortable.}

  s.rubyforge_project = "sortable_columns"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'combustion', '~> 0.3.1'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl_rails'
end
