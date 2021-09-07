class Car < ApplicationRecord


    def alias(x)
        @car = Car.find(params[x])
        @driver = Driver.find(params[car.id])
        m = car.model.to_i
        b = driver.name
        c = b[b.length - 1]
        r = rand(100..1000).to_i 
    end    
end
