puts "Updating deck: Edition Spéciale Anniversaire d'Inès -> Wagon Talk"

# Find the old deck
old_deck = Deck.find_by(title: "Edition Spéciale Anniversaire d'Inès")

if old_deck
  # Update the deck
  old_deck.update!(
    title: "Wagon Talk",
    description: "Questions fun sur l'univers Le Wagon",
    title_en: "Wagon Talk",
    description_en: "Fun questions about the Le Wagon universe"
  )

  # Delete old questions
  old_deck.questions.destroy_all

  # Add new questions
  questions_fr = [
    "Raconte ton pire moment de debug qui s'est terminé par une faute de frappe ridicule",
    "Quel est ton setup de travail idéal : café bruyant, bibliothèque silencieuse ou canapé ?",
    "Raconte une anecdote drôle qui t'est arrivée pendant le bootcamp",
    "Quel est ton meilleur souvenir de pair programming ?",
    "Si Le Wagon était une série Netflix, quel serait son titre ?",
    "Quelle était ta plus grande peur avant de commencer le bootcamp ?",
    "Quel est le conseil le plus bizarre qu'on t'ait donné sur le code ou la data ?",
    "Si tu pouvais ajouter un cours complètement WTF au programme, ce serait quoi ?",
    "Quelle est ta playlist parfaite pour coder ou analyser de la data ?",
    "Raconte ton pire fail technique en démo",
    "Si tu devais expliquer ce que tu fais à ta grand-mère, tu dirais quoi ?",
    "Quel est ton dataset de rêve à analyser ?",
    "Quelle est la visualisation de données la plus WTF que tu aies vue ?",
    "Python ou R ? Défends ton camp !",
    "Raconte ton premier 'Eureka!' moment avec la data ou le code",
    "Si tu pouvais automatiser n'importe quoi dans ta vie, ce serait quoi ?",
    "Quelle est la stat ou insight la plus surprenante que tu aies découverte ?",
    "Jupyter Notebook : amour ou cauchemar ?",
    "Si tu étais un type de graphique, tu serais lequel et pourquoi ?",
    "Décris ton expérience Le Wagon en un gif"
  ]

  questions_en = [
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

  questions_fr.each_with_index do |content, index|
    old_deck.questions.create!(
      content: content,
      content_en: questions_en[index],
      position: index
    )
  end

  puts "✓ Deck updated successfully!"
  puts "  Title: #{old_deck.title}"
  puts "  Questions: #{old_deck.questions.count}"
else
  puts "✗ Deck 'Edition Spéciale Anniversaire d'Inès' not found!"
end
