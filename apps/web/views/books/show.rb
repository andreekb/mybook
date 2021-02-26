module Web
  module Views
    module Books
      class Show
        include Web::View

        def form
          Form.new(:book, routes.destroy_book_path(id: book.id), {book: book}, {method: :delete})
        end

        def submit_label
          'Delete Book'
        end  

      end
    end
  end
end
