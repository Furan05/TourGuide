# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Création d'utilisateurs
User.create!(
  email: 'test@example.com',
  password: 'password',
  password_confirmation: 'password'
)

# Création de destinations
destinations = [
  {
    name: 'Paris',
    country: 'France',
    city: 'Paris',
    description: 'La ville lumière, célèbre pour la Tour Eiffel, le Louvre et son charme romantique.',
    latitude: 48.8566,
    longitude: 2.3522
  },
  {
    name: 'Rome',
    country: 'Italie',
    city: 'Rome',
    description: 'La ville éternelle, riche en histoire antique avec le Colisée et le Vatican.',
    latitude: 41.9028,
    longitude: 12.4964
  },
  {
    name: 'Barcelone',
    country: 'Espagne',
    city: 'Barcelone',
    description: 'Célèbre pour son architecture unique de Gaudí et ses plages méditerranéennes.',
    latitude: 41.3851,
    longitude: 2.1734
  }
]

destinations.each do |dest_attrs|
  destination = Destination.create!(dest_attrs)

  # Ajout d'attractions pour chaque destination
  if destination.name == 'Paris'
    Attraction.create!(
      name: 'Tour Eiffel',
      description: 'Emblème de Paris, cette tour en fer de 324 mètres de hauteur est l\'une des structures les plus reconnaissables au monde.',
      address: 'Champ de Mars, 5 Avenue Anatole France, 75007 Paris',
      category: 'Monument',
      destination: destination
    )

    Attraction.create!(
      name: 'Musée du Louvre',
      description: 'Le plus grand musée d\'art et d\'antiquités au monde, abritant des milliers d\'œuvres dont la Joconde.',
      address: 'Rue de Rivoli, 75001 Paris',
      category: 'Musée',
      destination: destination
    )
  end
end

puts "Seeds created successfully!"
