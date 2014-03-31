module RailsMyself::Routing
  def self.admin(options = {})
    options[:path] ||= 'admin'
    options[:skip] ||= false
    Rails.application.routes.draw do
      namespace :admin, path: options[:path] do
        root to: 'books#index'
        resources :books
      end
    end unless options[:skip]
  end

  def self.front(options = {})
    options[:path] ||= '/'
    options[:skip] ||= false
    Rails.application.routes.draw do
      namespace :front, path: options[:path] do
        root to: 'books#index'
        resources :books
      end
    end unless options[:skip]
  end
end