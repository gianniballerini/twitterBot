desc "This task is called by the Heroku scheduler add-on"
task :tweet => :environment do
  puts "Tweeting..."
  Bot.updateCuantoVamos
  puts "done."
end