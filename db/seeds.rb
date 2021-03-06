@user = User.create(email: "test@test.com",
										password: "asdfasdf",
										password_confirmation: "asdfasdf",
										first_name: "Jon",
										last_name: "Snow",
										phone: "2083579965")

puts "1 User created"

AdminUser.create(email: "admin@test.com",
									password: "asdfasdf",
									password_confirmation: "asdfasdf",
									first_name: "Admin",
									last_name: "Name",
									phone: "2083579965")

puts "1 Admin User created"

	AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days) )
	AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 13.days) )
	AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 20.days) )

puts "3 audit blogs have been created"

100.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content Nulla vitae elit libero, a pharetra augue. Nullam quis risus eget urna mollis ornare vel eu leo.", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Posts have been created"