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
  description: "Quelques questions pour t'aider à briser la glace"
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
  description: "Questions pour les passionnés de tech et de code"
)

[
  "Quel est ton langage de programmation préféré et pourquoi ?",
  "Raconte-nous le bug le plus fou que tu aies jamais résolu",
  "Quel est ton side project secret ou ton idée d'app ?",
  "Dark mode ou light mode ? Défends ta position !",
  "Quel est le meilleur conseil tech que tu aies reçu ?",
  "Si tu pouvais créer une app pour résoudre un problème, ce serait quoi ?",
  "Quel développeur ou créateur tech t'inspire le plus ?",
  "Tabs ou espaces ? Il faut choisir un camp !",
  "Quelle est ta fonctionnalité préférée dans une app ou un site ?",
  "Comment imagines-tu la tech dans 10 ans ?",
  "Quel est ton outil ou extension VS Code indispensable ?",
  "Si tu pouvais travailler chez n'importe quelle boîte tech, laquelle ?",
  "Quel est le projet tech dont tu es le plus fier ?"
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

# Deck 4: Wagon Talk
wagon_talk = Deck.create!(
  title: "Wagon Talk",
  description: "Questions fun sur l'univers Le Wagon"
)

[
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
].each_with_index do |content, index|
  wagon_talk.questions.create!(content: content, position: index)
end

# Deck 5: Fun Talk
fun = Deck.create!(
  title: "Fun Talk",
  description: "Questions fun et légères pour s'amuser"
)

[
  "Quelle est ta pire blague de papa ?",
  "Si tu étais un personnage de dessin animé, qui serais-tu ?",
  "Quel est le truc le plus bizarre que tu aies dans ton frigo ?",
  "Si tu pouvais avoir un pouvoir inutile, lequel choisirais-tu ?",
  "Quelle est ta théorie du complot préférée ?",
  "Si tu devais te battre contre 100 canards ou 1 cheval, que choisirais-tu ?",
  "Quel est ton guilty pleasure musical ?",
  "Si tu étais un emoji, lequel serais-tu ?",
  "Quelle est la chose la plus embarrassante dans ton historique de recherche ?",
  "Si tu pouvais être sponsorisé par une marque, laquelle ?",
  "Quel est ton hot take le plus controversé ?",
  "Si tu devais manger la même chose tous les jours, ce serait quoi ?"
].each_with_index do |content, index|
  fun.questions.create!(content: content, position: index)
end

puts "Seeds completed!"
puts "Created #{Deck.count} decks with #{Question.count} questions total."
