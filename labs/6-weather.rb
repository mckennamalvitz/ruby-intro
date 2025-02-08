# To run this code, be sure your current working directory
# is the same as where this file is located and then run:
# ruby 6-weather.rb
# EXERCISE
# Given the following Ruby hash that represents weather data,
# write a weather summary out to the screen. Something like this:
# Currently it is 67 degrees and Sunny.
# Forecast for the next 7 days:
# - 65 degres and Mostly Cloudy
# - 70 degrees and Partly Cloudy
# - 62 degrees and Sunny
# - 68 degrees and Sunny
# - 65 degrees and Partly Cloudy with a 70% chance of rain
# - 72 degrees and Partly Cloudy
# - 60 degrees and Rainy
# Note: only display the chance of rain if above 50%.
# Note: do not display the chance of rain if conditions are already rainy.
weather_data = {
  current: {
    temperature: 67,
    conditions: "Sunny"
  },
  forecast: [
    { temperature: 65, conditions: "Mostly Cloudy", precipitation: 0.4 },
    { temperature: 70, conditions: "Partly Cloudy", precipitation: 0.2 },
    { temperature: 62, conditions: "Sunny", precipitation: 0.1 },
    { temperature: 68, conditions: "Sunny", precipitation: 0.1 },
    { temperature: 65, conditions: "Partly Cloudy", precipitation: 0.7 },
    { temperature: 72, conditions: "Partly Cloudy", precipitation: 0.4 },
    { temperature: 60, conditions: "Rainy", precipitation: 0.9 }
  ]
}

current_temp = weather_data[:current][:temperature]
current_condition = weather_data[:current][:conditions]

puts "Currently it is #{current_temp} degrees and #{current_condition}."
puts "Forcast for the next 7 days:"
for day in weather_data[:forecast]
  future_temp = day[:temperature]
  future_conditions = day[:conditions]
  future_rain = (day[:precipitation]*100).to_i
  if future_conditions == "Rainy"
    puts "- #{future_temp} degrees and #{future_conditions}"
  elsif future_rain >50
    puts "- #{future_temp} degrees and #{future_conditions} with a #{future_rain}% chance of rain"
  else 
    puts "- #{future_temp} degrees and #{future_conditions}"
  end
end
