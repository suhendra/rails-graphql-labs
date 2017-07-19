class Resolvers::CreateComment < GraphQL::Function
  argument :content, types.String
  argument :postID, types.Int

  type Types::CommentType

  def call(obj, args, ctx)
    Post.find(args[:postID]).comments.create! content: args[:content]
  end
end
