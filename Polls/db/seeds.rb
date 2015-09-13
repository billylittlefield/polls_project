# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(user_name: 'Sally')
User.create!(user_name: 'Sally2')
User.create!(user_name: 'George')
User.create!(user_name: 'Ramon')
User.create!(user_name: 'Alejandro')
User.create!(user_name: 'Consiguiente')
User.create!(user_name: 'Asd')

Poll.create!(title: "Gay Marriage", author_id: 2)
Poll.create!(title: "Straight Marriage", author_id: 2)
Poll.create!(title: "Presidential Pets", author_id: 1)
Poll.create!(title: "Syrian Refugees", author_id: 3)
Poll.create!(title: "Dinosaurs/Jesus", author_id: 7)

Question.create!(poll_id: 1, text: "Do you like gay people?")
Question.create!(poll_id: 1, text: "Do you like gay marriage?")
Question.create!(poll_id: 1, text: "Do your parents know?")

Question.create!(poll_id: 2, text: "Do you like straight people?")
Question.create!(poll_id: 2, text: "Do you like straight marriage?")
Question.create!(poll_id: 2, text: "Do you get what I'm saying?")

Question.create!(poll_id: 3, text: "Who is your favorite and why is it Beau?")

Question.create!(poll_id: 4, text: "How many refugees have you taken in?")
Question.create!(poll_id: 4, text: "Are you :) or :(?")

Question.create!(poll_id: 5, text: "What's your favorite dinosaur?")
Question.create!(poll_id: 5, text: "What color was Christ's skin?")
Question.create!(poll_id: 5, text: "Which dinosaur was the favorite of the Son of God?")
Question.create!(poll_id: 5, text: "Triceratops: BEFORE or AFTER Jesus?")


AnswerChoice.create!(question_id: 1, text: "yes")
AnswerChoice.create!(question_id: 1, text: "no")
AnswerChoice.create!(question_id: 2, text: "yes")
AnswerChoice.create!(question_id: 2, text: "no")
AnswerChoice.create!(question_id: 3, text: "yes")
AnswerChoice.create!(question_id: 3, text: "no")
AnswerChoice.create!(question_id: 4, text: "yes")
AnswerChoice.create!(question_id: 4, text: "no")
AnswerChoice.create!(question_id: 5, text: "yes")
AnswerChoice.create!(question_id: 5, text: "no")
AnswerChoice.create!(question_id: 6, text: "yes")
AnswerChoice.create!(question_id: 6, text: "no")
AnswerChoice.create!(question_id: 7, text: "Beau, because he was first.")
AnswerChoice.create!(question_id: 7, text: "Beau, because he is superior.")
AnswerChoice.create!(question_id: 8, text: "0")
AnswerChoice.create!(question_id: 8, text: "1")
AnswerChoice.create!(question_id: 8, text: "Many")
AnswerChoice.create!(question_id: 9, text: ":)")
AnswerChoice.create!(question_id: 9, text: ":(")
AnswerChoice.create!(question_id: 9, text: ":?")
AnswerChoice.create!(question_id: 9, text: "xD")
AnswerChoice.create!(question_id: 10, text: "Velociraptor")
AnswerChoice.create!(question_id: 11, text: "White as snow.")
AnswerChoice.create!(question_id: 11, text: "That's politically incorrect.")
AnswerChoice.create!(question_id: 12, text: "Terry the Pterodactyl.")
AnswerChoice.create!(question_id: 12, text: "T-Rex the Pterodactyl.")
AnswerChoice.create!(question_id: 13, text: "Before.")
AnswerChoice.create!(question_id: 13, text: "After?")

Response.create!(responder_id: 1, answer_choice_id: 1)
Response.create!(responder_id: 1, answer_choice_id: 4)
Response.create!(responder_id: 6, answer_choice_id: 2)
Response.create!(responder_id: 3, answer_choice_id: 4)
Response.create!(responder_id: 1, answer_choice_id: 11)
Response.create!(responder_id: 5, answer_choice_id: 9)
Response.create!(responder_id: 3, answer_choice_id: 9)
Response.create!(responder_id: 3, answer_choice_id: 14)
