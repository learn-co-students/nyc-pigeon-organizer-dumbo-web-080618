require "pry"


def nyc_pigeon_organizer(data)
  pigeon = {}
  data.each do |characteristics , value|
    value.each do | key, results|
      results.each do |name|
        if pigeon.has_key?(name)
          if pigeon[name].has_key?(characteristics)
            pigeon[name][characteristics] << key.to_s
          else
            pigeon[name][characteristics] = [key.to_s]
          end
        else
          pigeon[name] = {characteristics => [key.to_s]}
        end
      end 
    end
  end
  pigeon
end
