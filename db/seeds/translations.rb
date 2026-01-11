# English translations for decks and questions
puts "Adding English translations..."

# Icebreakers
icebreakers = Deck.find_by(title: "Icebreakers")
if icebreakers
  icebreakers.update!(
    title_en: "Icebreakers",
    description_en: "A few questions to help you break the ice"
  )

  translations = [
    "If you could have dinner with anyone, dead or alive, who would you choose?",
    "What's the best advice you've ever been given?",
    "If you could master one skill instantly, which would you choose?",
    "What's your favorite childhood memory?",
    "If you could live in any era, which would you choose?",
    "What's the most spontaneous thing you've ever done?",
    "If you had to write a book, what would it be about?",
    "What's a hidden talent that few people know about you?",
    "If you could solve one world problem, which would you choose?",
    "What's the best decision you've made this year?",
    "If you had to change your first name, which would you choose?",
    "What's the most unusual place you've traveled to?"
  ]

  icebreakers.questions.each_with_index do |question, index|
    question.update!(content_en: translations[index]) if translations[index]
  end
end

# Tech Talk
tech_talk = Deck.find_by(title: "Tech Talk")
if tech_talk
  tech_talk.update!(
    title_en: "Tech Talk",
    description_en: "Questions for tech and code enthusiasts"
  )

  translations = [
    "What's your favorite programming language and why?",
    "Tell us about the craziest bug you've ever fixed",
    "What's your secret side project or app idea?",
    "Dark mode or light mode? Defend your position!",
    "What's the best tech advice you've received?",
    "If you could create an app to solve a problem, what would it be?",
    "Which developer or tech creator inspires you the most?",
    "Tabs or spaces? You have to pick a side!",
    "What's your favorite feature in an app or website?",
    "How do you imagine tech in 10 years?",
    "What's your essential VS Code tool or extension?",
    "If you could work at any tech company, which one?",
    "What's the tech project you're most proud of?"
  ]

  tech_talk.questions.each_with_index do |question, index|
    question.update!(content_en: translations[index]) if translations[index]
  end
end

# Deep Questions
deep_questions = Deck.find_by(title: "Deep Questions")
if deep_questions
  deep_questions.update!(
    title_en: "Deep Questions",
    description_en: "Deep questions for meaningful conversations"
  )

  translations = [
    "What makes you truly happy in life?",
    "What's the most important lesson life has taught you?",
    "If you could change one thing from your past, would you?",
    "What scares you and how do you deal with it?",
    "How do you define success for yourself?",
    "Which relationship has transformed you the most?",
    "If you had 6 months to live, what would you do?",
    "What's the biggest risk you've ever taken?",
    "What would you like people to say about you in 50 years?",
    "What belief did you abandon as you grew up?",
    "What gives your life meaning?",
    "What's the best compliment you've ever received?"
  ]

  deep_questions.questions.each_with_index do |question, index|
    question.update!(content_en: translations[index]) if translations[index]
  end
end

# Wagon Talk
wagon_talk = Deck.find_by(title: "Wagon Talk")
if wagon_talk
  wagon_talk.update!(
    title_en: "Wagon Talk",
    description_en: "Fun questions about the Le Wagon universe"
  )

  translations = [
    "Tell us about your worst debugging moment that ended with a ridiculous typo",
    "What's your ideal work setup: noisy café, silent library, or couch?",
    "Share a funny story that happened to you during the bootcamp",
    "What's your best pair programming memory?",
    "If Le Wagon were a Netflix series, what would be its title?",
    "What was your biggest fear before starting the bootcamp?",
    "What's the weirdest advice you've been given about code or data?",
    "If you could add a completely WTF course to the program, what would it be?",
    "What's your perfect playlist for coding or analyzing data?",
    "Tell us about your worst technical fail during a demo",
    "If you had to explain what you do to your grandma, what would you say?",
    "What's your dream dataset to analyze?",
    "What's the most WTF data visualization you've ever seen?",
    "Python or R? Defend your side!",
    "Tell us about your first 'Eureka!' moment with data or code",
    "If you could automate anything in your life, what would it be?",
    "What's the most surprising stat or insight you've discovered?",
    "Jupyter Notebook: love or nightmare?",
    "If you were a type of chart, which one would you be and why?",
    "Describe your Le Wagon experience in one gif"
  ]

  wagon_talk.questions.each_with_index do |question, index|
    question.update!(content_en: translations[index]) if translations[index]
  end
end

# Fun Talk
fun = Deck.find_by(title: "Fun Talk")
if fun
  fun.update!(
    title_en: "Fun Talk",
    description_en: "Fun and light questions to have a good time"
  )

  translations = [
    "What's your worst dad joke?",
    "If you were a cartoon character, who would you be?",
    "What's the weirdest thing you have in your fridge?",
    "If you could have a useless superpower, which would you choose?",
    "What's your favorite conspiracy theory?",
    "Would you rather fight 100 duck-sized horses or 1 horse-sized duck?",
    "What's your guilty pleasure music?",
    "If you were an emoji, which one would you be?",
    "What's the most embarrassing thing in your search history?",
    "If you could be sponsored by any brand, which one?",
    "What's your most controversial hot take?",
    "If you had to eat the same thing every day, what would it be?"
  ]

  fun.questions.each_with_index do |question, index|
    question.update!(content_en: translations[index]) if translations[index]
  end
end

puts "English translations completed!"
