class StringCalculator
  def self.add(string)
    if string.include? ","
      string.split(",").map(&:to_i).reduce(:+)
    else
      string.to_i
    end
  end
end
