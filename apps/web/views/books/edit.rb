module Web
  module Views
    module Books
      class Edit
        include Web::View

        def form
          Form.new(:book, routes.update_book_path(id: book.id), {book: book}, {method: :patch})
        end

        def submit_label
          'Update Book'
        end  

      end
    end
  end
end
