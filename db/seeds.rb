
require 'faker'

Patient.destroy_all
Doctor.destroy_all
Appointment.destroy_all

100.times do |index|
  c= City.create(name: Faker::Address.city)
  s1= Speciality.create(name: Faker::Coffee.variety)
  s2= Speciality.create(name: Faker::Coffee.variety)
  a=Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: c)
  b=Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: c)
  DocSpec.create(doctor: a,speciality:s1)
  DocSpec.create(doctor: a,speciality:s2)
  Appointment.create(doctor: a, patient: b, date: Faker::Time.between(from: DateTime.now + 1, to: DateTime.now + 7, format: :default), city: c)
  puts "#{index} docteurs et patients crées"
  puts "#{index} rdv crées"
end
