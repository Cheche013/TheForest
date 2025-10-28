# config/application.rb
require_relative "boot"
require "rails/all"
Bundler.require(*Rails.groups)

module TheForest
  class Application < Rails::Application
    config.load_defaults 8.0

    config.autoload_lib(ignore: %w[assets tasks])

    # Chemins d'assets (propshaft)
    config.assets.paths << Rails.root.join("app", "assets", "images")
    config.assets.paths << Rails.root.join("app", "assets", "audios")

    # Types précompilés
    config.assets.precompile += %w[*.png *.jpg *.jpeg *.gif *.mp3 *.wav]
  end
end
