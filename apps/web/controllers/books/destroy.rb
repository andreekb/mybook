module Web
  module Controllers
    module Books
      class Destroy
        include Web::Action

        expose :book

        def call(params)
          @book = BookRepository.new.delete(params[:id])
          if request.env['HTTP_X_REQUESTED_WITH']
            self.format = :html
            self.body = "ok"
          else
            redirect_to routes.table_books_path
          end
        end

      end
    end
  end
end
