Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createPost, function: Resolvers::CreatePost.new
  field :createComment, function: Resolvers::CreateComment.new
  field :createLink, function: Resolvers::CreateLink.new
  field :createUser, function: Resolvers::CreateUser.new
  field :createVote, function: Resolvers::CreateVote.new
  field :signinUser, function: Resolvers::SignInUser.new
end
