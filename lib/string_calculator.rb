class StringCalculator
  def self.add(string)
    string.to_i == "" ? 0 : string.to_i
  end
end
