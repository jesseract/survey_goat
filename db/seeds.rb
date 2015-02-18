# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Author.create!(name: "Emperor Goatimus", email: "eg@tiy.com", password: "goat")

1000.times do
    Author.create!(name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "goat")
end

all_authors = Author.all
question_types = ["Yes/No", "Choice", "Short Answer", "Long Answer"]

1000.times do
  survey = Survey.create!(title: Faker::Commerce.product_name,
                description: "See above",
                author: all_authors.sample)
#have to have survey belongs to author in the model for this to work

  3.times do |i|
  survey.questions << Question.create!(order_number: i,
                question_type: question_types.sample,
                question_text: Faker::Company.bs + "?",
                description: "See above",
                survey: survey)

  end
end

  questions = Question.all
  submissions = Submission.all

  questions.each do |r|
    3.times do
      r.responses << Response.create!(resonse_text: Faker::Lorem.words,
                                     question: r,
                                     submission: submissions.sample)
    end
  end
