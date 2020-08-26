class Item
  attr_writer :text, :checked

  def initialize(text="")
    @text = text
    @checked = false
  end

  def to_s
    if @checked
      "[ X ] " + @text
    else
      "[   ] " + @text
    end
  end

end