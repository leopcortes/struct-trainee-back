class PostCategorySerializer < Panko::Serializer
    attributes :id, :category, :post

    def category
        {id: object.category.id, name: object.category.name, description: object.category.description}
    end

    def post
        {id: object.post.id, title: object.post.title, content: object.post.content}
    end
end