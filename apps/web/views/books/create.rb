module Web
  module Views
    module Books
      class Create
        include Web::View

        template 'books/new'

        def form
          Form.new(:book, routes.create_book_path)
        end

        def submit_label
          'Create Book'
        end  

      end
    end
  end
end
