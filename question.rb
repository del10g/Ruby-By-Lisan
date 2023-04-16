require "http"

response =
  HTTP.get("https://opentdb.com/api.php?amount=10&difficulty=easy&type=boolean")

p = response.parse
all = p["results"]
for q in all
  puts q
end
