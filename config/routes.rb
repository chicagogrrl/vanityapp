Vanityapp::Application.routes.draw do
  match '/vanity(/:action(/:id(.:format)))', :controller => :vanity, :via => [:get, :post]
end
