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

# Edition Spéciale Anniversaire d'Inès
ines_birthday = Deck.find_by(title: "Edition Spéciale Anniversaire d'Inès")
if ines_birthday
  ines_birthday.update!(
    title_en: "Inès' Special Birthday Edition",
    description_en: "Fun questions to celebrate Inès' birthday"
  )

  translations = [
    "What would be Inès' spirit animal?",
    "If Inès were a party drink, which one would she be?",
    "If she were a song, which one suits her best?",
    "Which season represents Inès the best?",
    "If Inès were a city (or country), which one would it be?",
    "Which emoji best sums up Inès?",
    "If Inès were a color, which one and why?",
    "What's Inès' little quirk that everyone recognizes right away?",
    "What's her most frequent mood at parties?",
    "If Inès were a time of day, which one?",
    "Which everyday object resembles her the most?",
    "If Inès were a Sunday activity, what would it be?",
    "What's the typical 'Inès move' that everyone knows?",
    "If Inès had a superpower, what would it be?",
    "Which movie or TV show character resembles her the most?",
    "If Inès were an imaginary creature, which one?",
    "What would be the title of a movie about Inès' life?",
    "If Inès won the lottery, what would she do first?",
    "What word best describes Inès according to you?",
    "What memory with Inès always makes you smile?",
    "What quality of Inès makes us love her so much?",
    "What makes Inès truly unique?",
    "What fun or sweet message would you like to say to Inès today?"
  ]

  ines_birthday.questions.each_with_index do |question, index|
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
