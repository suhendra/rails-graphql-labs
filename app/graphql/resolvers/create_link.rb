class Resolvers::CreateLink < GraphQL::Function
  argument :url, types.String
  argument :description, types.String

  type Types::LinkType

  def call(obj, args, ctx)
    Link.create!(
      url: args[:url],
      description: args[:description]
      user: ctx[:current_user]
      )
  end

  rescue ActiveRecord::RecordInvalid => e
    # this would catch all validation errors and translate them to GraphQL::ExecutionError
    GraphQL::ExecutionError.new("Invalid input: #{e.record.errors.full_messages.join(', ')}")
  end

end
