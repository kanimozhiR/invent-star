Rails.application.routes.draw do
  get 'stock/index'
  get 'stock/new', to: "stock#new"

  get 'stock/delete'
  get 'stock/:product_id/line_item', to: "stock#line_item"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
