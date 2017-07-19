Types::PostType = GraphQL::ObjectType.define do
  name "Post"
  field :id, types.ID
  field :title, types.String
  field :content, types.String
  field :teaser, types.String do
    resolve -> (obj, args, ctx) {
      obj.content[0, 10]
    }
  end
  field :createdAt, types.String, property: :created_at
  field :comments, types[Types::CommentType]
end
