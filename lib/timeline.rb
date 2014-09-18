require 'timeline/engine'

module Timeline
  mattr_accessor :cache_sweeper
  @@cache_sweeper = false

  mattr_accessor :image_styles
  @@image_styles = false

  class Engine < ::Rails::Engine
    isolate_namespace Timeline

    initializer :timeline do
      ActiveAdmin.application.load_paths.unshift Dir[Timeline::Engine.root.join('app', 'admin')] if defined?(ActiveAdmin)
    end
  end

  def self.config(&block)
    yield self if block

    return self
  end
end
