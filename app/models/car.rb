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

        def carId()
            f = self.created_at.to_s
            f = f[0..9]
            return "ID-#{f}"
        end    

        def self.list
            puts "metodo de clase"
              self.all.each do |car|
                puts "\n"
                puts "#{car.id.to_s} - #{car.model.to_s} - #{car.brand.to_s} - #{car.drivers_id.to_s} - #{car.code.to_s}"
                puts "\n"
                
              end
              return nil
          end
end

# def self.list
#     puts "metodo de clase"
#       self.all.each do |car|
#          m = car.model.to_s
#          puts "\n"
        
#       end
#   end