Spree::Core::Engine.routes.append do
    namespace :admin do
      resources :product_imports, :only => [:index, :new, :create]
    end
end
