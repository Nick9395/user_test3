Rails.application.routes.draw do
  root "home#index"

  get "/about", to: "pages#about", as: :about
  get "/help", to: "pages#help", as: :help
  # この書き方の構文や意味
  # get "/about"は、  httpメソッド(get(ページ表示))+アクセスされるURL("/about")
  # to: "pages#about"は、  PagesControllerのaboutアクションを呼び出すという意味。
  # as: :aboutは、  名前付きルート。これで「about_path」が使えるようになる(urlをrailsが管理してくれる)
  # つまり、get~:aboutの一行で、URLを決めて呼び出す処理を決めてviewsで使う名前を決めている。


  resources :users, only: %i[new create show]
  resource :session, only: %i[new create destroy]
  # sessionは一人につきひとつなので、単数形にすること。

  get "up" => "rails/health#show", as: :rails_health_check
end
