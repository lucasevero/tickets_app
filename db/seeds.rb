Ticket.destroy_all
User.destroy_all

User.create!(
  email: "jamie@lewagon.com",
  password: "secret",
  username: "jamie",
  first_name: "Jamie",
  last_name: "Heo",
  role: "student"
)

User.create!(
  email: "mathis@lewagon.com",
  password: "secret",
  username: "mathis",
  first_name: "Mathis",
  last_name: "Desbrière",
  role: "student"
)

User.create!(
  email: "esh@lewagon.com",
  password: "secret",
  username: "esh",
  first_name: "Eshiyu",
  last_name: "Park",
  role: "student"
)

User.create!(
  email: "alban@lewagon.com",
  password: "secret",
  username: "alban",
  first_name: "Alban",
  last_name: "Avequin",
  role: "student"
)

User.create!(
  email: "norman@lewagon.com",
  password: "secret",
  username: "norman",
  first_name: "Chien",
  last_name: "Hsiang Ku",
  role: "student"
)

User.create!(
  email: "sammy@lewagon.com",
  password: "secret",
  username: "sammy",
  first_name: "Satinder",
  last_name: "Singh",
  role: "student"
)

User.create!(
  email: "ayanthi@lewagon.com",
  password: "secret",
  username: "ayanthi",
  first_name: "Ayanthi",
  last_name: "Saparamadu",
  role: "student"
)

User.create!(
  email: "monica@lewagon.com",
  password: "secret",
  username: "monica",
  first_name: "Monica",
  last_name: "Pham",
  role: "student"
)

luca = User.create!(
  email: "luca@lewagon.com",
  password: "secret",
  username: "luca",
  first_name: "Luca",
  last_name: "Severo",
  role: "teacher"
)

anwesha = User.create!(
  email: "anwesha@lewagon.com",
  password: "secret",
  username: "anwesha",
  first_name: "Anwesha",
  last_name: "Chatterjee",
  role: "teacher"
)

teachers = [luca, anwesha]
students = User.all - teachers

100.times do
  teacher = teachers.sample
  student = students.sample
  Ticket.create!(
    challenge: ["Simple looping", "Stupid Coach", "OrangeTree", "Cookbook", "Food Delivery", "Smiley Grid", "Lord of the Rings", "Watchlist"].sample,
    content: "I cant figure this out...",
    teacher: teacher,
    student: student,
    solved: [true, true, true, true, true, true, true, true, true, false].sample
  )
end
