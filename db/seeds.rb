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

100.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} Tingling of the spine sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium muse about sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam are creatures of the cosmos, across the centuries intelligent beings rich in heavy atoms, light years muse about citizens of distant epochs of brilliant syntheses shores of the cosmic ocean science the sky calls to us, another world. Preserve and cherish that pale blue dot nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur a very small stage in a vast cosmic arena consciousness Rig Veda stirred by starlight a mote of dust suspended in a sunbeam. With pretty stories for which there's little good evidence? Paroxysm of global death rich in mystery rogue. Bits of moving fluff. Galaxies and billions upon billions upon billions upon billions upon billions upon billions upon billions.", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Posts have been created"

100.times do |audit_log|
	AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 audit logs have been created"

