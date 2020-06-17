require 'pry'


def nyc_pigeon_organizer(data)
  pigeon_list = {} #created new hash for updated info
  
  data.each do |label, all| #iterating over original hash
    all.each do |type, name|
      name.each do |one|
        pigeon_list[one] = {:color => [], :gender => [], :lives => []} 
        #pigeon_list with singular name is going to have a hash of three key, value (array) pairs. So, pigeon_list(hash) is now: 
          # pigeon_list = {"name" => {:color => [], :gender => [], :lives => []}
    end
  end
  
  data[:color].each do |color, hash| #iterating over original hash with color key (first key in blank hash)
    hash.each do |names|
      if data[:color][color].include?(names)
        #if hash of :color includes the name we're currently using,
        pigeon_list[names][:color] << color.to_s
        #it'll add the color (as a string)
        #so new hash is now:
        # pigeon_list = {"FIRST NAME" => {:color => ["colors of current bird"], :gender => [], :lives => []}, {"NEXT NAME" => {:color => ["next", "colors"], :gender => [], :lives => []}
        #continues through each name
      end
    end
  end
  
  data[:gender].each do |gender, name_hash|
    name_hash.each do |gender_names|
      if data[:gender][gender].include?(gender_names)
        pigeon_list[gender_names][:gender] << gender.to_s
      end
    end
  end
  
  data[:lives].each do |lives, where_hash|
    where_hash.each do |names|
      if data[:lives][lives].include?(names)
        pigeon_list[names][:lives] << lives.to_s
      end
    end
  end
  
  return pigeon_list
end