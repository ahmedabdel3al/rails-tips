root to: "root#index"

devise_for :users, controllers: {
  sessions: 'users/sessions' ,
  registrations: "users/registrations"
}
