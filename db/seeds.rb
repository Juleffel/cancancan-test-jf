# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create(email: 'test1@test.com', password: 'testpwd')

Company.destroy_all
c1 = Company.create(name: 'Company owned 1')
c2 = Company.create(name: 'Company owned 2')
c3 = Company.create(name: 'Company visible 1')
c4 = Company.create(name: 'Company visible 2')
c5 = Company.create(name: 'Company secret')

User2Company.create(user: u1, company: c1)
User2Company.create(user: u1, company: c2)

[Project1, Project2, Project3, Project4, Project5, Project6].each do |project_class|
  project_class.destroy_all
  project_class.create(name: 'Project owned 1', company: c1)
  project_class.create(name: 'Project owned 2', company: c1)
  project_class.create(name: 'Project owned 3', company: c2)
  project_class.create(name: 'Project visible 1', company: c3)
  project_class.create(name: 'Project visible 2', company: c4)
  project_class.create(name: 'Project secret', company: c5)
end
