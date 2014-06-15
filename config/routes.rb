Rails.application.routes.draw do
  get "/", to: "pages#index", as: :root

  get "/aluno/novo", to: "student#new", as: :new
  post "/aluno/novo", to: "student#create", as: false

  get "/aluno/:id", to: "student#show", as: :show
  get "aluno/delete/:id", to: "student#delete", as: :delete

  get "/aluno/edit/:id", to: "student#edit", as: :edit
  patch "/aluno/edit/:id", to: "student#update", as: :update

  # livros

  get "/:id/livros", to: "pages#book", as: :book

  get "/:id/livro/novo", to: "book#new", as: :new_book
  post "/:id/livro/novo", to: "book#create", as: false

  get "/livro/:id", to: "book#show", as: :show_book

  get "/livro/renovar/:id", to: "book#update", as: :renew_book
end
