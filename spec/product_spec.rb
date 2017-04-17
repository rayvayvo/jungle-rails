require 'rails_helper'

RSpec.describe Product, type: :model do

context "Validations" do
    it "is valid with name" do
      product = Product.new(name: nil)
      expect(Product.new).to_not be_valid
    end
    it "is valid with price" do
      product = Product.new(price: nil)
      expect(Product.new).to_not be_valid
    end
    it "is valid with quantity" do
      product = Product.new(quantity: nil)
      expect(Product.new).to_not be_valid
    end
    it "is valid with valid category" do
      product = Product.new(category: nil)
      expect(Product.new).to_not be_valid
    end
  end

before do

      @glassware = Category.create(name: 'glassware')

    end

    it "should validate true" do
      @product = Product.create(
        name: "mug",
        price: 15,
        quantity: 4,
        category: @glassware,
      )
      expect(@product)

    end

     it "should validate as not true" do
      @product = Product.new(
        name: nil,
        price: 15,
        quantity: 4,
        category: @glassware,
      )
      expect(@product).to_not be_valid

    end

  end


