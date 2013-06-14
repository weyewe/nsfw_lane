
task :update_morning_posts => :environment do
  Tag.where(:update_case => UPDATE_CASE[:morning]).each do |tag|
    tag.update_posts 
  end
end

task :update_afternoon_posts => :environment do
  puts "Inside update afternoon posts"
  puts "Total tags: #{Tag.where(:update_case => UPDATE_CASE[:afternoon]).count} "
  Tag.where(:update_case => UPDATE_CASE[:afternoon]).each do |tag|
    tag.update_posts 
  end
end

task :update_evening_posts => :environment do
  Tag.where(:update_case => UPDATE_CASE[:evening]).each do |tag|
    tag.update_posts 
  end
end
