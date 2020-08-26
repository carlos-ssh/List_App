require "./item.rb"

class List
  attr_writer :items

  def initialize
    @items = Array.new()
  end

  def add_item(text)
    item = Item.new(text)
    @items.push(item)
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

  def show_all
    if @items.length == 0
      puts "Your shopping list is empty!"
    else
      @items.each_index do |index|
        index.to_s + " - " + @items[index].to_s
      end
    end
  end

end