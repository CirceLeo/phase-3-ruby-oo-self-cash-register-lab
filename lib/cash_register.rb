class CashRegister
    attr_accessor :total, :items, :discount
    #attr_reader 
    def initialize discount = 20
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item (title, price, quantity = 1)
        @total = @total + (price * quantity)
        quantity.times { @itmes.push title }
    end

    def apply_discount
        if self.discount == 20
            @total = @total * (discount / 100)
            "After the discount, the total comes to $#{total}."
        else "There is no discount to apply."
        end
        
    end
end
