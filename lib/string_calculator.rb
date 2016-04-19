class StringCalculator
  def self.add(string)
    return string.to_i unless string.include? ","
    string.split(",").map(&:to_i).reduce(:+)
  end
end
