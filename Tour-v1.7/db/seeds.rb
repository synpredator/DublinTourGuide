User.create!([
  {email: "test@test.com", encrypted_password: "$2a$10$TY.v.CyC83kQRICrN3KbJO6ZGgcQhxc5dBMbsnNhrdB5UdvdggZI6", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 34, current_sign_in_at: "2016-04-24 22:31:56", last_sign_in_at: "2016-04-24 22:07:02", current_sign_in_ip: "89.101.22.249", last_sign_in_ip: "89.101.22.249", admin: true, first_name: "Keith", last_name: "Holt", date_of_birth: "1992-02-17 00:00:00", home_phone: "+35340231621", mobile_phone: "+353862717729", address: "64 Avalon", city: "Arklow", country: "Ireland", zipcode: "none"},
  {email: "keith@test.com", encrypted_password: "$2a$10$OYcVWfx3MKnoGBYjijnUJeaf.EqPIWF2nSw1EOn0Qf1c0olcvI51a", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 19, current_sign_in_at: "2016-04-24 22:01:38", last_sign_in_at: "2016-04-24 14:38:06", current_sign_in_ip: "89.101.22.249", last_sign_in_ip: "51.171.125.161", admin: false, first_name: "Keith", last_name: "Holt", date_of_birth: "1875-02-20 00:00:00", home_phone: "+353862717729", mobile_phone: "+353862717729", address: "64 Avalon", city: "Arklow", country: "Ireland", zipcode: "none"},
  {email: "john@test.com", encrypted_password: "$2a$10$46hSVi9LCEXlh7WDbRH16OpF9TA2bwvQTnMSC4i3ksSQ3X8v8xK6m", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 5, current_sign_in_at: "2016-04-20 13:00:32", last_sign_in_at: "2016-04-19 21:30:50", current_sign_in_ip: "89.101.22.249", last_sign_in_ip: "89.101.22.249", admin: false, first_name: "John", last_name: "Snow", date_of_birth: "1992-12-02 00:00:00", home_phone: "040231621", mobile_phone: "0862864454", address: "NCI Accom", city: "Dublin", country: "Dublin", zipcode: "Dublin1"},
  {email: "johnc@wwe.com", encrypted_password: "$2a$10$dsC9W0GdBJoaO2XnGW/TP.gr2lYls9mpvdUVcWa48EW0/wDmPknr.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-04-24 13:27:16", last_sign_in_at: "2016-04-24 13:27:16", current_sign_in_ip: "178.167.141.232", last_sign_in_ip: "178.167.141.232", admin: false, first_name: "John", last_name: "Cena", date_of_birth: "1967-03-29 00:00:00", home_phone: "07491654321", mobile_phone: "0851821234", address: "JackSon", city: "Arizon", country: "America", zipcode: "Eire"}
])
Booking.create!([
  {tour_id: 9, tour_time_id: 57, user_id: 2},
  {tour_id: 8, tour_time_id: 68, user_id: 1},
  {tour_id: 7, tour_time_id: 85, user_id: 1}
])
Passenger.create!([
  {first_name: "Keith", last_name: "Holt", email: "keith123@hotmail.com", dob: "1992-02-17 00:00:00"},
  {first_name: "Keith", last_name: "Holt", email: "keith123@hotmail.com", dob: "1992-02-17 00:00:00"},
  {first_name: "Keith", last_name: "Holt", email: "exaaa@aaa.com", dob: "1992-02-17 00:00:00"},
  {first_name: "Keith", last_name: "Holt", email: "example@teeest.com", dob: "2016-04-13 00:00:00"},
  {first_name: "Keith", last_name: "Holt", email: "example@teeest.com", dob: "2016-04-14 00:00:00"},
  {first_name: "Keith", last_name: "Holt", email: "example@teeest.com", dob: "1992-02-17 00:00:00"},
  {first_name: "Keith", last_name: "Holt", email: "example@teeest.com", dob: "1992-02-17 00:00:00"},
  {first_name: "thomas", last_name: "boyle", email: "thomas@email.com", dob: "2005-04-01 00:00:00"},
  {first_name: "Yoyo1", last_name: "mcGee", email: "mcGee1@gmail.com", dob: "1967-03-29 00:00:00"},
  {first_name: "Yoyo2", last_name: "mcGee", email: "mcGee2@gmail.com", dob: "1967-03-29 00:00:00"},
  {first_name: "Yoyo3", last_name: "mcGee", email: "mcGee3@gmail.com", dob: "1967-03-29 00:00:00"},
  {first_name: "Keith", last_name: "Holt", email: "keith@student.ncirl.ie", dob: "1992-02-17 00:00:00"},
  {first_name: "keith", last_name: "holt", email: "keith@student.ncirl.ie", dob: "1992-02-17 00:00:00"},
  {first_name: "keith", last_name: "holt", email: "keiththolt@hotmail.com", dob: "1992-02-17 00:00:00"},
  {first_name: "Keith", last_name: "Holt", email: "keiththolt@hotmail.com", dob: "1992-02-17 00:00:00"},
  {first_name: "John", last_name: "Snow", email: "JohnSnow@test.com", dob: "1992-02-17 00:00:00"},
  {first_name: "Keith", last_name: "Holt", email: "keith@test.com", dob: "1992-02-17 00:00:00"},
  {first_name: "John", last_name: "Snow", email: "johnsnow@test.com", dob: "1992-12-02 00:00:00"}
])
Review.create!([
  {rating: 5, comment: "Great place, filled with history, Would recommend", user_id: 1, tour_id: 9},
  {rating: 2, comment: "Was an ok experience, bit boring", user_id: 2, tour_id: 9},
  {rating: 5, comment: "Fantastic and exciting place, great history with and a very detailed tour about the process behind every pint, and the history of the company itself, Would recommend", user_id: 2, tour_id: 6},
  {rating: 5, comment: "Great day out, loads of history here.", user_id: 3, tour_id: 9}
])
Tour.create!([
  {title: "Guinness Storehouse", description: "Located in the heart of the St James’s Gate Brewery is the Guinness Storehouse. Home to the black stuff since 1759, this massive seven-storey building, a former Guinness® fermentation plant, has been remodelled into the shape of a giant pint of Guinness®. A visit will teach you everything you ever wanted to know about this world famous beer. The highlight for many visitors is the Gravity Bar® where they receive a complimentary pint of Guinness® and a chance to relax and enjoy the breathtaking 360-degree views across Dublin City.", location: "Dublin", cost: "19.989999999999998436805981327779591084", image_file_name: "Guinness-Storehouse-24755.jpg", image_content_type: "image/jpeg", image_file_size: 185794, image_updated_at: "2016-04-10 00:51:31", tour_id: nil},
  {title: "Dublin Zoo", description: "See many rare and exotic animals living and roaming in a wide variety of natural habitats at Dublin Zoo. Wander through the African Savannah and gaze at the giraffes, zebras, scimitar oryx and ostrich, then head to the Kaziranga Forest to see the magnificent herd of Asian elephants that call this beautiful place home. Dublin Zoo, located in the Phoenix Park in the heart of Dublin City, allows you to discover amazing animals that include tigers, hippos, bats, rare monkeys, gorillas, chimpanzees, red pandas and reptiles, to name but a few!", location: "Dublin", cost: "17.989999999999998436805981327779591084", image_file_name: "dublin-zoo-trolls.jpg", image_content_type: "image/jpeg", image_file_size: 33110, image_updated_at: "2016-04-10 00:55:26", tour_id: nil},
  {title: "National Aquatic Centre", description: "AquaZone, at the National Aquatic Centre, is one of the most innovative water parks in Europe. A whole host of exciting features ensures that there is lots of family fun, thrills and something for everyone. If you crave extreme thrills, raging water adventures, flying through the air, or just an enjoyable family day out in Dublin, AquaZone at the National Aquatic Centre has Europe's biggest and best water rides and attractions waiting for you!", location: "Dublin", cost: "15.990000000000000213162820728030055761", image_file_name: "01_08150249_a9c754_2406534a.jpg", image_content_type: "image/jpeg", image_file_size: 372419, image_updated_at: "2016-04-10 00:58:02", tour_id: nil},
  {title: "Trinity College", description: "Supremely located in the heart of Dublin, Trinity College stands as the gem of Ireland. Ranked as the number one university in the nation and in the top forty globally, Trinity College has a stellar academic reputation in addition to being one of Dublin's finest landmarks.\r\n\r\nEstablished in 1592, the college has been at its current location since the 1700s and boasts some beautiful Georgian architecture from that time. The Campanile and Examination Hall are commonly the subjects of photographs. The Old Library is popular amongst visitors as well, but it is not the look of the building's exterior that draws them there. Held within the Old Library is the world famous Book of Kells, an ancient sacred text, which is on display in a special exhibit.\r\n\r\nWhile Trinity College is deeply rooted in its history, much has changed since the institution first opened its doors over 400 years ago. Founded by Queen Elizabeth I of England, the college was originally only open to Protestant men. In 1793, Catholics were admitted, however it wasn't until 1970 that the Catholic Church stopped threatening its members with excommunication if they attended. Women were admitted beginning in 1904 and today the college is comprised of a diverse student body of all faiths, genders, and nationalities.", location: "Dublin", cost: "8.490000000000000213162820728030055761", image_file_name: "bell-tower-trinity-college-photo_1387183-770tall.jpg", image_content_type: "image/jpeg", image_file_size: 67365, image_updated_at: "2016-04-10 00:58:38", tour_id: nil}
])
TourTime.create!([
  {tour_id: 9, duration: 1, departure_date: "2016-04-26 10:10:00"},
  {tour_id: 9, duration: 1, departure_date: "2016-04-26 12:30:00"},
  {tour_id: 9, duration: 1, departure_date: "2016-04-26 14:30:00"},
  {tour_id: 9, duration: 1, departure_date: "2016-04-27 10:10:00"},
  {tour_id: 9, duration: 1, departure_date: "2016-04-27 12:30:00"},
  {tour_id: 9, duration: 1, departure_date: "2016-04-27 14:30:00"},
  {tour_id: 9, duration: 1, departure_date: "2016-05-18 10:10:00"},
  {tour_id: 9, duration: 1, departure_date: "2016-05-18 12:30:00"},
  {tour_id: 9, duration: 1, departure_date: "2016-05-18 14:30:00"},
  {tour_id: 9, duration: 1, departure_date: "2016-05-21 10:10:00"},
  {tour_id: 9, duration: 1, departure_date: "2016-05-21 12:30:00"},
  {tour_id: 9, duration: 1, departure_date: "2016-05-21 14:30:00"},
  {tour_id: 8, duration: 2, departure_date: "2016-04-26 10:10:00"},
  {tour_id: 8, duration: 2, departure_date: "2016-04-26 12:30:00"},
  {tour_id: 8, duration: 2, departure_date: "2016-04-26 14:30:00"},
  {tour_id: 8, duration: 2, departure_date: "2016-04-27 10:10:00"},
  {tour_id: 8, duration: 2, departure_date: "2016-04-27 12:30:00"},
  {tour_id: 8, duration: 2, departure_date: "2016-05-18 10:10:00"},
  {tour_id: 8, duration: 2, departure_date: "2016-05-18 14:30:00"},
  {tour_id: 8, duration: 2, departure_date: "2016-05-21 10:10:00"},
  {tour_id: 8, duration: 2, departure_date: "2016-05-21 12:30:00"},
  {tour_id: 8, duration: 2, departure_date: "2016-05-21 14:30:00"},
  {tour_id: 7, duration: 4, departure_date: "2016-04-26 10:10:00"},
  {tour_id: 7, duration: 4, departure_date: "2016-04-26 12:30:00"},
  {tour_id: 7, duration: 4, departure_date: "2016-04-26 14:30:00"},
  {tour_id: 7, duration: 4, departure_date: "2016-04-27 10:10:00"},
  {tour_id: 7, duration: 4, departure_date: "2016-04-27 12:30:00"},
  {tour_id: 7, duration: 4, departure_date: "2016-05-18 10:10:00"},
  {tour_id: 7, duration: 4, departure_date: "2016-05-18 14:30:00"},
  {tour_id: 7, duration: 4, departure_date: "2016-05-21 12:30:00"},
  {tour_id: 7, duration: 4, departure_date: "2016-05-21 14:30:00"},
  {tour_id: 6, duration: 3, departure_date: "2016-04-26 10:10:00"},
  {tour_id: 6, duration: 3, departure_date: "2016-04-26 12:30:00"},
  {tour_id: 6, duration: 3, departure_date: "2016-04-26 14:30:00"},
  {tour_id: 6, duration: 3, departure_date: "2016-04-27 10:10:00"},
  {tour_id: 6, duration: 3, departure_date: "2016-04-27 12:30:00"},
  {tour_id: 6, duration: 3, departure_date: "2016-04-27 14:30:00"},
  {tour_id: 6, duration: 3, departure_date: "2016-05-18 10:10:00"},
  {tour_id: 6, duration: 3, departure_date: "2016-05-18 12:30:00"},
  {tour_id: 6, duration: 3, departure_date: "2016-05-18 14:30:00"},
  {tour_id: 6, duration: 3, departure_date: "2016-05-21 10:10:00"},
  {tour_id: 6, duration: 3, departure_date: "2016-05-21 12:30:00"},
  {tour_id: 6, duration: 3, departure_date: "2016-05-21 14:30:00"}
])
UserBooking.create!([
  {booking_id: 23, passenger_id: 15},
  {booking_id: 24, passenger_id: 16},
  {booking_id: 25, passenger_id: 17},
  {booking_id: 25, passenger_id: 18}
])
