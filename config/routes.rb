Rails.application.routes.draw do
  
  devise_for :users
  
  # 랜딩페이지 컨트롤러 (home)
  root "home#landing"
  get 'home/landing'
  
  
  # 건물 등록 컨트롤러 (buildings)
  get 'buildings/buildings_index'
  get 'buildings/new'
  post 'buildings/create'
  get 'buildings/show/:id' => "buildings#show"
  get 'buildings/edit/:id' => "buildings#edit"
  post 'buildings/update/:id' => "buildings#update"
  get 'buildings/destroy/:id' => "buildings#destroy"
  
  
  # 방 등록 컨트롤러 (rooms)
  get 'rooms/rooms_index'
  get 'buildings/:building_id/rooms/new' => "rooms#new"
  post 'rooms/create'
  get 'buildings/:building_id/rooms/show/:id' => "rooms#show"
  get 'buildings/:building_id/rooms/edit/:id' => "rooms#edit"
  post 'rooms/update/:id' => "rooms#update"
  get 'rooms/destroy/:id' => "rooms#destroy"
  
  
  # 세입자 등록 컨트롤러 (tenants)
  get 'buildings/:building_id/rooms/:room_id/tenants/new' => "tenants#new"
  post 'tenants/create'
  get 'tenants/show'
  get 'buildings/:building_id/rooms/:room_id/tenants/edit/:tenant_id' => "tenants#edit"
  post 'buildings/:building_id/rooms/:room_id/tenants/update/:tenant_id' => "tenants#update"
  get 'buildings/:building_id/rooms/:room_id/tenants/destroy/:tenant_id' => "tenants#destroy"
  
  
  # 게시판 컨트롤러 (posts)
  get 'posts/posts_index'
  get 'posts/new'
  post 'posts/create'
  get 'posts/show/:id' => "posts#show"
  get 'posts/edit/:id' => "posts#edit"
  post 'posts/update/:id' => "posts#update"
  get 'posts/destroy/:id' => "posts#destroy"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
