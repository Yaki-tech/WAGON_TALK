# Clear existing data
puts "Cleaning database..."
Favorite.destroy_all
Session.destroy_all
Question.destroy_all
Deck.destroy_all

puts "Creating decks and questions..."

# Deck 1: Icebreakers classiques
icebreakers = Deck.create!(
  title: "Icebreakers",
  description: "Questions classiques pour briser la glace en début d'événement"
)

[
  "Si tu pouvais dîner avec n'importe qui, mort ou vivant, qui choisirais-tu ?",
  "Quel est le meilleur conseil qu'on t'ait jamais donné ?",
  "Si tu pouvais maîtriser une compétence instantanément, laquelle choisirais-tu ?",
  "Quel est ton souvenir d'enfance préféré ?",
  "Si tu pouvais vivre dans n'importe quelle époque, laquelle choisirais-tu ?",
  "Quelle est la chose la plus spontanée que tu aies jamais faite ?",
  "Si tu devais écrire un livre, de quoi parlerait-il ?",
  "Quel est le talent caché que peu de gens connaissent chez toi ?",
  "Si tu pouvais résoudre un problème mondial, lequel choisirais-tu ?",
  "Quelle est la meilleure décision que tu aies prise cette année ?",
  "Si tu devais changer de prénom, lequel choisirais-tu ?",
  "Quel est l'endroit le plus insolite où tu aies voyagé ?"
].each_with_index do |content, index|
  icebreakers.questions.create!(content: content, position: index)
end

# Deck 2: Tech Talk
tech_talk = Deck.create!(
  title: "Tech Talk",
  description: "Questions pour les communautés tech et développeurs"
)

[
  "Quel est le bug le plus mémorable que tu aies résolu ?",
  "Quelle techno as-tu apprise récemment et qui t'a surpris ?",
  "Si tu devais recommencer ta carrière tech, que ferais-tu différemment ?",
  "Quel est ton side project dont tu es le plus fier ?",
  "Tabs ou espaces ? Défends ta position !",
  "Quelle est la pire codebase sur laquelle tu aies travaillé ?",
  "Quel conseil donnerais-tu à quelqu'un qui débute en dev ?",
  "Quelle est la techno que tout le monde adore mais que tu n'aimes pas ?",
  "Quel est ton setup de dev idéal ?",
  "Si tu pouvais mass-delete une techno de l'existence, laquelle ?",
  "Quel est le meilleur investissement que tu aies fait pour ta productivité ?",
  "Comment gères-tu le syndrome de l'imposteur ?",
  "Quelle est ta plus grande fierté professionnelle ?",
  "Remote, hybrid ou bureau ? Pourquoi ?"
].each_with_index do |content, index|
  tech_talk.questions.create!(content: content, position: index)
end

# Deck 3: Deep Questions
deep_questions = Deck.create!(
  title: "Deep Questions",
  description: "Questions profondes pour des conversations significatives"
)

[
  "Qu'est-ce qui te rend vraiment heureux dans la vie ?",
  "Quelle est la leçon la plus importante que la vie t'ait apprise ?",
  "Si tu pouvais changer une chose dans ton passé, le ferais-tu ?",
  "Qu'est-ce qui te fait peur et comment le gères-tu ?",
  "Comment définis-tu le succès pour toi-même ?",
  "Quelle est la relation qui t'a le plus transformé ?",
  "Si tu avais 6 mois à vivre, que ferais-tu ?",
  "Quel est le plus grand risque que tu aies pris ?",
  "Qu'est-ce que tu aimerais qu'on dise de toi dans 50 ans ?",
  "Quelle croyance as-tu abandonnée en grandissant ?",
  "Qu'est-ce qui donne du sens à ta vie ?",
  "Quel est le plus beau compliment qu'on t'ait fait ?"
].each_with_index do |content, index|
  deep_questions.questions.create!(content: content, position: index)
end

# Deck 4: Le Wagon Edition
le_wagon = Deck.create!(
  title: "Le Wagon Edition",
  description: "Questions spéciales pour la communauté Le Wagon"
)

[
  "Pourquoi as-tu choisi de faire Le Wagon ?",
  "Quel a été ton moment 'eureka' pendant le bootcamp ?",
  "Si tu devais refaire ton projet final, que changerais-tu ?",
  "Quelle est la feature que tu as codée dont tu es le plus fier ?",
  "Quel buddy/teammate t'a le plus marqué et pourquoi ?",
  "Quel est ton meilleur souvenir de la semaine projet ?",
  "Comment le bootcamp a-t-il changé ta façon de penser ?",
  "Quel conseil donnerais-tu à quelqu'un qui commence le batch ?",
  "Qu'est-ce qui t'a le plus surpris dans l'apprentissage du code ?",
  "Où te vois-tu dans 2 ans grâce à ce que tu as appris ?",
  "Quel teacher/TA t'a le plus inspiré ?",
  "Si tu pouvais ajouter un cours au programme, ce serait quoi ?"
].each_with_index do |content, index|
  le_wagon.questions.create!(content: content, position: index)
end

puts "Seeds completed!"
puts "Created #{Deck.count} decks with #{Question.count} questions total."
