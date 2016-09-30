
class TodoList
  def initialize(array)
    @list_store = array
  end
  def get_items
    @list_store
  end
  def add_item(item)
    @list_store << item
    get_items
  end
  def delete_item(item)
    @list_store.delete(item)
    get_items
  end
  def get_item(index)
    @list_store[index]
  end
end
