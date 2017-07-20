module Types
  LinkType = GraphQL::ObjectType.define do
    name "Link"
    field :id, types.ID
    field :url, types.String
    field :description, types.String
    field :postBy, -> { Types::UserType }, property: :user
    field :votes, -> { !types[Types::VoteType] }
  end
end
