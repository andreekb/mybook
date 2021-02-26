module Web
  module Controllers
    module Books
      class Update
        include Web::Action

        expose :book

        params do
          required(:book).schema do
            required(:title).filled(:str?)
            required(:author).filled(:str?)
            required(:message).filled(:str?)
          end
        end

        def call(params)
          if params.valid?
            @book = BookRepository.new.update(params[:id], params[:book])
            redirect_to routes.table_books_path
          else
            @book = BookRepository.new.find(params[:id])
            #self.status = 422
          end
        end

      end
    end
  end
end
