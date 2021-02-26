# Configure your routes here
# See: https://guides.hanamirb.org/routing/overview
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
get '/', to: 'home#index'
get    '/books',          to: 'books#index',   as: :list_books
get    '/books/new',      to: 'books#new',     as: :new_book
post   '/books',          to: 'books#create',  as: :create_book
get    '/books/:id/edit', to: 'books#edit',    as: :edit_book
patch  '/books/:id',      to: 'books#update',  as: :update_book
get    '/books/:id',     id: /\d+/,   to: 'books#show',    as: :show_book
delete '/books/:id',     id: /\d+/,   to: 'books#destroy', as: :destroy_book
get '/books/table', to: 'books#table', as: :table_books
