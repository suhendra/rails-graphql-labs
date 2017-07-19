Types::CommentType = GraphQL::ObjectType.define do
  name "Comment"
  field :id, types.ID
  field :content, types.String
  field :post, -> { Types::PostType }
  field :createdAt, types.String, property: :created_at
end
