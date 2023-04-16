# puts "Lisan Hossain"
# name = "Lisan"
# puts "My name i"

# x = "100".to_i
# p x.to_s

# puts "100".to_i(9)
# obj = Object.new
# def obj.talk
#   puts "I am an Object."
#   puts "(Are you object)"
# end
# obj.talk

# # getting user input
# puts "Enter your name: "
# name = gets.chomp()
# puts "Enter your age: "
# age = gets.chomp()
# puts("Hello " + name + ", you are " + age + " years old.")

# Buildin a simple calculator
# puts "Enter a number: "
# num1 = gets.chomp().to_f
# puts "Enter another number: "
# num2 = gets.chomp().to_f
# puts (num1 + num2)

# Madlib Game
# puts "Enter a color"
# color = gets.chomp()
# puts("Enter a plural noun")
# plural_noun = gets.chomp()
# puts("Enter a celebrity")
# celebrity = gets.chomp()
# puts("Roses are " + color)
# puts(plural_noun + " are blue.")
# puts("I love " + celebrity)
#
#Arrays
# frds = Array(%w[Lisan Hossain Bose Tose])
# puts(frds)
# puts(frds.reverse())
# puts(frds.sort())
# puts(frds.length())
# frds[4] = "Lisan Hossain"
# puts frds
# new_array = Array.new
# new_array[0] = "Lisan"
# new_array[1] = false
# new_array[2] = true
# puts new_array
#
# Hashes
# Dhaka = "Dhaka"
# states = { :Dhaka => "DK", "Dohar" => "DH", "Paris" => "PR" }
# puts(states)
# puts(states[:Dhaka])
#
#
#CASE
# def get_day_name(day)
#   day_name = ""
#   case day
#   when "mon"
#     day_name = "Monday"
#   when "tue"
#     day_name = "Tuseday"
#   when "wed"
#     day_name = "Wednesday"
#   end
#   return day_name
# end

# puts(get_day_name("mon"))

# # While Loops
# index = 1
# while index <= 10
#   puts index
#   index += 1
# end
#
#Guess Game
# secret_word = "Lisan"
# guess = ""
# guess_count = 0
# guess_limit = 5
# guess_left = false

# while !guess_left
#   if (guess_count < guess_limit)
#     puts "Enter your guess word"
#     guess = gets.chomp()
#     puts "You Guessed the right word." if (guess == secret_word)
#     guess_left = true
#   else
#     guess_left = true
#     puts("You Lose")
#   end
# end
#
# For Loops
#
# friends = %w[Lisan Hossain Bose Tose Hose Lose]
# for name in friends
#   puts name
# end
# friends.each { |name| puts name }
# for i in 0..5
#   puts i
# end
# 10.times { |index| puts index }

# Exponent Method
# def pow(base_number, pow_number)
#   result = 1
#   pow_number.times { |index| result = result * base_number }
#   return result
# end

# puts(pow(3, 3))
#
#READING FROM FILES
# File.open("file.txt") do |file|
#   for line in file.readlines()
#     puts line
#   end
# end
# #
# file = File.open("file.txt", "r")
# puts file.readline
# file.close()
# Wriitng in File
# File.open("file.txt", "a") { |file| file.write("Oscan, Accounting") }
# Creating a new file
# File.open("index.html", "w") { |file| file.write("<h1>Hello Lisan</h1>") }
# Error handline
# begin
#   num = 10 / 0
# rescue StandardError
#   puts "Zero Division Error."
# end

# Class
# class Book
#   attr_accessor :title, :aurthor, :pages
#   def initialize(title, aurthor, pages)
#     @title = title
#     @aurthor = aurthor
#     @pages = pages
#   end
# end

# book1 = Book.new("Ruby", "Lisan", 400)
# puts book1.title
# puts book1.aurthor
# puts book1.pages
#
# class Student
#   attr_accessor :name, :major, :gpa
#   def initialize(name, major, gpa)
#     @name = name
#     @major = major
#     @gpa = gpa
#   end

#   def has_honour
#     if @gpa >= 3.5
#       return true
#     else
#       return false
#     end
#   end
# end

# lisan = Student.new("Lisan Hossain", "ICT", 4.0)
# puts lisan.name
# puts lisan.major
# puts lisan.gpa
# puts lisan.has_honour
#
# Quiz Game
#
require "http"

response =
  HTTP.get("https://opentdb.com/api.php?amount=10&difficulty=easy&type=boolean")

p = response.parse
all = p["results"]

class Question
  attr_accessor :prompt, :answer
  def initialize(prompt, answer)
    @prompt = prompt
    @answer = answer
  end
end

questions = Array.new
for q in all
  questions.push(Question.new(q["question"], q["correct_answer"]))
end

def run_test(questions)
  answer = ""
  score = 0
  for question in questions
    puts question.prompt
    answer = gets.chomp().capitalize()
    score += 1 if question.answer == answer
  end
  puts "Your score is " + score.to_s + "/" + questions.length.to_s
end

run_test(questions)
