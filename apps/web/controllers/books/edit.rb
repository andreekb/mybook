module Web
  module Controllers
    module Books
      class Edit
        include Web::Action

        expose :book

        def call(params)
            @book = BookRepository.new.find(params[:id])
        end

      end
    end
  end
end
