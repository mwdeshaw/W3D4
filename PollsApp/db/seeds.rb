# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ApplicationRecord.transaction do
  User.destroy_all
  Poll.destroy_all
  Question.destroy_all
  AnswerChoice.destroy_all


  user1 = User.create!(username: 'TommyBahama')
  user2 = User.create!(username: 'PotatoMan')
  user3 = User.create!(username: 'Fakenil') 

  poll1 = Poll.create!(title: 'Vote One', author: user1)
  poll2 = Poll.create!(title: 'Vote Two', author: user1)
  poll3 = Poll.create!(title: 'Vote Three', author: user2)
  poll4 = Poll.create!(title: 'Vote Four', author: user3)

  question1 = Question.create!(text: "What's for lunch?", poll: poll1) 
  question2 = Question.create!(text: "What's for dinner?", poll: poll2) 
  question3 = Question.create!(text: "What's for breakfast?", poll: poll3) 
  question4 = Question.create!(text: "What's for linnar?", poll: poll4)

  answer_choice1 = AnswerChoice.create!(text: "Ice cream", question: question1) 
  answer_choice2 = AnswerChoice.create!(text: "Cake", question: question1) 
  answer_choice3 = AnswerChoice.create!(text: "Tacos", question: question2) 
  answer_choice4 = AnswerChoice.create!(text: "Burritos", question: question2) 
  answer_choice5 = AnswerChoice.create!(text: "Steak", question: question3) 
  answer_choice6 = AnswerChoice.create!(text: "Eggs", question: question3) 
  answer_choice7 = AnswerChoice.create!(text: "Chips", question: question4) 
  answer_choice8 = AnswerChoice.create!(text: "Tapas", question: question4)








end


