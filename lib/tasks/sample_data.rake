namespace :Question do
  desc "Enter few questions for sign up process"
  task :seed_ques => :environment do

    puts "========Seeding Sample Questions========="
    quest = Question.new(:question_text => "Yesterday I went to the ______ with ______ and we ______ some ______.", :blanks => "4")
    quest.save()

    quest = Question.new(:question_text => "My pet ______ loves to ______ with ______ and ______.", :blanks => "4")
    quest.save()

    quest = Question.new(:question_text => "To get to______, I have to ______ by a ______ and a ______.", :blanks => "4")
    quest.save()

  end
end