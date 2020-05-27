# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Role.destroy_all

Role.create(name: 'admin')
Role.create(name: 'editor')

Topic.destroy_all

Topic.create(name: 'Working remotely')
Topic.create(name: 'Attending classes remotely')
Topic.create(name: 'Practicing social distancing')
Topic.create(name: 'Surrounding environment')
Topic.create(name: 'Stay at home activities(recreational, entertaining, etc.)')
Topic.create(name: 'Signage')
Topic.create(name: 'Other')
