Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createPost, function: Resolvers::CreatePost.new
  field :createComment, function: Resolvers::CreateComment.new
end
