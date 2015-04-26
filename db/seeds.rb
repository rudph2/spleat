# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

venues = [{name: 'London Restaurant'},
          {name: 'Manchester Restaurant'}]

venues.each { |venue| Venue.create!(:name => venue[:name]) }


users = [{name: 'Sebastian', surname: 'Siemianowski'},
         {name: 'Klaudia', surname: 'Siemianowska'},
         {name: 'Anna', surname: 'Siemianowska'}]

users.each { |user| User.create!(name: user[:name], surname: user[:surname]) }

tabs = [{name: 'Bill', venue: Venue.first},
        {name: 'Check', venue: Venue.first},
        {name: 'Cash', venue: Venue.second}]

tabs.each { |tab| Tab.create!(name: tab[:name], venue: tab[:venue]) }


user_tabs = [{user: User.first, tab: Tab.first},
             {user: User.second, tab: Tab.second},
             {user: User.third, tab: Tab.third}]

user_tabs.each { |user_tab| UserTab.create!(user: user_tab[:user], tab: user_tab[:tab]) }

payments = [{payment_date: DateTime.strptime("04/20/2015 8:00", "%m/%d/%Y %H:%M"), user_tab: UserTab.first, value: 10, success_status: true},
            {payment_date: DateTime.strptime("04/21/2015 8:00", "%m/%d/%Y %H:%M"), user_tab: UserTab.first, value: 20, success_status: true},
            {payment_date: DateTime.strptime("04/22/2015 8:00", "%m/%d/%Y %H:%M"), user_tab: UserTab.first, value: 30, success_status: true},
            {payment_date: DateTime.strptime("04/20/2014 8:00", "%m/%d/%Y %H:%M"), user_tab: UserTab.second, value: 40, success_status: true},
            {payment_date: DateTime.strptime("04/21/2014 8:00", "%m/%d/%Y %H:%M"), user_tab: UserTab.second, value: 50, success_status: false},
            {payment_date: DateTime.strptime("04/22/2014 8:00", "%m/%d/%Y %H:%M"), user_tab: UserTab.second, value: 60, success_status: true},
            {payment_date: DateTime.strptime("04/20/2013 8:00", "%m/%d/%Y %H:%M"), user_tab: UserTab.third, value: 70, success_status: false},
            {payment_date: DateTime.strptime("04/21/2013 8:00", "%m/%d/%Y %H:%M"), user_tab: UserTab.third, value: 80, success_status: false},
            {payment_date: DateTime.strptime("04/22/2013 8:00", "%m/%d/%Y %H:%M"), user_tab: UserTab.third, value: 90, success_status: false}]

payments.each { |payment| Payment.create!(payment_date: payment[:payment_date], user_tab: payment[:user_tab], value: payment[:value], success_status: payment[:success_status]) }

