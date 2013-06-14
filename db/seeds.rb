morning_tags = %w[nsfw Nipslips DrunkGirls OnOff nipples laundryday 
                happygirls Christiangirls camwhores
              HappyEmbarrassedGirls FlashingGirls]

morning_tags.each do |tag_name|      
  Tag.create :name => tag_name, :update_case => UPDATE_CASE[:morning]
end


afternoon_tags = %w[cougars milf  MatureWomen Unashamed]

afternoon_tags.each do |tag_name|      
  Tag.create :name => tag_name, :update_case => UPDATE_CASE[:afternoon]
end

evening_tags = %w[O_Faces openholes pink vagina analholes gape cumsluts buttsharpies]

evening_tags.each do |tag_name|      
  Tag.create :name => tag_name, :update_case => UPDATE_CASE[:evening]
end