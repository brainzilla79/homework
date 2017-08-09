require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Gary") }
  let(:ice_cream) { Dessert.new("ice cream", 10, chef) }

  describe "#initialize" do
    it "sets a type" do
      expect(ice_cream.type).to eq("ice cream")
    end

    it "sets a quantity" do
      expect(ice_cream.quantity).to eq(10)
    end

    it "starts ingredients as an empty array" do
      expect(ice_cream.ingredients).to be_a(Array)
      expect(ice_cream.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do

      expect { Dessert.new("cake", "fifteen", "Andre") }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      ice_cream.add_ingredient("fudge")

      expect(ice_cream.ingredients).to eq(["fudge"])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients = ["chocolate chips", "cookie dough", "fudge", "nuts"]
      ingredients.each do |ingredient|
        ice_cream.add_ingredient(ingredient)
      end

      expect(ice_cream.ingredients).to eq(ingredients)
      ice_cream.mix!
      expect(ice_cream.ingredients).to_not eq(ingredients)

    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      pie = Dessert.new("pie", 10, "sam")
      pie.eat(5)

      expect(pie.quantity).to eq(5)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect{ ice_cream.eat(15) }.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef Gary the Great Baker")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(ice_cream)
      ice_cream.make_more
    end
  end
end
