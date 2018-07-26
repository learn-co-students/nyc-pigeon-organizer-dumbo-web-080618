def nyc_pigeon_organizer(data)
    pigeon = {}
    data.each do |info, hashish|
        hashish.each do |trait, birds|
            birds.each do |bird|
                if pigeon.has_key?(bird)
                    if pigeon[bird].has_key?(info)
                    pigeon[bird][info] << trait.to_s
                    else pigeon[bird][info] = [trait.to_s]
                    end
                else pigeon.has_key?(bird)
                pigeon[bird] = {info => [trait.to_s]}
                end
            end
        end
    end
pigeon
end
                    
                # (under pigeon[trait] = :color) bird.each do |names|
                #   if bird.include?(names)
                #     hash[trait] << bird
                #   end
                # end
#            end
#        end
#        p hash
#        end
