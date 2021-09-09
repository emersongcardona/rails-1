namespace :task do
    namespace :idcar do
        desc "tarea 5 id de car"
        task idcar: :environment do
            puts "se ejecuta la tarea"
            Car.all.each do |car|
            di = car.carId.to_s
            al = car.alias.to_s
            car.update(code: di)
            puts "alias:#{al} codigo:#{di}"
            end
        end
    end

end 