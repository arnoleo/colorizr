class String
  @@colors = {
                  red:        31,
                  green:      32,
                  yellow:     33,
                  blue:       34,
                  pink:       95,
                  light_blue: 94,
                  white:      97,
                  light_gray: 37,
                  black:      30
              }

  def self.create_colors
    @@colors.each do |color|
      self.send(:define_method, "#{color.key.to_s}") do
        "\e[#{color.value.to_s}m" + self.to_s + "\e[0m"
      end
    end
  end

  String.create_colors

  def self.sample_colors
    @@colors.each do |color|
      puts "This is " + send(color.key.to_s,color.key.to_s)
  end

  def self.colors
    @@colors.keys
  end
end
