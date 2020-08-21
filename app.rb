require_relative 'lib/dofus'

stack_exchange = StackExchange.new("dofus", 1)
monstre_larve = stack_exchange.questions("Larves")
monstre_caverne = stack_exchange.questions("Monstres des cavernes")
monstre_plaine_herbeuse = stack_exchange.questions("Monstres des Plaines herbeuses")

#creation et edition du fichier sur le dossier db selon le type de monstre
file = File.new("./db/monstre_larve.json", "w")
file.puts "#{monstre_larve}"
file.close

file = File.new("./db/monstre_caverne.json", "w")
file.puts "#{monstre_caverne}"
file.close

file = File.new("./db/monstre_plaine_herbeuse.json", "w")
file.puts "#{monstre_plaine_herbeuse}"
file.close

puts "Fichier creer et contenir la liste des monstres selon leur types ,avec succes"