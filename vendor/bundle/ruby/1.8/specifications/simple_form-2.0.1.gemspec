# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{simple_form}
  s.version = "2.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jos\303\251 Valim", "Carlos Ant\303\264nio", "Rafael Fran\303\247a"]
  s.date = %q{2012-02-27}
  s.description = %q{Forms made easy!}
  s.email = %q{contact@plataformatec.com.br}
  s.files = ["test/action_view_extensions/builder_test.rb", "test/action_view_extensions/form_helper_test.rb", "test/components/label_test.rb", "test/form_builder/association_test.rb", "test/form_builder/button_test.rb", "test/form_builder/error_notification_test.rb", "test/form_builder/error_test.rb", "test/form_builder/general_test.rb", "test/form_builder/hint_test.rb", "test/form_builder/input_field_test.rb", "test/form_builder/label_test.rb", "test/form_builder/wrapper_test.rb", "test/generators/simple_form_generator_test.rb", "test/inputs/boolean_input_test.rb", "test/inputs/collection_check_boxes_input_test.rb", "test/inputs/collection_radio_buttons_input_test.rb", "test/inputs/collection_select_input_test.rb", "test/inputs/datetime_input_test.rb", "test/inputs/disabled_test.rb", "test/inputs/discovery_test.rb", "test/inputs/file_input_test.rb", "test/inputs/general_test.rb", "test/inputs/grouped_collection_select_input_test.rb", "test/inputs/hidden_input_test.rb", "test/inputs/numeric_input_test.rb", "test/inputs/priority_input_test.rb", "test/inputs/readonly_test.rb", "test/inputs/required_test.rb", "test/inputs/string_input_test.rb", "test/inputs/text_input_test.rb", "test/simple_form_test.rb", "test/support/discovery_inputs.rb", "test/support/misc_helpers.rb", "test/support/mock_controller.rb", "test/support/mock_response.rb", "test/support/models.rb", "test/test_helper.rb"]
  s.homepage = %q{http://github.com/plataformatec/simple_form}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{simple_form}
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Forms made easy!}
  s.test_files = ["test/action_view_extensions/builder_test.rb", "test/action_view_extensions/form_helper_test.rb", "test/components/label_test.rb", "test/form_builder/association_test.rb", "test/form_builder/button_test.rb", "test/form_builder/error_notification_test.rb", "test/form_builder/error_test.rb", "test/form_builder/general_test.rb", "test/form_builder/hint_test.rb", "test/form_builder/input_field_test.rb", "test/form_builder/label_test.rb", "test/form_builder/wrapper_test.rb", "test/generators/simple_form_generator_test.rb", "test/inputs/boolean_input_test.rb", "test/inputs/collection_check_boxes_input_test.rb", "test/inputs/collection_radio_buttons_input_test.rb", "test/inputs/collection_select_input_test.rb", "test/inputs/datetime_input_test.rb", "test/inputs/disabled_test.rb", "test/inputs/discovery_test.rb", "test/inputs/file_input_test.rb", "test/inputs/general_test.rb", "test/inputs/grouped_collection_select_input_test.rb", "test/inputs/hidden_input_test.rb", "test/inputs/numeric_input_test.rb", "test/inputs/priority_input_test.rb", "test/inputs/readonly_test.rb", "test/inputs/required_test.rb", "test/inputs/string_input_test.rb", "test/inputs/text_input_test.rb", "test/simple_form_test.rb", "test/support/discovery_inputs.rb", "test/support/misc_helpers.rb", "test/support/mock_controller.rb", "test/support/mock_response.rb", "test/support/models.rb", "test/test_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activemodel>, ["~> 3.0"])
      s.add_runtime_dependency(%q<actionpack>, ["~> 3.0"])
    else
      s.add_dependency(%q<activemodel>, ["~> 3.0"])
      s.add_dependency(%q<actionpack>, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<activemodel>, ["~> 3.0"])
    s.add_dependency(%q<actionpack>, ["~> 3.0"])
  end
end
