Rails.application.routes.draw do
  defaults format: :json do
    root 'application#index'
  end
end
