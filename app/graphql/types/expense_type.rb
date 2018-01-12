#defines new GraphQL type
Types::ExpenseType = GraphQL::ObjectType.define do
  #This type is named as Exense
  name 'Expense'

  #it has following fields
  field :id,!types.ID
  field :description, types.String
  field :amount , !types.Float
  field :spentBy, -> { Types::UserType }, property: :user
end