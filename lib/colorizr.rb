class String
  @@color_array = [{color: :red, number: 31}, {color: :green, number: 32}, {color: :yellow, number: 33},
    {color: :blue, number: 34}, {color: :pink, number: 36}, {color: :light_blue, number: 94},
    {color: :white, number: 97}, {color: :light_gray, number: 37}, {color: :black, number: 30}]

  def self.colors
    @@color_array.each do |color|
      puts color[:color]
    end
  end

  def self.sample_colors
    @@color_array.each do |color|
      puts "\e[#{color[:number]}mThis is #{color[:color]}.\e[0m"
    end
  end
  def self.create_colors
    @@color_array.each do |color|
      method_text = %Q{
        def #{color[:color]}
          puts "\e[#{color[:number]}m" + self + "\e[0m"
        end
      }
      class_eval(method_text)
    end
  end
end
String.create_colors
