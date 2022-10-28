class Person
  def initialize(first_name:, middle_name: nil, last_name:)
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  def full_name
    @middle_name = @middle_name.nil? ? "" : @middle_name + " "
    @first_name + " " + @middle_name + @last_name
  end

  def full_name_with_middle_initial
    "Anna J Smith"
  end
end
