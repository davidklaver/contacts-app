Rails.application.routes.draw do
  get '/firstcontact' => 'contacts#first_contact'
  get '/allcontacts' => 'contacts#all_contacts'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
