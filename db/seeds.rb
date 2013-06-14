morning_tags = %w[nsfw Nipslips DrunkGirls OnOff nipples laundryday 
                happygirls Christiangirls camwhores
              HappyEmbarrassedGirls FlashingGirls]

morning_tags.each do |tag_name|      
  Tag.create :name => tag_name, :update_case => UPDATE_CASE[:morning]
end