module ConcertoIframe
  class Engine < ::Rails::Engine
    isolate_namespace ConcertoIframe

    initializer "register content type" do |app|
      app.config.content_types << Iframe
    end
  end
end
