# frozen_string_literal: true

# name: discourse-plugin-name
# about: TODO
# version: 0.0.1
# authors: Discourse
# url: TODO
# required_version: 2.7.0
# transpile_js: true

enabled_site_setting :plugin_name_enabled

PLUGIN_NAME ||= -"discourse-plugin-name"

after_initialize do
end
