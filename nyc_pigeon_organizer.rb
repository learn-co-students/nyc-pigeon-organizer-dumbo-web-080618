require 'pry'

def nyc_pigeon_organizer(data)
  new_hash = {}

  data.each do |color_hash, colors|
    colors.each do |specific_color, bird_names|
      bird_names.each do |bird|
        new_hash[bird] ||= {}
        #binding.pry
        new_hash[bird][color_hash] ||= []
        new_hash[bird][color_hash] << specific_color.to_s
      end
    end
  end

  new_hash
end
