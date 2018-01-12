class Resolvers::CreateExpense < GraphQL::Function
  # arguments passed as args
  argument :description,types.String
  argument :amount,types.Float
  # return type from the mutation
  type Types::ExpenseType

  # the mutation method
  # _obj - is parent object, which in this case is nil
  # args - are the arguments passed
  # _ctx - is the GraphQL context (which would be discussed later)
  def call(_obj, args, ctx)
    Expense.create!(
      description: args[:description],
      amount: args[:amount],
      user: ctx[:current_user]
    )
  end
end