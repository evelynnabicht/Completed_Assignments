class TodoList

  def initialize(items)
    @agenda = items
  end

  def get_items
     @agenda
  end

  def add_item(item)
    @agenda << item
  end

  def delete_item(item)
    @agenda.delete(item)
  end

  def get_item(x)
    @agenda[x]
  end
end
