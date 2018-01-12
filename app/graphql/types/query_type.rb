Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # TODO: remove me
  field :allExpenses, types[Types::ExpenseType] do
    description "An example of allExpenses"
    resolve ->(obj, args, ctx) {
      Expense.all
    }
  end
end
