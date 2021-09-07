class Car < ApplicationRecord
    belongs_to :driver, class_name: "Driver", foreign_key: "drivers_id"
   
    # def alias(x)
    #     @car = Car.find(params[x])
    #     @driver = Driver.find(params[car.id])
    #     m = driver.car.model
    #     b = driver.name
    #     c = b[b.length - 1]
    #     r = rand(100..1000).to_i 
    # end    

        def alias()
            m = self.model
            b = self.brand
            c = self.driver.name
            puts c
            l = c.length  
            c = c[l-1]
            r = rand(100..1000).to_i
            return "#{m} - #{b} - #{c} - #{r}"
            


        end    
end

# x = 1 
# clase.alias(x)
# puts "hola mundo"