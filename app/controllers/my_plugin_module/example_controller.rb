# frozen_string_literal: true

module ::MyPluginModule
  class ExampleController < ::ApplicationController
    requires_plugin PLUGIN_NAME

    def index
      render json: { hello: "world" }
    end
  end
end
