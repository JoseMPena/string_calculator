class StringCalculator
  def self.add(string)
    return string.to_i unless string.include? ","
    float_sum = string.split(",").map(&:to_f).reduce(:+)
    if (float_sum % float_sum.to_i).ceil == 1
      float_sum
    else float_sum.to_i
    end
  end
end
