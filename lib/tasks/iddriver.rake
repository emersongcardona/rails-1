namespace :task do
    namespace :iddriver do
        desc "tarea 5 id de drivers"
        task iddriver: :environment do
            puts "se ejecuta la tarea"
            Driver.all.each do |driver|
            di = driver.name.to_s
            d = di[0].upcase
            d = "ID-#{d}"
            driver.update(code: d)
            puts "nombre:#{di} codigo:#{d}"
            end
        end
    end

end 