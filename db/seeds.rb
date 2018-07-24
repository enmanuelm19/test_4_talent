# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
City.create(name: 'Santiago', country_code: 'CL')
City.create(name: 'Buenos Aires', country_code: 'AR')
City.create(name: 'Lima', country_code: 'PE')
City.create(name: 'Sao Pablo', country_code: 'BR')

Company.create(name: 'Company 1', company_type: "private")
Company.create(name: 'Company 2', company_type: "private")
Company.create(name: 'Company 3', company_type: "public")
Company.create(name: 'Company 4', company_type: "public")

Company.all.each do |company|
  Benefit.create(name: "Benefit 1 #{company.name}", company: company, amount: rand(10_000_000..20_000_000))
  Benefit.create(name: "Benefit 2 #{company.name}", company: company, amount: rand(1..15_000_000))
end

(1..10).each { |i| User.create(name: "User #{i}") }

User.all.each do |user|
  Postulation.create(name: "Postulation #{user.name}", user: user, benefit_id: Benefit.ids.sample)
  Postulation.create(name: "Postulation #{user.id}", user: user, benefit_id: Benefit.ids.sample)
end
