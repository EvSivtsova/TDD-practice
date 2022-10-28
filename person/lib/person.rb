class Person
  def initialize(first_name:, middle_name: nil, last_name:)
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  def full_name
    if !@middle_name.nil?
      @first_name + " " + @middle_name + " " + @last_name
    else
      @first_name + " " + @last_name
    end
  end
end
