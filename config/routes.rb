# frozen_string_literal: true

MyPluginModule::Engine.routes.draw do
  get "/example-url" => "example#index"
  # define routes here
end

Discourse::Application.routes.draw { mount ::MyPluginModule::Engine, at: "my-plugin" }
