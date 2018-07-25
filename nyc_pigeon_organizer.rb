def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each { |key, value|
    value.each { |describe, array|
      array.each { |name|
        if pigeon_list.has_key?(name)
          if pigeon_list[name].has_key?(key)
            pigeon_list[name][key] << describe.to_s
          else
            pigeon_list[name][key] = [describe.to_s]
          end
        else
          pigeon_list[name] = {key => [describe.to_s]}
        end
      }
    }
  }
  pigeon_list
end
