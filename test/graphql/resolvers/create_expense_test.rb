require 'test_helper'

class Resolvers::CreateExpenseTest < ActiveSupport::TestCase
  def perform(args={})
    Resolvers::CreateExpense.new.call(nil,args,{})
  end
  test 'create expense' do
    expense = perform(
      description: 'test description',
      amount: 10.0
    )

    assert expense.persisted?
    assert_equal expense.description,'test description'
    assert_equal expense.amount, 10.0
  end
end