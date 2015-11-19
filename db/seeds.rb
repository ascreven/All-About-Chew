# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Profile.destroy_all
      user1 = User.create!(email: "testadmin@mvmanor.co.uk", password: "testadminuser", password_confirmation: "testadminuser", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:02:10", last_sign_in_at: "2015-02-06 14:02:10", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1")
      user2 = User.create!(email: "testuser@mvmanor.co.uk", password: "testuseraccount", password_confirmation: "testuseraccount", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:03:01", last_sign_in_at: "2015-02-06 14:03:01", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1")
      user3 = User.create!(email: "testcustomer@customer.co.uk", password: "testcustomeruser", password_confirmation: "testcustomeruser", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:03:44", last_sign_in_at: "2015-02-06 14:03:44", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1")
  Profile.create!([
    {name: "Chloe", gender: "female", breed: "German Shepard", city: "Tucson", state: "Arizona", age: 15, pro_pic: "raybans.jpg", description: "Test 1", user: user1},
    {name: "Ella", gender: "female", breed: "German Shepard", city: "Tucson", state: "Arizona", age: 15, pro_pic: "raybans.jpg", description: "Test 1", user: user2},
    {name: "Charlie", gender: "male", breed: "German Shepard", city: "Tucson", state: "Arizona", age: 15, pro_pic: "raybans.jpg", description: "Test 1", user: user3},
    {name: "Angel", gender: "female", breed: "German Shepard", city: "Tucson", state: "Arizona", age: 15, pro_pic: "raybans.jpg", description: "Test 1", user: user2}
  ])
