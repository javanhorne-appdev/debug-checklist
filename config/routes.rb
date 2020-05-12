Rails.application.routes.draw do

  get("/", { :controller => "application", :action => "show_checklist" })


  # ======= Add your routes above here =============
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
