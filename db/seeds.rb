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
    {name: "Beckley", gender: "female", breed: "German Shepard", city: "Washington", state: "District of Columbia", age: 1, pro_pic: "Beckley.jpg", description: "Actually church-key selvage farm-to-table, cold-pressed squid kinfolk normcore shoreditch viral ramps keffiyeh seitan kogi. Pinterest poutine celiac, iPhone freegan beard deep v kale chips you probably haven't heard of them. Hoodie kitsch sartorial, 3 wolf moon listicle flannel disrupt. Brunch letterpress echo park literally. Four loko aesthetic hammock, fingerstache freegan YOLO godard ennui meh sustainable gentrify sartorial leggings cronut. Semiotics wayfarers kickstarter cred lumbersexual, crucifix cray. 8-bit yr hashtag small batch, fap put a bird on it bespoke.", user: user1},
    {name: "Bailey", gender: "male", breed: "Chihuahua", city: "Washington", state: "District of Columbia", age: 2, pro_pic: "Bailey.jpg", description: "Blog semiotics food truck, quinoa drinking vinegar four dollar toast blue bottle portland mustache narwhal. Godard bicycle rights actually, 8-bit kickstarter fashion axe freegan four dollar toast cardigan dreamcatcher schlitz literally chillwave typewriter. Wolf cornhole artisan, kombucha mlkshk truffaut PBR&B vice lomo gluten-free occupy asymmetrical cliche chicharrones. Disrupt narwhal ramps bespoke. Whatever etsy YOLO street art, franzen polaroid offal brunch mumblecore typewriter cornhole skateboard. Gastropub meh flannel, butcher raw denim chambray sustainable 3 wolf moon synth DIY occupy. Four loko street art roof party, brunch pour-over fanny pack offal tote bag sartorial hella kogi dreamcatcher distillery chambray.", user: user2},
    {name: "Honey Pie", gender: "female", breed: "Border Collie", city: "Washington", state: "District of Columbia", age: '6 months', pro_pic: "Honey_Pie.jpg", description: "Actually church-key selvage farm-to-table, cold-pressed squid kinfolk normcore shoreditch viral ramps keffiyeh seitan kogi. Pinterest poutine celiac, iPhone freegan beard deep v kale chips you probably haven't heard of them. Hoodie kitsch sartorial, 3 wolf moon listicle flannel disrupt. Brunch letterpress echo park literally. Four loko aesthetic hammock, fingerstache freegan YOLO godard ennui meh sustainable gentrify sartorial leggings cronut. Semiotics wayfarers kickstarter cred lumbersexual, crucifix cray. 8-bit yr hashtag small batch, fap put a bird on it bespoke.", user: user3},
    {name: "Juniper", gender: "female", breed: "Terrier Mix", city: "Washington", state: "District of Columbia", age: 1, pro_pic: "Juniper.jpg", description: "Blog semiotics food truck, quinoa drinking vinegar four dollar toast blue bottle portland mustache narwhal. Godard bicycle rights actually, 8-bit kickstarter fashion axe freegan four dollar toast cardigan dreamcatcher schlitz literally chillwave typewriter. Wolf cornhole artisan, kombucha mlkshk truffaut PBR&B vice lomo gluten-free occupy asymmetrical cliche chicharrones. Disrupt narwhal ramps bespoke. Whatever etsy YOLO street art, franzen polaroid offal brunch mumblecore typewriter cornhole skateboard. Gastropub meh flannel, butcher raw denim chambray sustainable 3 wolf moon synth DIY occupy. Four loko street art roof party, brunch pour-over fanny pack offal tote bag sartorial hella kogi dreamcatcher distillery chambray.", user: user2},
    {name: "Spirit", gender: "male", breed: "Hound", city: "Washington", state: "District of Columbia", age: 5, pro_pic: "Spirit.jpg", description: "Actually church-key selvage farm-to-table, cold-pressed squid kinfolk normcore shoreditch viral ramps keffiyeh seitan kogi. Pinterest poutine celiac, iPhone freegan beard deep v kale chips you probably haven't heard of them. Hoodie kitsch sartorial, 3 wolf moon listicle flannel disrupt. Brunch letterpress echo park literally. Four loko aesthetic hammock, fingerstache freegan YOLO godard ennui meh sustainable gentrify sartorial leggings cronut. Semiotics wayfarers kickstarter cred lumbersexual, crucifix cray. 8-bit yr hashtag small batch, fap put a bird on it bespoke.", user: user2}
  ])
