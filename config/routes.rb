# == Route Map
#
#               Prefix Verb   URI Pattern               Controller#Action
#     new_user_session GET    /users/sign_in(.:format)  sessions#new
#         user_session POST   /users/sign_in(.:format)  sessions#create
# destroy_user_session DELETE /users/sign_out(.:format) sessions#destroy
#

Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: :sessions }
end
