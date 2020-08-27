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
      puts "a - Add New Item"
      puts "r - Remove Item"
      puts "s - Show All Items"
      puts "m - Mark an Item"
      puts "d - Delete All Items"
      puts "e - Exit App"
      input = gets.chomp

      case input
      when "e"
        break
      end
    end
    puts "Thanks for use List_App"
  end
end

list_app = ListApp.new
list_app.run
