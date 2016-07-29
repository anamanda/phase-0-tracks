class TodoList

  # create attr_reader for the get_items variable storing items on to do list
  attr_reader :get_items

  # create initialize method that takes get_items variable, set @get_items to get_items
  def initialize(get_items)
    @get_items = get_items
  end

  # create add item method to add item
  def add_item(item)
    @get_items << item
  end

  # create delete item method to delete item
  def delete_item(item)
    @get_items.delete(item)
  end

end