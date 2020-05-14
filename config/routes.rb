Rails.application.routes.draw do

  get("/", { :controller => "application", :action => "show_checklist" })
  post("/update_color", { :controller =>"application", :action => "update_color"})
  post("/update_checklist", { :controller =>"application", :action => "update_checklist"}) 
  get("/reset_cookie", { :controller =>"application", :action => "reset"})


  # ======= Add your routes above here =============
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
