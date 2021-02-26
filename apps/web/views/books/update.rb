module Web
  module Views
    module Books
      class Update
        include Web::View

        template 'books/edit'

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
