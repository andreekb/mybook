module Web
  module Views
    module Books
      class New
        include Web::View

        def form
          Form.new(:book, routes.create_book_path)
        end

        def submit_label
          'Save Book'
        end

      end
    end
  end
end
