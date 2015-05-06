module ConcertoIframe
  class Engine < ::Rails::Engine
    isolate_namespace ConcertoIframe

    initializer "register content type" do |app|
      app.config.content_types << Iframe
    end

    # Define plugin information for the Concerto application to read
    def plugin_info(plugin_info_class)
      @plugin_info ||= plugin_info_class.new do
        add_view_hook "frontend/ScreensController", :concerto_frontend_plugins, partial: "frontend/concerto_iframe.html"
      end
    end
  end
end
