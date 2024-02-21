puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'

addomme = { name: 'Addomme Pizzeria', address: '41 rue des Tournelles 75003 Paris', phone_number: '0762883766', category: 'italian'}
oxymore = { name: 'Oxymore', address: '60 rue Saint-Maur 75011 Paris', phone_number: '0147007324', category: 'italian'}
le_camion_qui_fume = { name: 'Le Camion Qui Fume', address: '66 rue Oberkampf 75011 Paris', phone_number: '0984330469', category: 'french'}
come_prima = { name: 'Come Prima', address: '33 rue Godot de Mauroy 75009 Paris', phone_number: '0147422337', category: 'italian'}
ober_mamma = { name: 'Ober Mamma', address: '107 bd Richard-Lenoir 75011 Paris', phone_number: '0186477834', category: 'french'}

[addomme, oxymore, le_camion_qui_fume, come_prima, ober_mamma].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts 'Finished!'
