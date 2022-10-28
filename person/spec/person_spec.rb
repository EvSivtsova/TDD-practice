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
      
    it "does not add extra spaces if middle name is missing" do
      person = Person.new(
        first_name: "Anna",
        last_name: "Smith"
      )

      expect(person.full_name).to eq("Anna Smith")
    end
  end

  describe "#full_name_with_middle_initial" do
    it "concatenates first name, middle initial, and last name with spaces" do
      person = Person.new(
        first_name: "Anna",
        middle_name: "Jane",
        last_name: "Smith"
      )

      expect(person.full_name_with_middle_initial).to eq("Anna J Smith")
    end

    it "concatenates different first name, middle initial, and last name with spaces" do
      person = Person.new(
        first_name: "Chloe",
        middle_name: "Mary",
        last_name: "Oscar"
      )

      expect(person.full_name_with_middle_initial).to eq("Chloe M Oscar")
    end

    it "does not add extra spaces if middle name is missing" do
      person = Person.new(
        first_name: "Anna",
        last_name: "Smith"
      )

      expect(person.full_name_with_middle_initial).to eq("Anna Smith")
    end
  end

  describe "#initials" do
    it "concatenates initials of first name, middle initial, and last name with spaces" do
      person = Person.new(
        first_name: "Anna",
        middle_name: "Jane",
        last_name: "Smith"
      )

      expect(person.initials).to eq("A J S")
    end

    it "concatenates initials of different first name, middle initial, and last name with spaces" do
      person = Person.new(
        first_name: "Chloe",
        middle_name: "Mary",
        last_name: "Oscar"
      )

      expect(person.initials).to eq("C M O")
    end

    it "does not add extra spaces if middle name is missing" do
      person = Person.new(
        first_name: "Anna",
        last_name: "Smith"
      )

      expect(person.initials).to eq("A S")
    end
  end
end
