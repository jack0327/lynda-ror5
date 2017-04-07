# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Subject.delete_all
Page.delete_all
puts 'all destroyed'
  subject1 = Subject.create(name: 'kevin',last_name:'nosowski',email:'asd@asd.com',visible:true)
  subject2 = Subject.create(name:'Adi',last_name:'azerski',email:'ad@bb.com',visible:true)
  puts 'create subjects'

  page1 = Page.create(subject_id:'1',description:'strona domowa',name:'homepage',position:1)
  page2 = Page.create(subject_id:'2',description:'ref',name:'refpage',position:2)
  puts 'create pages'
