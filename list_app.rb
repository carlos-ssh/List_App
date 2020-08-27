require './list.rb'
require './item.rb'

class ListApp
  attr_writer :list

  def initialize
    @list = List.new()
  end

  def run
    puts "Welcome to List_App by Carlos-SSH"

    loop do
      puts "a - Add New Item "
      puts "r - Remove Item"
      puts "s - Show All Items "
      puts "m - Mark an Item"
      puts "d - Delete All Items "
      puts "e - Exit App "
      input = gets.chomp

      case input
      when "a"
        puts "¿What do you want to add?"
        item = gets.chomp
        @list.add_item(item)
        puts "Your Item was added successfully!"
      when "r"
        puts "Please put your item that you want remove: "
        index = gets.chomp
        @list.delete_item(index.to_i)
        puts "Item Number: #{index} Deleted"
      when "s"
        puts "Shopping List: "
        @list.show_all
      when "m"
        puts "What Item do you want to Mark: "
        index = gets.chomp
        @list.check_item(index.to_i)
        puts "Item Marked"
      when "d"
        puts "Do you want remove all your items? y / n"
        input = gets.chomp
        if input == "y"
          @list.remove_all
          puts "Your list has been removed "
        else
          puts "Canceled"
        end
      when "e"
        break
      end
    end
    puts "Thanks for use List_App"
  end
end

list_app = ListApp.new
list_app.run
