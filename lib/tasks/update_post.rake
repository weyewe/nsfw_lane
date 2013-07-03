
task :update_morning_posts => :environment do
  Tag.where(:update_case => UPDATE_CASE[:morning]).each do |tag|
    tag.update_posts 
  end
end

task :update_brunch_posts => :environment do
  puts "Inside update brunch posts"
  puts "Total tags: #{Tag.where(:update_case => UPDATE_CASE[:brunch]).count} "
  Tag.where(:update_case => UPDATE_CASE[:brunch]).each do |tag|
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

task :update_after_lunch_posts => :environment do
  puts "Inside update after_lunch posts"
  puts "Total tags: #{Tag.where(:update_case => UPDATE_CASE[:after_lunch]).count} "
  Tag.where(:update_case => UPDATE_CASE[:after_lunch]).each do |tag|
    tag.update_posts 
  end
end

task :update_evening_posts => :environment do
  Tag.where(:update_case => UPDATE_CASE[:evening]).each do |tag|
    tag.update_posts 
  end
end


(1..24).each do |x|
  task_name = "update_time_#{x}"
  
  task task_name.to_sym => :environment do
    tags = Tag.where(:update_case => UPDATE_CASE["time_#{x}".to_sym] )
    puts "Total tags: #{tags.count}"
    
    tags.each do |tag|
      tag.update_posts 
    end
  end
end