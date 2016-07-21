require 'colorizr'

@color_array = [{color: "red", number: 31}, {color: "green", number: 32}, {color: "yellow", number: 33},
  {color: "blue", number: 34}, {color: "pink", number: 36}, {color: "light_blue", number: 94},
  {color: "white", number: 97}, {color: "light_gray", number: 37}, {color: "black", number: 30}]


def colors
  color_array.each do |color|
    puts color
  end
end

class String
  def sample_colors
    puts "\e[#{:number}mThis is #{:color}.\e[0m"
  end
end

class String
  def self.create_colors
    
  end
end
String.create_colors
