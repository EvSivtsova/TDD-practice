require 'person'

describe Person do
  describe "#full_name" do
    it "concatenates first name, middle name, and last name with spaces" do
      person = Person.new(
        first_name: "Anna",
        middle_name: "Jane",
        last_name: "Smith"
      )
      expect(person.full_name).to eq("Anna Jane Smith")
    end

    it "concatenates different first name, middle name, and last name with spaces" do
      person = Person.new(
        first_name: "Chloe",
        middle_name: "Mary",
        last_name: "Oscar"
      )
      expect(person.full_name).to eq("Chloe Mary Oscar")
    end
  end
end
