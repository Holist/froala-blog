Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "articles#index"
  resources :articles
  post "/upload_image" => "upload#upload_image", :as => :upload_image
  post "/upload_file" => "upload#upload_file", :as => :upload_file
  get "/download_file/:name" => "upload#access_file", :as => :upload_access_file, :name => /.*/
end
