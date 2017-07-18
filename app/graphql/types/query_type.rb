Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :allPosts, !types[Types::PostType] do
    description "fetch all posts"
    resolve -> (o, args, c) { Post.all }
  end
end
