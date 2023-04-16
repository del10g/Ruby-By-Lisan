require "http"
reponse = HTTP.get("https://dailyprayer.abdulrcs.repl.co/api/australia")

p = reponse.parse

now = Time.new

today = p["today"]
waktos = %w[Fajr Sunrise Dhuhr Asr Maghrib Isha'a]
for wakto in waktos
  puts "|#{wakto}| is in |#{today[wakto]}| now is #{now.inspect}"
end
