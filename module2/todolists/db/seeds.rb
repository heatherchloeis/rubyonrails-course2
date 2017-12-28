# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all

User.create! [
	{ id: 1, username: "Carson", password_digest: "ben1951"}, 
	{ id: 2, username: "Clinton", password_digest: "hillary1947"}, 
	{ id: 3, username: "Fiorina", password_digest: "carly1954"}, 
	{ id: 4, username: "Trump", password_digest: "donald1946"}
]

Profile.destroy_all

Profile.create! [
	{ user_id: 1, first_name: "Ben", last_name: "Carson", gender: "male", birth_year: 1951},
	{ user_id: 2, first_name: "Hillary", last_name: "Clinton", gender: "female", birth_year: 1947},
	{ user_id: 3, first_name: "Carly", last_name: "Fiorina", gender: "female", birth_year: 1954},
	{ user_id: 4, first_name: "Donald", last_name: "Trump", gender: "male", birth_year: 1946}
]

TodoList.destroy_all

TodoList.create! [
	{ id: 1, user_id: 1, list_name: "Quit Medicine", list_due_date: Date.today + 1.year}, 
	{ id: 2, user_id: 2, list_name: "Come Back", list_due_date: Date.today + 1.year},
	{ id: 3, user_id: 3, list_name: "Go Away", list_due_date: Date.today + 1.year},
	{ id: 4, user_id: 4, list_name: "Quit Politics", list_due_date: Date.today + 1.year}
]

TodoItem.destroy_all

TodoItem.create! [
	{ id: 1, user_id: 1, todo_list_id: 1, title: "No Prescriptions", description: "Lorem ipsum dolor sit amet, te nec zril nostrum expetenda. Alia viris vituperatoribus at cum. Ea quo virtute laboramus.", due_date: Date.today + 1.year},
	{ id: 2, user_id: 1, todo_list_id: 1, title: "No Practice", description: "Lorem ipsum dolor sit amet, te nec zril nostrum expetenda. Alia viris vituperatoribus at cum. Ea quo virtute laboramus.", due_date: Date.today + 1.year},
	{ id: 3, user_id: 1, todo_list_id: 1, title: "No Patients", description: "Lorem ipsum dolor sit amet, te nec zril nostrum expetenda. Alia viris vituperatoribus at cum. Ea quo virtute laboramus.", due_date: Date.today + 1.year},
	{ id: 4, user_id: 1, todo_list_id: 1, title: "No Advice", description: "Lorem ipsum dolor sit amet, te nec zril nostrum expetenda. Alia viris vituperatoribus at cum. Ea quo virtute laboramus.", due_date: Date.today + 1.year},
	{ id: 5, user_id: 1, todo_list_id: 1, title: "No Medicine", description: "Lorem ipsum dolor sit amet, te nec zril nostrum expetenda. Alia viris vituperatoribus at cum. Ea quo virtute laboramus.", due_date: Date.today + 1.year},

	{ id: 6, user_id: 2, todo_list_id: 2, title: "Stand Up", description: "Lorem ipsum dolor sit amet, te nec zril nostrum expetenda. Alia viris vituperatoribus at cum. Ea quo virtute laboramus.", due_date: Date.today + 1.year},
	{ id: 7, user_id: 2, todo_list_id: 2, title: "Take Charge", description: "Lorem ipsum dolor sit amet, te nec zril nostrum expetenda. Alia viris vituperatoribus at cum. Ea quo virtute laboramus.", due_date: Date.today + 1.year},
	{ id: 8, user_id: 2, todo_list_id: 2, title: "Be Transparent", description: "Lorem ipsum dolor sit amet, te nec zril nostrum expetenda. Alia viris vituperatoribus at cum. Ea quo virtute laboramus.", due_date: Date.today + 1.year},
	{ id: 9, user_id: 2, todo_list_id: 2, title: "Do Right", description: "Lorem ipsum dolor sit amet, te nec zril nostrum expetenda. Alia viris vituperatoribus at cum. Ea quo virtute laboramus.", due_date: Date.today + 1.year},
	{ id: 10, user_id: 2, todo_list_id: 2, title: "Never Give Up", description: "Lorem ipsum dolor sit amet, te nec zril nostrum expetenda. Alia viris vituperatoribus at cum. Ea quo virtute laboramus.", due_date: Date.today + 1.year},

	{ id: 11, user_id: 3, todo_list_id: 3, title: "Stop Pretending", description: "Lorem ipsum dolor sit amet, te nec zril nostrum expetenda. Alia viris vituperatoribus at cum. Ea quo virtute laboramus.", due_date: Date.today + 1.year},
	{ id: 12, user_id: 3, todo_list_id: 3, title: "Be Genuine", description: "Lorem ipsum dolor sit amet, te nec zril nostrum expetenda. Alia viris vituperatoribus at cum. Ea quo virtute laboramus.", due_date: Date.today + 1.year},
	{ id: 13, user_id: 3, todo_list_id: 3, title: "Use Your Head", description: "Lorem ipsum dolor sit amet, te nec zril nostrum expetenda. Alia viris vituperatoribus at cum. Ea quo virtute laboramus.", due_date: Date.today + 1.year},
	{ id: 14, user_id: 3, todo_list_id: 3, title: "Common Sense", description: "Lorem ipsum dolor sit amet, te nec zril nostrum expetenda. Alia viris vituperatoribus at cum. Ea quo virtute laboramus.", due_date: Date.today + 1.year},
	{ id: 15, user_id: 3, todo_list_id: 3, title: "Listen To People", description: "Lorem ipsum dolor sit amet, te nec zril nostrum expetenda. Alia viris vituperatoribus at cum. Ea quo virtute laboramus.", due_date: Date.today + 1.year},

	{ id: 16, user_id: 4, todo_list_id: 4, title: "Fuck Off", description: "Lorem ipsum dolor sit amet, te nec zril nostrum expetenda. Alia viris vituperatoribus at cum. Ea quo virtute laboramus.", due_date: Date.today + 1.year},
	{ id: 17, user_id: 4, todo_list_id: 4, title: "Quit Already", description: "Lorem ipsum dolor sit amet, te nec zril nostrum expetenda. Alia viris vituperatoribus at cum. Ea quo virtute laboramus.", due_date: Date.today + 1.year},
	{ id: 18, user_id: 4, todo_list_id: 4, title: "Stop Talking", description: "Lorem ipsum dolor sit amet, te nec zril nostrum expetenda. Alia viris vituperatoribus at cum. Ea quo virtute laboramus.", due_date: Date.today + 1.year},
	{ id: 19, user_id: 4, todo_list_id: 4, title: "Don't Touch Anything", description: "Lorem ipsum dolor sit amet, te nec zril nostrum expetenda. Alia viris vituperatoribus at cum. Ea quo virtute laboramus.", due_date: Date.today + 1.year},
	{ id: 20, user_id: 4, todo_list_id: 4, title: "NO", description: "Lorem ipsum dolor sit amet, te nec zril nostrum expetenda. Alia viris vituperatoribus at cum. Ea quo virtute laboramus.", due_date: Date.today + 1.year},
]