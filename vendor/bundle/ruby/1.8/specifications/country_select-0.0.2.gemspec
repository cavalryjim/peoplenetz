# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{country_select}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Stefan Penner"]
  s.date = %q{2012-03-02}
  s.description = %q{Provides a simple helper to get an HTML select list of countries.  The list of countries comes from the ISO 3166 standard.  While it is a relatively neutral source of country names, it will still offend some users.}
  s.email = ["stefan.penner@gmail.com"]
  s.homepage = %q{}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{country_select}
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Country Select Plugin}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
