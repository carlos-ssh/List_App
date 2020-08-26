class List
  attr_writer :items

  def initialize
    @items = Array.new()
  end

  def add_item(text)
    item = Item.new()
    items.push(item)
  end

  def delete_item(index)
    @items.delete_at(index)
  end

  def checked_items(index)
    @items[index].checked = true
  end

  def remove_all
    @items.clear
  end

end