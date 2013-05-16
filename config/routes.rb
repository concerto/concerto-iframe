Rails.application.routes.draw do
  resources :iframes, :controller => :contents, :except => [:index, :show], :path => "content"
end
