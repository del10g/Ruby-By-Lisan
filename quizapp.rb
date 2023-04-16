require "http"

print "Enter the number of Question you want : "
number_of_questions = gets.chomp().to_i
print("Choose Level of difficulty:\n1. Easy\n2. Medium\n3. Hard\n => ")
user_input = gets.chomp().to_s
difficulty = ""
case user_input
when "1"
  difficulty = "easy"
when "2"
  difficulty = "medium"
when "3"
  difficulty = "hard"
end
response =
  HTTP.get(
    "https://opentdb.com/api.php?amount=" + number_of_questions.to_s +
      "&difficulty=" + difficulty.to_s + "&type=boolean"
  )

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
