module MyApp
  class InventoryController < ApplicationController
    def index
      name = params[:name].presence

      effective_items =
        if name
          items.select { |item| item.name.eql?(name) }
        else
          items
        end

      render(json: effective_items)
    end

  private

    def items
      1.upto(100).map { |index| mk_item(index) }
    end

    def mk_item(index)
      Item.new(
        id:          index,
        name:        "Item-#{index}",
        description: "Some Item Description #{index}"
      )
    end
  end
end # MyApp
