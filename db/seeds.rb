# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Answer.destroy_all
SurveyQuestion.destroy_all
Question.destroy_all
Category.destroy_all
Survey.destroy_all

a = Category.create(name: "Food", icon_name: "fa fa-cutlery")
b = Category.create(name: "Nightlife", icon_name: "fa fa-glass")
c = Category.create(name: "Activity", icon_name: "fa fa-bicycle")
d = Category.create(name: "Accomodation", icon_name: "fa fa-bed")


Question.create(category: a, content: "Best local delicacy, and where do I get it?")
Question.create(category: a, content: "Best pizza in town?")
Question.create(category: a, content: "Where should I go to have brunch?")
Question.create(category: a, content: "What is your all time favorite restaurant?")
Question.create(category: a, content: "Any places that I should absolutely avoid?")
Question.create(category: a, content: "Most unusual restaurant?")
Question.create(category: a, content: "Best sushi in town?")
Question.create(category: a, content: "Best indian restaurant?")
Question.create(category: a, content: "Where to have late night fast food?")
Question.create(category: a, content: "Good restaurants for a nice quiet meal?")
Question.create(category: a, content: "Any nice markets to buy some local produce?")
Question.create(category: a, content: "Where should I go to try some local seafood?")
Question.create(category: a, content: "Best budget grocery store if I need to do some shopping?")
Question.create(category: a, content: "Best place to go for a romantic dinner?")
Question.create(category: a, content: "Any Michelin star restaurants in the area?")

Question.create(category: b, content: "Where should I go out?")
Question.create(category: b, content: "Any bar suggestions?")
Question.create(category: b, content: "Best happy hour in town?")
Question.create(category: b, content: "Where should me and my friends go for a night on the town?")
Question.create(category: b, content: "Where should I go to meet new people?")
Question.create(category: b, content: "Best techno clubs?")
Question.create(category: b, content: "Tips to have a great night for under £30?")
Question.create(category: b, content: "Any advice on the door policy for clubs in the area?")
Question.create(category: b, content: "Any areas I should avoid at night?")
Question.create(category: b, content: "How to get around after public transportation stops?")
Question.create(category: b, content: "Best place to go for a quiet drink with my boyfriend/girlfriend?")
Question.create(category: b, content: "Any big festivals or carnivals that I should try go to?")
Question.create(category: b, content: "Any Jazz bars/clubs in the area that you would recommend?")
Question.create(category: b, content: "How to get around after public transportation stops?")
Question.create(category: b, content: "Where would I find a costume themed party?")

Question.create(category: c, content: "Best tourist attraction?")
Question.create(category: c, content: "Most breathtaking view you found?")
Question.create(category: c, content: "Local gems that aren't crowded with tourists?")
Question.create(category: c, content: "What to do on a rainy day?")
Question.create(category: c, content: "What to do on a snowy day?")
Question.create(category: c, content: "Best things to do around christmas time?")
Question.create(category: c, content: "Any good places to go hiking nearby?")
Question.create(category: c, content: "Fun stuff to do with friends?")
Question.create(category: c, content: "Where to go for a nature escape?")
Question.create(category: c, content: "What sporty activities are available in the area?")
Question.create(category: c, content: "Any recommendations for local sporting teams to go watch?")
Question.create(category: c, content: "Where should I go for a day trip?")
Question.create(category: c, content: "Are there any national parks near by?")
Question.create(category: c, content: "Any good mountain biking trails nearby?")
Question.create(category: c, content: "Best place to soak in the local culture?")

Question.create(category: d, content: "Best hostel for a solo traveller?")
Question.create(category: d, content: "Most luxurious hotel?")
Question.create(category: d, content: "Best neighbourhood to stay in?")
Question.create(category: d, content: "Any advice for long term accomodation?")
Question.create(category: d, content: "Best area to stay in for a weekend?")
Question.create(category: d, content: "Any good places to stay close to a hospital?")
Question.create(category: d, content: "Affordable hotel suggestions?")
Question.create(category: d, content: "Airbnb suggestions?")
Question.create(category: d, content: "Best place to stay in the countryside?")
Question.create(category: d, content: "Area to stay in without a vehicle?")
Question.create(category: d, content: "Any family friendly neighbourhood suggestions?")
Question.create(category: d, content: "Whats the coolest neighbourhood to stay in?")
Question.create(category: d, content: "Suggestions for wheelchair accessible accomodation?")
Question.create(category: d, content: "Any hotels that provide childcare services?")
Question.create(category: d, content: "Any good places to stay close to the airport?")

