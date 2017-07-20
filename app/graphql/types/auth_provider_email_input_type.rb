Types::AuthProviderEmailInputType = GraphQL::InputObjectType.define do
  name "AuthProviderEmailInput"
  argument :email, types.String
  argument :password, types.String
end
