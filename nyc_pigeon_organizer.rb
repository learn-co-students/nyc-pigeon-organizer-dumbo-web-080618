require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data[:gender][:male].concat(data[:gender][:female]).each do |birdName|
    if pigeon_list.has_key?("#{birdName}") == false
      pigeon_list[birdName] = {:color => [], :gender => [], :lives => []}

      if birdName != "Queenie" && birdName != "Ms. K"
        pigeon_list[birdName][:gender] << 'male'
      else
        pigeon_list[birdName][:gender] << 'female'
      end

      data[:color].each do |color, nameArray|
        nameArray.each do |name|
          if birdName == name
            pigeon_list[birdName][:color] << color.to_s
          end#end of if statement
        end#end of nameArray
      end#end of data[:color].each


      data[:lives].each do |place_of_residence, birdsArray|
        birdsArray.each do |nameOfBirdLivingThere|
          if birdName == nameOfBirdLivingThere
            pigeon_list[birdName][:lives] << place_of_residence
          end
        end#end of birdsArray
      end#end of data[:lives]

    end#end of if statement pigeon_list.has_key
  end# end of data[:gender]

  pigeon_list
end#end of function
