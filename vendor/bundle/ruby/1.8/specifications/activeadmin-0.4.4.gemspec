# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{activeadmin}
  s.version = "0.4.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Greg Bell"]
  s.date = %q{2012-05-09}
  s.description = %q{The administration framework for Ruby on Rails.}
  s.email = ["gregdbell@gmail.com"]
  s.files = ["features/action_item.feature", "features/belongs_to.feature", "features/comments/commenting.feature", "features/comments/viewing_index.feature", "features/dashboard.feature", "features/development_reloading.feature", "features/edit_page.feature", "features/first_boot.feature", "features/global_navigation.feature", "features/index/filters.feature", "features/index/format_as_csv.feature", "features/index/formats.feature", "features/index/index_as_block.feature", "features/index/index_as_blog.feature", "features/index/index_as_grid.feature", "features/index/index_as_table.feature", "features/index/index_blank_slate.feature", "features/index/index_parameters.feature", "features/index/index_scope_to.feature", "features/index/index_scopes.feature", "features/index/pagination.feature", "features/menu.feature", "features/new_page.feature", "features/registering_assets.feature", "features/registering_pages.feature", "features/registering_resources.feature", "features/show/default_content.feature", "features/show/page_title.feature", "features/sidebar_sections.feature", "features/site_title.feature", "features/specifying_actions.feature", "features/step_definitions/action_item_steps.rb", "features/step_definitions/action_link_steps.rb", "features/step_definitions/additional_web_steps.rb", "features/step_definitions/asset_steps.rb", "features/step_definitions/attribute_steps.rb", "features/step_definitions/breadcrumb_steps.rb", "features/step_definitions/comment_steps.rb", "features/step_definitions/configuration_steps.rb", "features/step_definitions/dashboard_steps.rb", "features/step_definitions/factory_steps.rb", "features/step_definitions/filter_steps.rb", "features/step_definitions/flash_steps.rb", "features/step_definitions/format_steps.rb", "features/step_definitions/index_scope_steps.rb", "features/step_definitions/layout_steps.rb", "features/step_definitions/member_link_steps.rb", "features/step_definitions/menu_steps.rb", "features/step_definitions/pagination_steps.rb", "features/step_definitions/sidebar_steps.rb", "features/step_definitions/site_title_steps.rb", "features/step_definitions/tab_steps.rb", "features/step_definitions/user_steps.rb", "features/step_definitions/web_steps.rb", "features/sti_resource.feature", "features/support/env.rb", "features/support/paths.rb", "features/support/selectors.rb", "features/users/logging_in.feature", "features/users/logging_out.feature", "spec/integration/default_namespace.rb", "spec/integration/javascript_spec.rb", "spec/integration/memory_spec.rb", "spec/integration/stylesheets_spec.rb", "spec/spec_helper.rb", "spec/spec_helper_without_rails.rb", "spec/support/detect_rails_version.rb", "spec/support/integration_example_group.rb", "spec/support/jslint.yml", "spec/support/rails_template.rb", "spec/support/rails_template_with_data.rb", "spec/support/templates/cucumber.rb", "spec/support/templates/cucumber_with_reloading.rb", "spec/unit/abstract_view_factory_spec.rb", "spec/unit/action_builder_spec.rb", "spec/unit/active_admin_spec.rb", "spec/unit/application_spec.rb", "spec/unit/arbre/context_spec.rb", "spec/unit/arbre/html/element_finder_methods_spec.rb", "spec/unit/arbre/html/element_spec.rb", "spec/unit/arbre/html/tag_attributes_spec.rb", "spec/unit/arbre/html/tag_spec.rb", "spec/unit/arbre/html_spec.rb", "spec/unit/asset_registration_spec.rb", "spec/unit/auto_link_spec.rb", "spec/unit/base_controller_shared_examples.rb", "spec/unit/base_controller_spec.rb", "spec/unit/belongs_to_spec.rb", "spec/unit/breadcrumbs_spec.rb", "spec/unit/comments_spec.rb", "spec/unit/component_spec.rb", "spec/unit/config_shared_examples.rb", "spec/unit/controller_filters_spec.rb", "spec/unit/csv_builder_spec.rb", "spec/unit/dashboard_controller_spec.rb", "spec/unit/dashboard_section_spec.rb", "spec/unit/dashboards_spec.rb", "spec/unit/devise_spec.rb", "spec/unit/display_name_spec.rb", "spec/unit/event_spec.rb", "spec/unit/filter_form_builder_spec.rb", "spec/unit/form_builder_spec.rb", "spec/unit/generators/install_rails_3_1_spec.rb", "spec/unit/helpers/scope_chain_spec.rb", "spec/unit/helpers/settings_spec.rb", "spec/unit/menu_item_spec.rb", "spec/unit/menu_spec.rb", "spec/unit/namespace/register_page_spec.rb", "spec/unit/namespace/register_resource_spec.rb", "spec/unit/namespace_spec.rb", "spec/unit/page_controller_spec.rb", "spec/unit/page_spec.rb", "spec/unit/pretty_format_spec.rb", "spec/unit/rails_spec.rb", "spec/unit/reloader_spec.rb", "spec/unit/renderer_spec.rb", "spec/unit/resource/action_items_spec.rb", "spec/unit/resource/menu_spec.rb", "spec/unit/resource/naming_spec.rb", "spec/unit/resource/page_presenters_spec.rb", "spec/unit/resource/pagination_spec.rb", "spec/unit/resource/scopes_spec.rb", "spec/unit/resource/sidebars_spec.rb", "spec/unit/resource_collection_spec.rb", "spec/unit/resource_controller/collection_spec.rb", "spec/unit/resource_controller_spec.rb", "spec/unit/resource_registration_spec.rb", "spec/unit/resource_spec.rb", "spec/unit/routing_spec.rb", "spec/unit/sass/helpers_spec.rb", "spec/unit/scope_spec.rb", "spec/unit/view_factory_spec.rb", "spec/unit/views/components/attributes_table_spec.rb", "spec/unit/views/components/blank_slate_spec.rb", "spec/unit/views/components/columns_spec.rb", "spec/unit/views/components/paginated_collection_spec.rb", "spec/unit/views/components/panel_spec.rb", "spec/unit/views/components/sidebar_section_spec.rb", "spec/unit/views/components/status_tag_spec.rb", "spec/unit/views/components/table_for_spec.rb", "spec/unit/views/pages/layout_spec.rb", "spec/unit/views/tabbed_navigation_spec.rb"]
  s.homepage = %q{http://activeadmin.info}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{The administration framework for Ruby on Rails.}
  s.test_files = ["features/action_item.feature", "features/belongs_to.feature", "features/comments/commenting.feature", "features/comments/viewing_index.feature", "features/dashboard.feature", "features/development_reloading.feature", "features/edit_page.feature", "features/first_boot.feature", "features/global_navigation.feature", "features/index/filters.feature", "features/index/format_as_csv.feature", "features/index/formats.feature", "features/index/index_as_block.feature", "features/index/index_as_blog.feature", "features/index/index_as_grid.feature", "features/index/index_as_table.feature", "features/index/index_blank_slate.feature", "features/index/index_parameters.feature", "features/index/index_scope_to.feature", "features/index/index_scopes.feature", "features/index/pagination.feature", "features/menu.feature", "features/new_page.feature", "features/registering_assets.feature", "features/registering_pages.feature", "features/registering_resources.feature", "features/show/default_content.feature", "features/show/page_title.feature", "features/sidebar_sections.feature", "features/site_title.feature", "features/specifying_actions.feature", "features/step_definitions/action_item_steps.rb", "features/step_definitions/action_link_steps.rb", "features/step_definitions/additional_web_steps.rb", "features/step_definitions/asset_steps.rb", "features/step_definitions/attribute_steps.rb", "features/step_definitions/breadcrumb_steps.rb", "features/step_definitions/comment_steps.rb", "features/step_definitions/configuration_steps.rb", "features/step_definitions/dashboard_steps.rb", "features/step_definitions/factory_steps.rb", "features/step_definitions/filter_steps.rb", "features/step_definitions/flash_steps.rb", "features/step_definitions/format_steps.rb", "features/step_definitions/index_scope_steps.rb", "features/step_definitions/layout_steps.rb", "features/step_definitions/member_link_steps.rb", "features/step_definitions/menu_steps.rb", "features/step_definitions/pagination_steps.rb", "features/step_definitions/sidebar_steps.rb", "features/step_definitions/site_title_steps.rb", "features/step_definitions/tab_steps.rb", "features/step_definitions/user_steps.rb", "features/step_definitions/web_steps.rb", "features/sti_resource.feature", "features/support/env.rb", "features/support/paths.rb", "features/support/selectors.rb", "features/users/logging_in.feature", "features/users/logging_out.feature", "spec/integration/default_namespace.rb", "spec/integration/javascript_spec.rb", "spec/integration/memory_spec.rb", "spec/integration/stylesheets_spec.rb", "spec/spec_helper.rb", "spec/spec_helper_without_rails.rb", "spec/support/detect_rails_version.rb", "spec/support/integration_example_group.rb", "spec/support/jslint.yml", "spec/support/rails_template.rb", "spec/support/rails_template_with_data.rb", "spec/support/templates/cucumber.rb", "spec/support/templates/cucumber_with_reloading.rb", "spec/unit/abstract_view_factory_spec.rb", "spec/unit/action_builder_spec.rb", "spec/unit/active_admin_spec.rb", "spec/unit/application_spec.rb", "spec/unit/arbre/context_spec.rb", "spec/unit/arbre/html/element_finder_methods_spec.rb", "spec/unit/arbre/html/element_spec.rb", "spec/unit/arbre/html/tag_attributes_spec.rb", "spec/unit/arbre/html/tag_spec.rb", "spec/unit/arbre/html_spec.rb", "spec/unit/asset_registration_spec.rb", "spec/unit/auto_link_spec.rb", "spec/unit/base_controller_shared_examples.rb", "spec/unit/base_controller_spec.rb", "spec/unit/belongs_to_spec.rb", "spec/unit/breadcrumbs_spec.rb", "spec/unit/comments_spec.rb", "spec/unit/component_spec.rb", "spec/unit/config_shared_examples.rb", "spec/unit/controller_filters_spec.rb", "spec/unit/csv_builder_spec.rb", "spec/unit/dashboard_controller_spec.rb", "spec/unit/dashboard_section_spec.rb", "spec/unit/dashboards_spec.rb", "spec/unit/devise_spec.rb", "spec/unit/display_name_spec.rb", "spec/unit/event_spec.rb", "spec/unit/filter_form_builder_spec.rb", "spec/unit/form_builder_spec.rb", "spec/unit/generators/install_rails_3_1_spec.rb", "spec/unit/helpers/scope_chain_spec.rb", "spec/unit/helpers/settings_spec.rb", "spec/unit/menu_item_spec.rb", "spec/unit/menu_spec.rb", "spec/unit/namespace/register_page_spec.rb", "spec/unit/namespace/register_resource_spec.rb", "spec/unit/namespace_spec.rb", "spec/unit/page_controller_spec.rb", "spec/unit/page_spec.rb", "spec/unit/pretty_format_spec.rb", "spec/unit/rails_spec.rb", "spec/unit/reloader_spec.rb", "spec/unit/renderer_spec.rb", "spec/unit/resource/action_items_spec.rb", "spec/unit/resource/menu_spec.rb", "spec/unit/resource/naming_spec.rb", "spec/unit/resource/page_presenters_spec.rb", "spec/unit/resource/pagination_spec.rb", "spec/unit/resource/scopes_spec.rb", "spec/unit/resource/sidebars_spec.rb", "spec/unit/resource_collection_spec.rb", "spec/unit/resource_controller/collection_spec.rb", "spec/unit/resource_controller_spec.rb", "spec/unit/resource_registration_spec.rb", "spec/unit/resource_spec.rb", "spec/unit/routing_spec.rb", "spec/unit/sass/helpers_spec.rb", "spec/unit/scope_spec.rb", "spec/unit/view_factory_spec.rb", "spec/unit/views/components/attributes_table_spec.rb", "spec/unit/views/components/blank_slate_spec.rb", "spec/unit/views/components/columns_spec.rb", "spec/unit/views/components/paginated_collection_spec.rb", "spec/unit/views/components/panel_spec.rb", "spec/unit/views/components/sidebar_section_spec.rb", "spec/unit/views/components/status_tag_spec.rb", "spec/unit/views/components/table_for_spec.rb", "spec/unit/views/pages/layout_spec.rb", "spec/unit/views/tabbed_navigation_spec.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.0.0"])
      s.add_runtime_dependency(%q<jquery-rails>, [">= 1.0.0"])
      s.add_runtime_dependency(%q<bourbon>, [">= 1.0.0"])
      s.add_runtime_dependency(%q<meta_search>, [">= 0.9.2"])
      s.add_runtime_dependency(%q<devise>, [">= 1.1.2"])
      s.add_runtime_dependency(%q<formtastic>, ["~> 2.1.1"])
      s.add_runtime_dependency(%q<inherited_resources>, [">= 1.3.1"])
      s.add_runtime_dependency(%q<kaminari>, [">= 0.13.0"])
      s.add_runtime_dependency(%q<sass>, [">= 3.1.0"])
      s.add_runtime_dependency(%q<fastercsv>, [">= 0"])
    else
      s.add_dependency(%q<rails>, [">= 3.0.0"])
      s.add_dependency(%q<jquery-rails>, [">= 1.0.0"])
      s.add_dependency(%q<bourbon>, [">= 1.0.0"])
      s.add_dependency(%q<meta_search>, [">= 0.9.2"])
      s.add_dependency(%q<devise>, [">= 1.1.2"])
      s.add_dependency(%q<formtastic>, ["~> 2.1.1"])
      s.add_dependency(%q<inherited_resources>, [">= 1.3.1"])
      s.add_dependency(%q<kaminari>, [">= 0.13.0"])
      s.add_dependency(%q<sass>, [">= 3.1.0"])
      s.add_dependency(%q<fastercsv>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.0.0"])
    s.add_dependency(%q<jquery-rails>, [">= 1.0.0"])
    s.add_dependency(%q<bourbon>, [">= 1.0.0"])
    s.add_dependency(%q<meta_search>, [">= 0.9.2"])
    s.add_dependency(%q<devise>, [">= 1.1.2"])
    s.add_dependency(%q<formtastic>, ["~> 2.1.1"])
    s.add_dependency(%q<inherited_resources>, [">= 1.3.1"])
    s.add_dependency(%q<kaminari>, [">= 0.13.0"])
    s.add_dependency(%q<sass>, [">= 3.1.0"])
    s.add_dependency(%q<fastercsv>, [">= 0"])
  end
end
