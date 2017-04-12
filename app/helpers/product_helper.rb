module ProductHelper

  def class_check(product)
    if product.quantity < 1
      return "item_gone"
    else
      return "item_there"
    end
  end

  def quantity_check(product)
    puts "Ive been helped by #{product.quantity}"
    if product.quantity < 1
      return "Sold OUT!"
    else
      return product.quantity

    end
  end

end
