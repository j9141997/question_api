Rails.application.routes.draw do

  namespace 'api' do
    namespace 'v1' do
      resources :questions
      resources :answers
      mount_devise_token_auth_for 'Account', at: 'accounts', controllers: {
        registrations: 'api/v1/auth/registrations'
      }
    end
  end
end
