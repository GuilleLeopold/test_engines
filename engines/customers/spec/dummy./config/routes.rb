Rails.application.routes.draw do
  mount Customers::Engine => "/customers"
end
