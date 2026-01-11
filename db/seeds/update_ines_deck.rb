puts "Updating deck: Le Wagon Edition -> Edition Spéciale Anniversaire d'Inès"

# Find the old deck
old_deck = Deck.find_by(title: "Le Wagon Edition")

if old_deck
  # Update the deck
  old_deck.update!(
    title: "Edition Spéciale Anniversaire d'Inès",
    description: "Questions fun pour célébrer l'anniversaire d'Inès",
    title_en: "Inès' Special Birthday Edition",
    description_en: "Fun questions to celebrate Inès' birthday"
  )

  # Delete old questions
  old_deck.questions.destroy_all

  # Add new questions
  questions_fr = [
    "Quel serait l'animal totem d'Inès ?",
    "Si Inès était une boisson en soirée, laquelle serait-elle ?",
    "Si elle était une chanson, laquelle lui correspond le plus ?",
    "Quelle saison représente le mieux Inès ?",
    "Si Inès était une ville (ou un pays), ce serait lequel ?",
    "Quel emoji résume le mieux Inès ?",
    "Si Inès était une couleur, laquelle et pourquoi ?",
    "Quelle est la petite manie d'Inès qu'on reconnaît tout de suite ?",
    "Quel est son mood le plus fréquent en soirée ?",
    "Si Inès était un moment de la journée, lequel ?",
    "Quel objet du quotidien lui ressemble le plus ?",
    "Si Inès était une activité du dimanche, ce serait laquelle ?",
    "Quel est le \"Inès move\" typique que tout le monde connaît ?",
    "Si Inès avait un super-pouvoir, lequel serait-ce ?",
    "Quel personnage de film ou de série lui ressemble le plus ?",
    "Si Inès était une créature imaginaire, laquelle ?",
    "Quel serait le titre d'un film sur la vie d'Inès ?",
    "Si Inès gagnait à la loterie, que ferait-elle en premier ?",
    "Quel mot décrit le mieux Inès selon toi ?",
    "Quel souvenir avec Inès te fait toujours sourire ?",
    "Quelle qualité d'Inès fait qu'on l'aime autant ?",
    "Qu'est-ce qui rend Inès vraiment unique ?",
    "Quel message fun ou tendre aimerais-tu dire à Inès aujourd'hui ?"
  ]

  questions_en = [
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
  puts "✗ Deck 'Le Wagon Edition' not found!"
end
