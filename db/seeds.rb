# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |i|
	MyDocument.create(
	title: "Documento #{i}",
	description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sed libero sit amet nibh vehicula venenatis. Nam id nulla faucibus, porttitor sapien ac, ullamcorper dolor. Vestibulum in ante leo. Pellentesque ligula nisl, interdum et nulla vel, efficitur pulvinar lacus. Etiam venenatis in nisi non rhoncus. Vivamus tincidunt, orci tempus consequat congue, risus lorem semper nisl, porttitor pulvinar tortor enim vitae odio. Donec nec sagittis augue. Integer tincidunt dapibus nibh a efficitur. Nunc porta tempus ipsum non pellentesque. Ut malesuada quam nec nulla egestas pretium.',
	file_url: 'https://www.youtube.com/watch?v=OQ6ITgM7I1A&feature=share',
	image_url: 'https://scontent.flim5-3.fna.fbcdn.net/v/t1.0-9/1520741_241875559308031_92402000_n.jpg?oh=fb1260c19712726d584febfb4bfa9cf4&oe=5A37366D'
	)	
end
