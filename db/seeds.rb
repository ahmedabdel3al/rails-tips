# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


user = User.create({ email: 'admin@gmail.com' , password: "password" , full_name: 'ahmed abdelaal'  })
user.user_logins.create([{ ip_address: '156.220.252.169' , login_at: Time.now  } , { ip_address: '156.220.252.162' , login_at: 1.month.ago  } ,])