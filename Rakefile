# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

desc "Tell me the date"
task :today do
  puts Date.today
end

desc "Show last topic submitted"
task :recent => :environment do
  p Topic.order("created_at DESC").first
end
