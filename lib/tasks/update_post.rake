
task :update_morning_posts => :environment do
  Tag.where(:update_case => UPDATE_CASE[:morning]).each do |tag|
    tag.update_posts 
  end
end
