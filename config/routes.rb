Rails.application.routes.draw do
  get "leave_a_tip", to: "pages#leave_a_tip" 
  get "next_batch", to: "pages#next_batch"
  get "sauces", to: "pages#sauces"
  get "error", to: "pages#error"
  
  resources :sauces

  root to: "pages#home"
  
  get "*path", to: redirect("/error")
end
