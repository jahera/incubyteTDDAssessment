class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter = ","
    if numbers.start_with?("//")
      parts = numbers.split("\n", 2)
      delimiter = parts[0][2..-1]
      numbers = parts[1]
    end

    numbers = numbers.gsub("\n", delimiter)
    num_list = numbers.split(delimiter)

    total = 0
    negatives = []

    num_list.each do |num|
      n = num.to_i
      if n < 0
        negatives << n
      else
        total += n
      end
    end

    if negatives.any?
      raise "negative numbers not allowed: #{negatives.join(', ')}"
    end

    total
  end
end