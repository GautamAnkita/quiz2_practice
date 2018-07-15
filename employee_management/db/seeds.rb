# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

PASSWORD = "supersecret"
Employee.delete_all
Manager.delete_all
User.delete_all
Designation.delete_all



Designation.create(    
    title: "manager"
)

Designation.create(    
    title: "employee"
)


10.times do

   first_name = Faker::Name.first_name
   last_name = Faker::Name.last_name

    
    User.create(
      name: Faker::FunnyName.two_word_name,
      dob: Faker::Date.birthday(18, 65),
      email: "#{first_name.downcase}.#{last_name.downcase}@example.com",
      password: PASSWORD,
      designation: Designation.all.sample
    )
  end

  

  users = User.all
  i = 0
  5.times do
    m = Manager.create(
      user: users[i]
    )
    if m.valid?
        Employee.create(
        manager: m,
        user: users[i+5]
        )
    end
    i = i + 1
  end

  super_user = User.create(
  name: "Jon",
  dob: "1975-10-02",
  email: "js@winterfell.gov",
  password: PASSWORD,
  designation: Designation.all.sample
)

  manager = Manager.all
  employee = Employee.all
  user = User.all
  designation = Designation.all

  puts Cowsay.say("Created #{manager.count} manager", :cow)
  puts Cowsay.say("Created #{employee.count} employee", :sheep)
  puts Cowsay.say("Created #{user.count} user", :tux)
  puts Cowsay.say("Created #{designation.count} designation", :turkey)




