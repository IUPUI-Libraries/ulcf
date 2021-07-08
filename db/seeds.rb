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

UserRole.destroy_all

UserRole.create(name: 'Faculty')
UserRole.create(name: 'Researcher')
UserRole.create(name: 'Staff')

School.destroy_all

School.create(name: 'Indiana University School of Dentistry')
School.create(name: 'Indiana University School of Education')
School.create(name: 'Purdue School of Engineering and Technology')
School.create(name: 'Indiana University School of Health and Human Sciences')
School.create(name: 'Herron School of Art and Design')
School.create(name: 'Indiana University School of Informatics and Computing')
School.create(name: 'Indiana University Kelley School of Business')
School.create(name: 'Indiana University School of Liberal Arts')
School.create(name: 'Indiana University Lilly Family School of Philanthropy')
School.create(name: 'Indiana University School of Medicine')
School.create(name: 'Indiana University School of Nursing')
School.create(name: "O'Neill School of Public and Environmental Affairs")
School.create(name: 'Purdue School of Scince')
School.create(name: 'Indiana University Richard M. Fairbanks School of Public Health')
School.create(name: 'Indiana University Robert H. McKinney School of Law')
School.create(name: 'School of Social Work')
School.create(name: 'University Library')
School.create(name: 'Herron School of Art Library')
School.create(name: 'School of Dentistry Library')
School.create(name: 'Ruth Lilly Law Library')
School.create(name: 'Ruth Lilly Medical Library')
