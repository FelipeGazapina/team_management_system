# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


@workspace = Workspace.create(name: "Workspace 1")

@user1 = User.create(name: "User 1", email: "user1@domain.com")
@user2 = User.create(name: "User 2", email: "user2@domain.com")

@team = Team.create(name: "Developers")
@team.users << @user1
@team.users << @user2

@customer = Customer.create(name: "SINCLAPOL", contact_info: "contato@sinclapol.com.br", contract_price: 1000.00)

@task = Task.create(title: "Task 1", description: "Description", due_date: Time.now, team: @team, customer: @customer)

@task.team.users
@team.users
@task.customer
