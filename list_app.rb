require './list.rb'
require './item.rb'

class ListApp
  attr_writer :list

  def initialize
    @list = List.new()
  end

  def run
    puts "Welcome to List_App by Carlos-SSH"
  end
end

list_app = ListApp.new
list_app.run
