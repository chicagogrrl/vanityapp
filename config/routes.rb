Vanityapp::Application.routes.draw do
  resources :hotels do
    member do
      post :book
    end
  end

  match '/vanity(/:action(/:id(.:format)))', :controller => :vanity, :via => [:get, :post]
end
