# frozen_string_literal: true

module ::MyPluginModule
  class Engine < ::Rails::Engine
    engine_name PLUGIN_NAME
    isolate_namespace MyPluginModule
    config.autoload_paths << File.join(config.root, "lib")
  end
end
