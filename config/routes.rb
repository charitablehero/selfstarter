Selfstarter::Application.routes.draw do
  root :controller => 'home', :action => 'index'
  match "competition-details" => 'home#competition-details'
  match "faq" => 'home#faq'
  match "contact" => 'home#contact'

  match '/hero'               => 'preorder#index'
  get 'preorder/checkout'
  match '/preorder/share/:uuid'   => 'preorder#share', :via => :get
  match '/preorder/ipn'           => 'preorder#ipn', :via => :post
  match '/preorder/prefill'       => 'preorder#prefill'
  match '/preorder/postfill'      => 'preorder#postfill'
end
