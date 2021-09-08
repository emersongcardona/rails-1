class Car < ApplicationRecord
    belongs_to :driver, class_name: "Driver", foreign_key: "drivers_id"
   
   
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
