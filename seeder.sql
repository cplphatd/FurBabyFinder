

INSERT INTO users (username, email, password, first_name, last_name, street_add1, street_add2, city, state, zip, main_phone, alt_phone, id)
VALUES
  ("frenchfryes", "dave@mail.com", "codeup", "Bill", "Smith", "13249 Washita Way", "", "San Antonio", "Texas", "47401",
                  "2104947321", "", "", "", 1),
  ("wannapup", "tom@mail.com", "codeup", "Bob", "Skylar", "13242 Apache Way", "", "San Antonio", "Texas", "47403",
               "2104437321", "", "", "", 2),
("sarahisdabomb", "sarah@mail.com", "codeup", "Sarah", "Heisenberg", "132 Blue Way", "", "San Antonio", "Texas", "47405",
                                                                                     "2106637321", "", "", "", 3),
("mellibelly", "melanie@mail.com", "codeup", "Melanie", "Tucon", "43249 Yahoo Way", "", "San Antonio", "Texas", "47401",
                                                                                 "2914947321", "", "", "", 4);

INSERT INTO pets (ID, name, story, age, private_notes, ready_to_adopt, species)
VALUES (1, "Bentley", "In west Philadelphia born and raised On the playground was where I spent most of my days. ", 3, "Just an all around awesome pup", TRUE, "Dog"),
  (2, "Tiny", "He was found by a priest abandoned and chained to a pole in the backyard", 2, "He snorts like a pig", TRUE, "Dog"),
  (3, "Major", "Found in an abandoned home. He has a big heart and a big smile.", 2, "He likes tennis balls", TRUE,"Dog"),
  (4, "Susie", "She was found in a box outside our office", 1, "She likes to pet you back", TRUE, "Cat"),
  (5, "Henry", "He was found at the ege of a cliff.", 4, "He likes to race against horses", TRUE , "Donkey"),
  (6, "Ms. Cuddlesworth", "She was found in an alley in a box outside of McDonals", 2, "She loves to cuddle", TRUE, "Cat"),
  (7, "Dempsey", "He was won at a biker rally but was not wanted.", 1, "He will verbally communicate", TRUE , "Dog"),
  (8, "TimmyD", "He is a retired circus animal.", 12, "He can jump thru a flaming hula hoop.", TRUE , "Tiger"),
  (9, "Barney", "Former TV star turned homeless looking for his furrever home.", 10, "He loves you", TRUE, "Dinosaur"),
  (10, "Tommy Boy", "Considered the black sheep of his family he was ostracized.", 2, "He means well", TRUE, "Sheep");

INSERT INTO user_roles (id, role) VALUES (1, "adopter"),
  (2, "foster"),
  (3, "admin");

INSERT INTO user_favorites (user, pet_id) VALUES (1,2),
  (1,3),
  (1,7),
  (1,8),
  (2,6),
  (2,9),
  (3,2),
  (3,8);

INSERT INTO filters(id, filter_name) VALUES (1,"great_with_kids"),
  (2, "neutered_spayed"),
  (3, "potty_trained"),
  (4, "female"),
  (5, "male"),
  (6, "crate_trained"),
  (7, "great_with_dogs"),
  (8, "cat_friendly"),
  (9, "medical_foster"),
  (10, "microchipped"),
  (11, "not_cat_friendly"),
  (12, "under_year");

INSERT INTO filter_pets(pet_id, filter_id) VALUES (5,5),
  (5, 7),
  (5, 8),
  (5, 10),
  (1, 1),
  (1, 2),
  (1, 3),
  (1, 5),
  (1, 6),
  (1, 7),
  (1, 10),
  (2, 2),
  (2, 3),
  (2, 5),
  (2, 6),
  (2, 7),
  (2, 10),
  (3, 1),
  (3, 2),
  (3, 3),
  (3, 5),
  (3, 6),
  (3, 7),
  (3, 10),
  (4, 1),
  (4, 2),
  (4, 3),
  (4, 4),
  (4, 8),
  (4, 10),
  (6, 1),
  (6, 2),
  (6, 3),
  (6, 4),
  (6, 8),
  (6, 10),
  (7, 2),
  (7, 3),
  (7, 5),
  (7, 6),
  (7, 10),
  (8, 5),
  (8, 6),
  (9, 1),
  (9, 3),
  (9, 5),
  (9, 7),
  (9, 8),
  (10, 1),
  (10, 5),
  (10, 7),
  (10, 8),
  (10, 10);

INSERT INTO pet_images(image_description, image_url, after_adoption, profile_pic) VALUES ( "Bentley Profile Photo", "bentley.jpg", TRUE),
  ( "Tiny Profile Photo", "tiny.jpeg", FALSE, TRUE),
  ( "Major Profile Photo", "major.jpg", FALSE, TRUE),
  ( "Susie Profile Phoeo", "susie.jpg", FALSE, TRUE),
  ( "Henry Profile Photo", "henry.jpeg", FALSE, TRUE),
  ( "Ms. Cuddlesworth Profile Photo", "msc.jpg", FALSE, TRUE),
  ( "Dempsey Profile Phoeo", "dempsey.jpg", FALSE, TRUE),
  ( "TimmyD Profile Photo", "timmyd.jpg", FALSE, TRUE),
  ("Barney Profile Photo", "barney.jpg", FALSE, TRUE),
  ( "Tommy Boy Profile Phoeo", "tommy.jpeg", FALSE, TRUE);

INSERT INTO pet_to_image(pet_id, id) VALUES (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5),
  (6, 6),
  (7, 7),
  (8, 8),
  (9, 9),
  (10, 10);

INSERT INTO events(id, city1, event_desc, image_loc, link, state1, street1, street2, title, zip1, owner_id, date) VALUES
  (1, "San Antonio" , "We are so excited for you to join us this Saturday at Petsmart." , "map-placeholder.jpg" , "http://facebook.com" , "Texas" , "123 Codeup Way" , "Suite 350" , "Adoption Event" , "78249" , 3, "07/15/17");
(2, "San Antonio" , "" , "map-placeholder.jpg" , "http://facebook.com" , "Texas" , "120 Codeup Way" , "Suite 300" , "Adoption Event" , "78229" , 3, "07/20/17");




