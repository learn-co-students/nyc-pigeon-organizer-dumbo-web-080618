require 'pry'
pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_data = {}
  main_keys = data.keys
  main_keys.each{|main_key|
    data[main_key].each{|sub_key, members|
      members.each{|member|
        if (pigeon_data.key?(member) == false)
          pigeon_data[member] = {}
          pigeon_data[member].store(main_key, [sub_key.to_s])
        else
          if (pigeon_data[member][main_key] != nil)
            pigeon_data[member][main_key].push(sub_key.to_s)
          else
            pigeon_data[member][main_key] = [sub_key.to_s]
            # pigeon_data[member][main_key].push(sub_key.to_s)
          end
        end
        # end
      }
    }
  }
  pigeon_data
end