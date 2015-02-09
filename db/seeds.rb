# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Course.delete_all
Classroom.delete_all

cr1 = Classroom.create(name:'Classroom 1', capacity: 20)
cr2 = Classroom.create(name:'Classroom 2', capacity: 15)
cr3 = Classroom.create(name:'Classroom 3', capacity: 30)

