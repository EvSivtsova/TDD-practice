class Calculator
  def add(num1, num2)
    num1 + num2
  end

  def factorial(num)
    if num.zero?
      1
    else
      (1..num).reduce(:*)
    end
  end
end
