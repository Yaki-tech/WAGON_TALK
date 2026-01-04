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
  "Quel buddy t'a le plus marqué et pourquoi ?",
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
