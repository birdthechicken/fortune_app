Rails.application.routes.draw do
  get "/fortune_url" => 'api/horses#fortune_action'
  get "/lotto_url" => 'api/horses#lotto_action'
  get '/page_count_url' => 'api/horses#count_action'
end
