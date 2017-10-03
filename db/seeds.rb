@user = User.create(email: "test@test.com",
                    password: "asdfasdf",
                    password_confirmation: "asdfasdf",
                    first_name: "Jon",
                    last_name: "Snow",
                    phone: "4322386131")

puts "1 User created"

AdminUser.create(email: "admin@test.com",
                  password: "asdfasdf",
                  password_confirmation: "asdfasdf",
                  first_name: "Admin",
                  last_name: "Name",
                  phone: "4322386131")

puts "1 Admin User created"