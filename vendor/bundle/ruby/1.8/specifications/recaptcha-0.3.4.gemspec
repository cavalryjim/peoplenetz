# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{recaptcha}
  s.version = "0.3.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jason L Perry"]
  s.date = %q{2011-12-13 00:00:00.000000000Z}
  s.description = %q{This plugin adds helpers for the reCAPTCHA API}
  s.email = ["jasper@ambethia.com"]
  s.files = ["test/recaptcha_test.rb", "test/verify_recaptcha_test.rb"]
  s.homepage = %q{http://github.com/ambethia/recaptcha}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{recaptcha}
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Helpers for the reCAPTCHA API}
  s.test_files = ["test/recaptcha_test.rb", "test/verify_recaptcha_test.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<activesupport>, [">= 0"])
      s.add_development_dependency(%q<i18n>, [">= 0"])
    else
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<activesupport>, [">= 0"])
      s.add_dependency(%q<i18n>, [">= 0"])
    end
  else
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<activesupport>, [">= 0"])
    s.add_dependency(%q<i18n>, [">= 0"])
  end
end
