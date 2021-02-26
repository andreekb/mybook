module Web
  module Controllers
    module Books
      class Create
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
            @book = BookRepository.new.create(params[:book].merge!(:data_created => Time.new))
            redirect_to routes.table_books_path
          end
        end

      end
    end
  end
end
