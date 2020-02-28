module Types
  class QueryType < Types::BaseObject
    field :items, [Types::ItemType], null: false, description: 'returns a list of items in the martian library'

    def items
      Item.all.includes(:user)
    end
  end
end
