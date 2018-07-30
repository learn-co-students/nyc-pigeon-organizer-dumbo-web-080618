require 'pry'
def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |top_attribute, value_hash|
    value_hash.each do |attribute, pigeon_array|
      pigeon_array.each do |pigeon|
        # binding.pry
        if new_hash.keys.include?(pigeon)
          if new_hash[pigeon].keys.include?(top_attribute)
            new_hash[pigeon][top_attribute] << attribute.to_s
          else
            new_hash[pigeon][top_attribute] = [attribute.to_s]
          end
        else
          new_hash[pigeon] = {}
          new_hash[pigeon][top_attribute] = [attribute.to_s]
        end
      end
    end
  end
  new_hash
end
