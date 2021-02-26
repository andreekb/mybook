module Web
  module Controllers
    module Books
      class Table
        include Web::Action

        expose :books

        def call(params)
          @books = BookRepository.new.all
        end

      end
    end
  end
end
