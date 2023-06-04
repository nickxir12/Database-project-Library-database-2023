/*INSERT SCHOOLS*/
INSERT INTO School (school_name, school_address, city, school_phone_number, school_email, school_principal)
VALUES ('Senior Highschool of Amfissa', 'Leof. Kon/nou Karamanli 1', 'Amfissa 331 00', '2265028475', 'amfissaschool@gmail.com', 'Epaminontas Geoergiou');

INSERT INTO School (school_name, school_address, city, school_phone_number, school_email, school_principal)
VALUES ('2nd Senior Highschool of Igoumenitsa', 'Pindarou 7', 'Igoumenitsa 461 00', '2231074923', 'igoumenitsaschool@gmail.com', 'Georgios Papadopoulos');

INSERT INTO School (school_name, school_address, city, school_phone_number, school_email, school_principal)
VALUES ('GEORGIOU ZOIS EDUCATIONAL High School', 'Averof 12-14', 'Argiroupoli 164 51', '2109617817', 'zoisschool@gmail.com', 'Panagiotis Zois');

INSERT INTO School (school_name, school_address, city, school_phone_number, school_email, school_principal)
VALUES ('8th Junior-Senior Highschool of Chalandri', '28is Oktovriou & Agias Foteinis', 'Chalandri 152 38', '2106006614', 'chalandrischool@gmail.com', 'Konstantinos Kolliaros');

/*INSERT USERS*/
INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('62-810-5499', 'GEORGIOU ZOIS EDUCATIONAL High School', 'John', 'Deer', 'pmyford0', 'NK3DBYUPeg', 'school_lib_operator', true, 0, 0, 0, '1970-07-29', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('82-897-8319', '2nd Senior Highschool of Igoumenitsa', 'John', 'Challenger', 'dchallenger1', '9MhN9xDR', 'teacher', true, 0, 0, 0, '1985-04-26', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('39-339-9356', '2nd Senior Highschool of Igoumenitsa', 'Melissa', 'Elner', 'melner2', 'EEnqbbMdXXN', 'school_lib_operator', true, 0, 0, 0, '1965-06-24', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('62-811-4841', '8th Junior-Senior Highschool of Chalandri', 'Christopher', 'Gobeau', 'cgobeau3', 'mpo4YzuiT', 'school_lib_operator', true, 0, 0, 0, '1976-11-17', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('86-175-5092', 'Senior Highschool of Amfissa', 'Peter', 'Wyllt', 'pwyllt4', 'rBAa3L45nE', 'student', true, 0, 0, 0, '2007-05-23', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('89-847-1479', '8th Junior-Senior Highschool of Chalandri', 'Tom', 'Bernardo', 'tbernardo5', '6YvKVDjr', 'student', true, 0, 0, 0, '2008-11-29', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('98-536-3194', '8th Junior-Senior Highschool of Chalandri', 'Taylor', 'Lidster', 'tlidster6', 'cwYtv8GXrK', 'student', true, 0, 0, 0, '2010-12-25', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('11-528-4906', 'GEORGIOU ZOIS EDUCATIONAL High School', 'Anna', 'McPake', 'amcpake7', 'bW42EvD9G', 'student', true, 0, 0, 0, '2009-08-16', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('71-145-7153', 'GEORGIOU ZOIS EDUCATIONAL High School', 'George', 'Gauthorpp', 'ggauthorpp8', 'gPb4COlU8De', 'student', true, 0, 0, 0, '2006-11-25', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('15-483-9550', 'GEORGIOU ZOIS EDUCATIONAL High School', 'David', 'McKibbin', 'dmckibbin9', 'oKMcXL6Bz', 'student', true, 0, 0, 0, '2009-07-17', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('78-244-3530', '2nd Senior Highschool of Igoumenitsa', 'Jane', 'Bramalla', 'jbramalla', '0fuLri', 'student', true, 0, 0, 0, '2010-04-13', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('67-363-5538', 'Senior Highschool of Amfissa', 'Katherine', 'Streatfeild', 'kstreatfeildb', '4y6oaJ', 'school_lib_operator', true, 0, 0, 0, '1963-06-22', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('55-105-2218', 'Senior Highschool of Amfissa', 'Emily', 'Chezelle', 'echezellec', 'tNmrgRE', 'student', true, 0, 0, 0, '2007-09-27', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('54-435-9088', 'Senior Highschool of Amfissa', 'Lucas', 'Mattingley', 'lmattingleyd', 'e6XiZV', 'student', true, 0, 0, 0, '2010-09-03', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('76-818-4872', '8th Junior-Senior Highschool of Chalandri', 'Rebecca', 'Gartside', 'rgartsidee', 'Gbwx6xh7uD7z', 'student', true, 0, 0, 0, '2006-05-19', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('14-803-9953', '8th Junior-Senior Highschool of Chalandri', 'Nancy', 'Brokenbrow', 'nbrokenbrowf', 'rNF0vXg92q0m', 'teacher', true, 0, 0, 0, '1989-07-23', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('06-589-4622', 'Senior Highschool of Amfissa', 'Cassandra', 'Zanneli', 'czannelig', 'Nije7uPh', 'student', true, 0, 0, 0, '2007-06-06', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('42-400-7994', 'Senior Highschool of Amfissa', 'Joshua', 'Huckerby', 'jhuckerbyh', 'bdYyO9', 'student', true, 0, 0, 0, '2008-08-12', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('60-184-0005', 'GEORGIOU ZOIS EDUCATIONAL High School', 'John', 'Doe', 'ymogfordi', 'Gp6wGErFb', 'student', true, 0, 0, 0, '2011-12-12', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('39-034-7626', 'Senior Highschool of Amfissa', 'Jane', 'Smith', 'ejennionsj', '8SPhbPPeGhE', 'teacher', true, 0, 0, 0, '1972-05-11', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('92-106-3854', '8th Junior-Senior Highschool of Chalandri', 'Michael', 'Johnson', 'acapounk', '5FatVEbL72', 'student', true, 0, 0, 0, '2007-10-07', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('90-550-9411', '8th Junior-Senior Highschool of Chalandri', 'Emily', 'Davis', 'drodbournel', 'Ir6KIBgY5a0', 'student', true, 0, 0, 0, '2008-06-24', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('47-462-8756', 'Senior Highschool of Amfissa', 'David', 'Brown', 'swelbeckm', 'HkQEs2N2', 'teacher', true, 0, 0, 0, '1988-05-27', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('91-232-4414', 'GEORGIOU ZOIS EDUCATIONAL High School', 'Charles', 'Berndt', 'cberndtn', 'UaEiF1gySXJR', 'student', true, 0, 0, 0, '2010-04-30', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('69-093-4272', '2nd Senior Highschool of Igoumenitsa', 'Matthew', 'Chesono', 'machesono', 'Rhf4OA', 'student', true, 0, 0, 0, '2007-12-02', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('71-268-0650', '2nd Senior Highschool of Igoumenitsa', 'Christine', 'Musselwhite', 'cmusselwhitep', 'oNyy1jK', 'teacher', true, 0, 0, 0, '1963-02-12', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('98-051-5956', 'Senior Highschool of Amfissa', 'Mark', 'Lysaght', 'mlysaghtq', 'FEcCtPQd', 'student', true, 0, 0, 0, '2008-01-29', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('50-757-8865', 'Senior Highschool of Amfissa', 'Kate', 'Checchetelli', 'kchecchetellir', 'sKw8BBR', 'teacher', true, 0, 0, 0, '1989-07-07', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('20-739-5216', '8th Junior-Senior Highschool of Chalandri', 'Margaret', 'Metheringham', 'mmetheringhams', 'IZe1uwf0Iz', 'teacher', true, 0, 0, 0, '1959-08-03', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('82-399-5943', '8th Junior-Senior Highschool of Chalandri', 'Thomas', 'Trevance', 'ttrevancet', 'Hrlfb61pZs', 'student', true, 0, 0, 0, '2011-05-06', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('94-325-4966', 'GEORGIOU ZOIS EDUCATIONAL High School', 'Mary', 'Stranger', 'mstrangeru', 'rUBgp4il', 'teacher', true, 0, 0, 0, '1991-11-06', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('00-833-5189', '2nd Senior Highschool of Igoumenitsa', 'Lucas', 'Tesimon', 'ltesimonv', 'VRIBmynF3', 'student', true, 0, 0, 0, '2005-01-27', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('05-215-3486', 'Senior Highschool of Amfissa', 'Victoria', 'Westwell', 'vwestwellw', 'b64bbUoRs', 'student', true, 0, 0, 0, '2009-11-06', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('77-585-7810', '2nd Senior Highschool of Igoumenitsa', 'Daniel', 'Bartosik', 'dbartosikx', 'Xji0breO7Er', 'student', true, 0, 0, 0, '2005-08-11', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('22-522-1653', '8th Junior-Senior Highschool of Chalandri', 'Jessica', 'Kimberley', 'jkimberleyy', 'AYTlgLFKRl2X', 'student', true, 0, 0, 0, '2006-08-15', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('78-113-7638', '8th Junior-Senior Highschool of Chalandri', 'Frank', 'Altiz', 'faltiz', 'Hk6KrZHZ51mj', 'student', true, 0, 0, 0, '2011-12-20', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('63-206-1985', '8th Junior-Senior Highschool of Chalandri', 'Rachel', 'Parkman', 'rparkman10', 'JoIQxQWLzp', 'student', true, 0, 0, 0, '2005-06-11', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('49-356-6693', '2nd Senior Highschool of Igoumenitsa', 'Nathan', 'Borton', 'nborton11', 'INHWNJOzr', 'student', true, 0, 0, 0, '2010-09-17', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('36-585-3468', '2nd Senior Highschool of Igoumenitsa', 'Jack', 'Seabrooke', 'jseabrooke12', 'LftGsNpGwu2y', 'student', true, 0, 0, 0, '2008-03-29', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('80-811-5247', '8th Junior-Senior Highschool of Chalandri', 'Aaron', 'Anstead', 'aanstead13', 'L4Gsk9DhWH9P', 'student', true, 0, 0, 0, '2011-05-28', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('03-217-2689', '2nd Senior Highschool of Igoumenitsa', 'Kaitlyn', 'Wolstencroft', 'kwolstencroft14', 'aia1CYLGexF', 'student', true, 0, 0, 0, '2005-09-13', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('87-268-5701', '8th Junior-Senior Highschool of Chalandri', 'Harry', 'Blythin', 'hblythin15', 'obOxkEEmQ86', 'student', true, 0, 0, 0, '2011-02-01', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('25-107-9977', 'GEORGIOU ZOIS EDUCATIONAL High School', 'Megan', 'Brammer', 'mbrammer16', 'vWlv9Qn', 'student', true, 0, 0, 0, '2009-04-02', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('14-566-5720', 'GEORGIOU ZOIS EDUCATIONAL High School', 'David', 'Weatherup', 'dweatherup17', 'tlnzOBeZLYI', 'teacher', true, 0, 0, 0, '1975-07-27', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('07-163-3171', '2nd Senior Highschool of Igoumenitsa', 'Alex', 'Horburgh', 'ahorburgh18', 'HZiCf8qS', 'student', true, 0, 0, 0, '2005-12-14', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('93-561-7324', 'GEORGIOU ZOIS EDUCATIONAL High School', 'Alice', 'Fader', 'afader19', 'WSQYCcQ', 'student', true, 0, 0, 0, '2008-05-14', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('99-230-7151', 'Senior Highschool of Amfissa', 'Daniel', 'Grinsdale', 'dgrinsdale1a', 'GXShmvgf5Wr', 'student', true, 0, 0, 0, '2009-11-30', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('85-068-9147', '2nd Senior Highschool of Igoumenitsa', 'Claire', 'Worpole', 'cworpole1b', '2BHeObAabBV', 'student', true, 0, 0, 0, '2007-04-19', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('72-452-7841', 'Senior Highschool of Amfissa', 'Catherine', 'Climer', 'cclimer1c', 'T1plZL1XWA', 'student', true, 0, 0, 0, '2007-05-23', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('64-208-6128', 'Senior Highschool of Amfissa', 'Freya', 'Cozens', 'fcozens1d', 'JV743aW', 'student', true, 0, 0, 0, '2005-09-01', 1);

INSERT INTO User (user_id, school_name_FK, first_name, last_name, username, password, user_type, accepted_user, number_of_reserved_books, number_of_borrowed_books, total_num_of_borrowed_books, birth_date, active_user)
VALUES ('00-000-0000', '8th Junior-Senior Highschool of Chalandri', 'Elias', 'Kallioras', 'elias', 'k', 'student', true, 0, 0, 0, '2005-04-03', 1);

/*INSERT ADMIN*/
INSERT INTO Admin (admin_username, admin_password) VALUES ('admin', 'GFUjsd32');

/*INSERT BOOKS*/
INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-446-55620-9', 'To Kill a Mockingbird', 'Harper Perennial Modern Classics', 336, 'To Kill a Mockingbird is a novel by Harper Lee. It was published in 1960 and has since become a classic of modern American literature.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-1-4028-9462-6', 'The Great Gatsby', 'Scribner', 180, 'The Great Gatsby is a novel by F. Scott Fitzgerald that follows a cast of characters living in the fictional towns of West Egg and East Egg on prosperous Long Island in the summer of 1922.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-307-58958-2', '1984', 'Penguin Books', 328, '1984 is a dystopian novel by George Orwell that depicts a totalitarian regime where individuality and independent thinking are suppressed.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-553-21311-6', 'Brave New World', 'Harper Perennial Modern Classics', 311, 'Brave New World is a dystopian novel by Aldous Huxley that presents a vision of a future society where people are genetically engineered and socially conditioned to conform.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-545-01022-6', 'The Catcher in the Rye', 'Little, Brown and Company', 224, 'The Catcher in the Rye is a novel by J.D. Salinger that explores themes of teenage angst, alienation, and identity.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-679-60165-5', 'To the Lighthouse', 'Harvest Books', 209, 'To the Lighthouse is a novel by Virginia Woolf that follows the lives of the Ramsay family and their guests at their summer house in Scotland.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-553-58467-3', 'The Hobbit', 'Del Rey Books', 310, 'The Hobbit is a fantasy novel by J.R.R. Tolkien that follows the journey of Bilbo Baggins as he sets out on an adventure to reclaim a treasure guarded by a dragon.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-7432-4382-4', 'The Da Vinci Code', 'Anchor Books', 689, 'The Da Vinci Code is a mystery thriller novel by Dan Brown that follows symbologist Robert Langdon as he investigates a murder in the Louvre Museum.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-553-29141-7', 'The Alchemist', 'HarperOne', 197, 'The Alchemist is a novel by Paulo Coelho that follows the journey of a young Andalusian shepherd named Santiago as he seeks his personal legend.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-679-74581-5', 'Pride and Prejudice', 'Vintage Classics', 336, 'Pride and Prejudice is a novel by Jane Austen that explores themes', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-307-70145-1', 'The Lord of the Rings', 'Houghton Mifflin Harcourt', 1178, 'The Lord of the Rings is a fantasy novel by J.R.R. Tolkien that follows the quest of a group of characters to destroy the One Ring and defeat the Dark Lord Sauron.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-8129-7449-8', 'Harry Potter and the Sorcerer\'s Stone', 'Scholastic', 309, 'Harry Potter and the Sorcerer\'s Stone is the first book in the Harry Potter series by J.K. Rowling that introduces the magical world of Hogwarts School of Witchcraft and Wizardry.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-399-15534-3', 'The Great Alone', 'St. Martin\'s Press', 435, 'The Great Alone is a novel by Kristin Hannah that tells the story of a family living in the wilderness of Alaska and their struggle for survival and redemption.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-307-59331-0', 'Gone Girl', 'Broadway Books', 419, 'Gone Girl is a psychological thriller novel by Gillian Flynn that explores the marriage of Nick and Amy Dunne, whose relationship takes a dark turn after Amy goes missing.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-679-64402-6', 'The Kite Runner', 'Riverhead Books', 372, 'The Kite Runner is a novel by Khaled Hosseini that follows the story of Amir, a young boy from Afghanistan, and his journey to seek redemption for past mistakes.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-446-60169-0', 'The Martian', 'Broadway Books', 369, 'The Martian is a science fiction novel by Andy Weir that follows astronaut Mark Watney as he is stranded alone on Mars and must find a way to survive.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-312-41958-6', 'The Hunger Games', 'Scholastic', 374, 'The Hunger Games is a dystopian novel by Suzanne Collins that takes place in a future society where teenagers are forced to participate in a televised fight to the death.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-451-20722-5', 'Fahrenheit 451', 'Simon & Schuster', 249, 'Fahrenheit 451 is a dystopian novel by Ray Bradbury that portrays a future society where books are banned and burned to suppress independent thought and creativity.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-06-112006-0', 'The Catch-22', 'Simon & Schuster', 453, 'Catch-22 is a satirical novel by Joseph Heller that follows the experiences of a U.S. Army Air Forces B-25 bombardier during World War II.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-7869-4867-3', 'Harry Potter and the Chamber of Secrets', 'Bloomsbury Publishing', 341, 'Harry Potter and the Chamber of Secrets is the second book in the Harry Potter series by J.K. Rowling that continues the magical adventures of Harry Potter at Hogwarts School of Witchcraft and Wizardry.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-375-82775-7', 'Life of Pi', 'Knopf Canada', 348, 'Life of Pi is a fantasy adventure novel by Yann Martel that tells the story of Piscine Molitor Patel, a young Indian boy who survives a shipwreck and finds himself stranded on a lifeboat with a Bengal tiger.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-440-22371-5', 'The Color Purple', 'Harcourt Brace Jovanovich', 295, 'The Color Purple is a novel by Alice Walker that explores the lives of African-American women in the early 20th century and addresses themes of race, gender, and identity.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-385-49529-1', 'The Book Thief', 'Alfred A. Knopf', 552, 'The Book Thief is a historical fiction novel by Markus Zusak that tells the story of Liesel Meminger, a young girl living in Nazi Germany, and her relationship with books and storytelling.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-553-57340-3', 'A Game of Thrones', 'Bantam Books', 694, 'A Game of Thrones is the first book in the A Song of Ice and Fire series by George R.R. Martin that introduces the complex world of Westeros and the power struggles among noble families.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-316-12983-8', 'The Girl with the Dragon Tattoo', 'Knopf', 465, 'The Girl with the Dragon Tattoo is a psychological thriller novel by Stieg Larsson that follows journalist Mikael Blomkvist and hacker Lisbeth Salander as they investigate a decades-old disappearance.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-345-39680-1', 'The Shining', 'Anchor Books', 447, 'The Shining is a horror novel by Stephen King that tells the story of the Torrance family and their terrifying experiences at the isolated Overlook Hotel.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-06-089154-1', 'Ender\'s Game', 'Tor Books', 324, 'Ender\'s Game is a science fiction novel by Orson Scott Card that follows the story of Ender Wiggin, a gifted child who is trained in space warfare to save humanity from an alien threat.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-312-42757-3', 'The Fault in Our Stars', 'Dutton Books', 313, 'The Fault in Our Stars is a young adult novel by John Green that tells the story of Hazel Grace Lancaster, a teenage girl with cancer, and her journey of love and self-discovery.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-451-52888-5', 'Slaughterhouse-Five', 'Dell Publishing', 275, 'Slaughterhouse-Five is a satirical novel by Kurt Vonnegut that follows the life of Billy Pilgrim, a World War II soldier who becomes "unstuck in time" and experiences events out of chronological order.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-753-80484-5', 'The Girl on the Train', 'Riverhead Books', 336, 'The Girl on the Train is a psychological thriller novel by Paula Hawkins that revolves around the unreliable narrator Rachel Watson and her involvement in a missing person investigation.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-06-057749-4', 'The Road Less Traveled', 'Touchstone', 316, 'The Road Less Traveled is a self-help book by M. Scott Peck that explores the concept of personal growth and offers insights into psychology, love, and spiritual growth.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-14-200067-0', 'One Hundred Years of Solitude', 'Harper Perennial', 422, 'One Hundred Years of Solitude is a magical realist novel by Gabriel García Márquez that follows the Buendía family through multiple generations in the fictional town of Macondo.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-679-64259-6', 'The Picture of Dorian Gray', 'Vintage Classics', 254, 'The Picture of Dorian Gray is a novel by Oscar Wilde that tells the story of a young man named Dorian Gray, who remains eternally youthful while a portrait of him ages and reflects his moral decay.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-804-15825-5', 'The Chronicles of Narnia: The Lion, the Witch, and the Wardrobe', 'HarperCollins', 206, 'The Lion, the Witch, and the Wardrobe is the first book in The Chronicles of Narnia series by C.S. Lewis that tells the story of four children who enter a magical world through a wardrobe and become embroiled in a battle between good and evil.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-743-47759-0', 'The Secret Life of Bees', 'Penguin Books', 336, 'The Secret Life of Bees is a novel by Sue Monk Kidd that follows the journey of a young girl named Lily Owens as she seeks to uncover the truth about her mother\'s past and find solace in the company of beekeeping sisters.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-312-38047-3', 'The Help', 'Berkley Books', 451, 'The Help is a historical fiction novel by Kathryn Stockett that explores the lives of African-American maids working in white households in Jackson, Mississippi, during the early 1960s.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-679-77449-2', 'The Lovely Bones', 'Little, Brown and Company', 328, 'The Lovely Bones is a novel by Alice Sebold that tells the story of Susie Salmon, a 14-year-old girl who is murdered and watches over her family and friends from heaven.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-375-70643-7', 'The Curious Incident of the Dog in the Night-Time', 'Vintage Books', 226, 'The Curious Incident of the Dog in the Night-Time is a mystery novel by Mark Haddon that follows Christopher John Francis Boone, a 15-year-old boy with autism, as he investigates the death of his neighbor\'s dog.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-375-70522-5', 'The Help', 'Alfred A. Knopf', 608, 'The Help is a historical fiction novel by Kathryn Stockett that explores the lives of African-American maids working in white households in Jackson, Mississippi, during the early 1960s.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-312-32684-7', 'Water for Elephants', 'Algonquin Books', 335, 'Water for Elephants is a novel by Sara Gruen that follows the story of Jacob Jankowski, a young veterinary student who joins a traveling circus during the Great Depression.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-743-28292-1', 'The Alchemist', 'HarperOne', 197, 'The Alchemist is a novel by Paulo Coelho that follows the journey of Santiago, a young Andalusian shepherd boy, as he seeks his personal legend and discovers the importance of following one\'s dreams.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-316-34809-2', 'Educated: A Memoir', 'Random House', 334, 'Educated: A Memoir is a memoir by Tara Westover that recounts her upbringing in a strict and abusive household in rural Idaho and her journey to escape her isolated upbringing and pursue education.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-316-03623-0', 'The Nightingale', 'St. Martin\'s Press', 440, 'The Nightingale is a historical fiction novel by Kristin Hannah that tells the story of two sisters living in German-occupied France during World War II and their roles in the French Resistance.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-618-00197-5', 'The Giver', 'Houghton Mifflin', 240, 'The Giver is a dystopian novel by Lois Lowry that follows Jonas, a young boy living in a seemingly utopian society, as he discovers the dark and controlling truths behind his community.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-451-47525-1', 'The Handmaid\'s Tale', 'Anchor Books', 311, 'The Handmaid\'s Tale is a dystopian novel by Margaret Atwood that portrays a totalitarian society in which women are subjected to strict control and used for reproductive purposes.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-345-49678-6', '1984', 'Signet Classics', 328, '1984 is a dystopian novel by George Orwell that depicts a totalitarian regime ruled by Big Brother, where individualism is suppressed, and surveillance and thought control are omnipresent.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-375-70599-7', 'A Thousand Splendid Suns', 'Riverhead Books', 372, 'A Thousand Splendid Suns is a novel by Khaled Hosseini that follows the lives of two Afghan women, Mariam and Laila, as they endure hardships and form a deep bond in war-torn Afghanistan.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-743-27103-5', 'The Time Traveler\'s Wife', 'Harvest Books', 536, 'The Time Traveler\'s Wife is a romantic science fiction novel by Audrey Niffenegger that tells the story of Henry, a time traveler, and Clare, his wife, as they navigate the challenges and paradoxes of their unconventional relationship.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-525-49252-6', 'The Catcher in the Rye', 'Little, Brown and Company', 277, 'The Catcher in the Rye is a novel by J.D. Salinger that follows the journey of Holden Caulfield, a disillusioned teenager navigating the complexities of adolescence and society.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-679-64209-6', 'The Picture of Dorian Gray', 'Vintage Classics', 254, 'The Picture of Dorian Gray is a novel by Oscar Wilde that tells the story of a young man named Dorian Gray, who remains eternally youthful while a portrait of him ages and reflects his moral decay.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-553-21321-6', 'The Count of Monte Cristo', 'Bantam Classics', 1276, 'The Count of Monte Cristo is an adventure novel by Alexandre Dumas that follows the story of Edmond Dantès, a man who seeks revenge against those who wronged him and reclaim his lost identity.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-671-74251-0', 'Lord of the Flies', 'Perigee Books', 224, 'Lord of the Flies is a novel by William Golding that depicts the descent into savagery of a group of young boys stranded on an uninhabited island.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-553-23261-6', 'The Odyssey', 'Bantam Classics', 541, 'The Odyssey is an epic poem attributed to Homer that tells the story of Odysseus, the Greek hero, and his arduous journey home after the Trojan War.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-380-72703-8', 'Gone with the Wind', 'Pocket Books', 1037, 'Gone with the Wind is a historical novel by Margaret Mitchell that follows the life of Scarlett O\'Hara during the American Civil War and Reconstruction era.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-345-80324-2', 'A Wrinkle in Time', 'Laurel Leaf', 245, 'A Wrinkle in Time is a science fantasy novel by Madeleine L\'Engle that follows the journey of Meg Murry, her brother Charles Wallace, and their friend Calvin O\'Keefe as they travel through space and time to rescue Meg\'s father.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-553-21312-3', '1984', 'Signet Classics', 328, '1984 is a dystopian novel by George Orwell that depicts a totalitarian society controlled by Big Brother, exploring themes of surveillance, government oppression, and the power of language.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-330-25864-8', 'Animal Farm', 'Penguin Classics', 122, 'Animal Farm is a novella by George Orwell that uses allegory to portray the Russian Revolution and subsequent Stalinist era, highlighting themes of corruption, power, and the dangers of totalitarianism.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-1-4088-5567-0', 'The Alchemist', 'HarperOne', 197, 'The Alchemist is a philosophical novel by Paulo Coelho that follows the journey of a young Andalusian shepherd named Santiago as he searches for his personal legend and learns valuable lessons about life, destiny, and the pursuit of dreams.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-452-01141-5', 'The Little Prince', 'Mariner Books', 96, 'The Little Prince is a novella by Antoine de Saint-Exupéry that tells the story of a young prince who visits different planets, imparting wisdom and philosophical insights about love, friendship, and the importance of seeing with the heart.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-141-18719-2', 'The Picture of Dorian Gray', 'Penguin Classics', 272, 'The Picture of Dorian Gray is a novel by Oscar Wilde that tells the story of a young man named Dorian Gray, who remains eternally youthful while a portrait of him ages and reflects his moral decay.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-307-74355-0', 'The Power of Now', 'New World Library', 236, 'The Power of Now is a spiritual guidebook by Eckhart Tolle that explores the concept of mindfulness and the importance of living in the present moment to achieve peace, happiness, and spiritual enlightenment.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-06-112008-4', 'To Kill a Mockingbird', 'HarperCollins Publishers', 324, 'To Kill a Mockingbird is a novel by Harper Lee that explores themes of racial injustice and moral development through the eyes of Scout Finch, a young girl growing up in the segregated South.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-307-27884-8', 'Brave New World', 'Harper Perennial Modern Classics', 288, 'Brave New World is a dystopian novel by Aldous Huxley that presents a futuristic society where people are genetically engineered and conditioned for a predetermined social hierarchy, exploring themes of conformity, individuality, and the dangers of a utopian vision.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-679-72315-7', 'Pride and Prejudice', 'Everyman\'s Library', 320, 'Pride and Prejudice is a novel by Jane Austen that follows the story of Elizabeth Bennet and her complicated relationship with the wealthy Mr. Darcy, exploring themes of social class, love, and the importance of overcoming prejudice.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-440-22331-9', 'The Great Gatsby', 'Scribner', 180, 'The Great Gatsby is a novel by F. Scott Fitzgerald that portrays the decadence and disillusionment of the Jazz Age, focusing on the enigmatic millionaire Jay Gatsby and his obsession with the beautiful Daisy Buchanan.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-446-60229-8', 'The Hobbit', 'Houghton Mifflin Harcourt', 310, 'The Hobbit is a fantasy novel by J.R.R. Tolkien that follows the adventures of Bilbo Baggins, a hobbit who embarks on a quest to reclaim the dwarf kingdom of Erebor from the dragon Smaug.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-345-80220-7', 'The Kite Runner', 'Riverhead Books', 371, 'The Kite Runner is a novel by Khaled Hosseini that tells the story of Amir, a young boy from Kabul, and his journey of redemption, friendship, and the devastating effects of betrayal set against the backdrop of Afghanistan\'s tumultuous history.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-1-4391-5864-9', 'The Hunger Games', 'Scholastic Press', 374, 'The Hunger Games is a dystopian novel by Suzanne Collins that takes place in a post-apocalyptic society where teenagers from different districts are forced to participate in a televised fight to the death, exploring themes of survival, sacrifice, and rebellion.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-679-64359-6', 'The Catcher in the Rye', 'Little, Brown and Company', 277, 'The Catcher in the Rye is a novel by J.D. Salinger that follows the journey of Holden Caulfield, a disillusioned teenager navigating the complexities of adolescence and society.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-440-32085-2', 'The Fault in Our Stars', 'Dutton Books', 313, 'The Fault in Our Stars is a young adult novel by John Green that tells the story of Hazel and Gus, two teenagers with cancer who meet and fall in love, exploring themes of love, mortality, and the pursuit of meaning.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-1-4169-6740-6', 'The Maze Runner', 'Delacorte Press', 375, 'The Maze Runner is a dystopian science fiction novel by James Dashner that follows a group of teenagers trapped in a deadly maze, trying to find a way out while facing dangerous creatures and uncovering the secrets of their world.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-553-57340-0', 'Gone Girl', 'Crown Publishing Group', 419, 'Gone Girl is a psychological thriller novel by Gillian Flynn that tells the story of a marriage gone wrong, as Nick Dunne becomes the prime suspect in the disappearance of his wife Amy, leading to a series of twists and turns.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-440-23807-0', 'The Shack', 'Windblown Media', 252, 'The Shack is a spiritual novel by William P. Young that follows a man named Mackenzie Phillips as he deals with the aftermath of his daughter\'s abduction and his encounter with God in a remote cabin, exploring themes of faith, forgiveness, and healing.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-1-59420-128-2', 'Water for Elephants', 'Algonquin Books', 335, 'Water for Elephants is a historical novel by Sara Gruen that tells the story of Jacob Jankowski, a veterinary student who joins a traveling circus during the Great Depression, where he falls in love with the circus\' star performer and cares for an aging elephant.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-316-03641-5', 'The Help', 'Penguin Books', 464, 'The Help is a historical fiction novel by Kathryn Stockett that explores racial discrimination and the lives of African American maids working in white households in Jackson, Mississippi, during the early 1960s.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-393-32940-6', 'The Secret History', 'Alfred A. Knopf', 559, 'The Secret History is a mystery novel by Donna Tartt that follows a group of elite college students studying ancient Greek and their involvement in a murder, exploring themes of guilt, obsession, and the consequences of actions.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-446-31078-9', 'The Alchemist', 'HarperOne', 197, 'The Alchemist is a philosophical novel by Paulo Coelho that follows the journey of a young shepherd named Santiago as he seeks his personal legend and discovers the importance of following one\'s dreams.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-307-96585-2', 'The Da Vinci Code', 'Doubleday', 454, 'The Da Vinci Code is a thriller novel by Dan Brown that follows symbologist Robert Langdon as he unravels a series of clues related to a secret society and a hidden religious mystery.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-385-52737-7', 'Pride and Prejudice', 'Penguin Classics', 279, 'Pride and Prejudice is a classic novel by Jane Austen that follows the romantic journey of Elizabeth Bennet and Mr. Darcy, exploring themes of love, marriage, and societal expectations.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-451-52634-2', 'The Catcher in the Rye', 'Little, Brown and Company', 277, 'The Catcher in the Rye is a coming-of-age novel by J.D. Salinger that explores the experiences and thoughts of Holden Caulfield, a disillusioned teenager navigating the complexities of adulthood and society.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-552-16469-9', 'Harry Potter and the Philosopher\'s Stone', 'Bloomsbury Publishing', 223, 'Harry Potter and the Philosopher\'s Stone is the first book in the Harry Potter series by J.K. Rowling, introducing the magical world of Hogwarts School of Witchcraft and Wizardry and the adventures of Harry Potter, Ron Weasley, and Hermione Granger.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-375-70597-6', 'The Book Thief', 'Alfred A. Knopf', 552, 'The Book Thief is a historical novel by Markus Zusak that follows Liesel Meminger, a young girl living in Nazi Germany, as she steals books and finds solace in the power of words during a time of war.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-440-22556-2', 'Brave New World', 'HarperCollins', 288, 'Brave New World is a dystopian novel by Aldous Huxley that envisions a future society where humans are genetically engineered and controlled to maintain stability and conformity, exploring themes of technology, individuality, and societal control.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-786-72682-1', 'The Great Gatsby', 'Scribner', 180, 'The Great Gatsby is a classic novel by F. Scott Fitzgerald that portrays the decadence and disillusionment of the Jazz Age through the eyes of Jay Gatsby and the narrator, Nick Carraway.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-345-80350-9', 'The Hobbit', 'HarperCollins', 310, 'The Hobbit is a fantasy novel by J.R.R. Tolkien that follows the adventures of Bilbo Baggins, a hobbit who embarks on a quest to reclaim a treasure from the dragon Smaug, encountering magical creatures and forming unlikely alliances along the way.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-13-468599-1', 'Introduction to Quantum Mechanics', 'Pearson', 544, 'Introduction to Quantum Mechanics provides a comprehensive introduction to the principles and applications of quantum mechanics, covering topics such as wave-particle duality, quantum superposition, and quantum entanglement.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-7167-6034-4', 'Fundamentals of Anatomy and Physiology', 'Benjamin Cummings', 1296, 'Fundamentals of Anatomy and Physiology is a comprehensive textbook that explores the structure and function of the human body, covering topics such as cells, tissues, organs, and systems.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-19-882151-2', 'The Theory of Everything: The Origin and Fate of the Universe', 'Oxford University Press', 320, 'The Theory of Everything presents a comprehensive overview of modern physics, exploring theories such as general relativity, quantum mechanics, and the search for a unified theory that explains the fundamental forces of nature.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-393-97976-5', 'Genetics: Analysis and Principles', 'W. H. Freeman', 864, 'Genetics: Analysis and Principles offers a comprehensive introduction to the principles of genetics, covering topics such as DNA structure, gene expression, inheritance patterns, and genetic engineering.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-07-352419-1', 'Organic Chemistry: Structure and Function', 'McGraw-Hill', 1248, 'Organic Chemistry: Structure and Function provides a comprehensive overview of organic chemistry, covering topics such as chemical bonding, stereochemistry, reaction mechanisms, and the synthesis of organic compounds.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-12-813802-6', 'Molecular Biology of the Cell', 'Garland Science', 1464, 'Molecular Biology of the Cell is a widely used textbook that explores the molecular processes involved in cellular structure, function, and regulation, covering topics such as DNA replication, gene expression, and cell signaling.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-19-850410-3', 'Neuroscience: Exploring the Brain', 'Oxford University Press', 976, 'Neuroscience: Exploring the Brain provides a comprehensive introduction to the field of neuroscience, covering topics such as brain structure and function, neural development, sensory systems, and neurological disorders.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-87893-725-8', 'Introduction to Environmental Engineering and Science', 'Prentice Hall', 784, 'Introduction to Environmental Engineering and Science offers an introduction to the principles of environmental engineering and science, covering topics such as water and wastewater treatment, air pollution control, and solid waste management.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-07-352258-6', 'Introduction to Biotechnology', 'McGraw-Hill', 704, 'Introduction to Biotechnology provides an overview of the principles and applications of biotechnology, covering topics such as genetic engineering, bioprocessing, and the development of biopharmaceuticals.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-393-96115-7', 'Fundamentals of Physics', 'W. W. Norton & Company', 1440, 'Fundamentals of Physics offers a comprehensive introduction to the principles of physics, covering topics such as mechanics, electromagnetism, optics, and modern physics.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-1-4292-1960-3', 'Introduction to Psychology', 'Worth Publishers', 720, 'Introduction to Psychology provides an overview of the field of psychology, covering topics such as biological psychology, sensation and perception, learning and memory, and psychological disorders.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-13-409341-3', 'Chemistry: The Central Science', 'Pearson', 1256, 'Chemistry: The Central Science is a widely used textbook that covers the fundamental principles of chemistry, including topics such as atomic structure, chemical bonding, chemical reactions, and the properties of matter.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-1-4292-3222-0', 'Microbiology: An Introduction', 'Benjamin Cummings', 960, 'Microbiology: An Introduction provides an introduction to the study of microorganisms, covering topics such as microbial structure and function, microbial growth and control, and the role of microorganisms in infectious diseases.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-321-94658-1', 'Computer Networks: A Top-Down Approach', 'Pearson', 960, 'Computer Networks: A Top-Down Approach offers a comprehensive introduction to computer networking, covering topics such as network protocols, network architecture, and the Internet.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-13-441423-2', 'Data Structures and Algorithms in Python', 'Pearson', 752, 'Data Structures and Algorithms in Python provides a comprehensive introduction to data structures and algorithms, covering topics such as arrays, linked lists, trees, sorting algorithms, and graph algorithms.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-321-92831-3', 'Introduction to Artificial Intelligence: A Modern Approach', 'Pearson', 1160, 'Introduction to Artificial Intelligence: A Modern Approach offers a comprehensive introduction to the field of artificial intelligence, covering topics such as problem-solving, knowledge representation, machine learning, and natural language processing.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-393-60342-0', 'Astrophysics for People in a Hurry', 'W. W. Norton & Company', 224, 'Astrophysics for People in a Hurry offers a concise introduction to the field of astrophysics, covering topics such as the origins of the universe, black holes, dark matter, and the search for extraterrestrial life.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-07-352526-6', 'Engineering Mechanics: Statics', 'McGraw-Hill', 672, 'Engineering Mechanics: Statics provides an introduction to the principles of statics, covering topics such as forces, equilibrium, trusses, beams, and friction.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-13-396822-4', 'Introduction to Data Science', 'Pearson', 400, 'Introduction to Data Science offers an overview of the field of data science, covering topics such as data manipulation, data visualization, machine learning, and data ethics.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-07-802316-9', 'Environmental Science: Toward a Sustainable Future', 'McGraw-Hill', 688, 'Environmental Science: Toward a Sustainable Future explores the interconnections between humans and the environment, covering topics such as ecosystem dynamics, pollution, climate change, and environmental policy.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-07-340371-3', 'Physical Chemistry: A Molecular Approach', 'McGraw-Hill', 1168, 'Physical Chemistry: A Molecular Approach offers a comprehensive introduction to physical chemistry, covering topics such as thermodynamics, quantum mechanics, spectroscopy, and chemical kinetics.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-87893-642-8', 'Introduction to Electric Circuits', 'Prentice Hall', 864, 'Introduction to Electric Circuits provides an introduction to the principles of electric circuits, covering topics such as Ohm\'s law, circuit analysis techniques, and circuit elements.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-321-98203-0', 'Principles of Economics', 'Pearson', 816, 'Principles of Economics offers an introduction to the principles of economics, covering topics such as supply and demand, market structures, macroeconomics, and international trade.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

INSERT INTO Books (ISBN, title, publisher, page_number, summary, cover, language)
VALUES ('978-0-12-803550-3', 'Introduction to Geographic Information Systems', 'Elsevier', 416, 'Introduction to Geographic Information Systems provides an overview of GIS technology and its applications, covering topics such as spatial data analysis, cartography, and remote sensing.', 'https://www.lybrary.com/images/the_book_without_a_name.jpg', 'English');

/*INSERT HAS BOOK*/
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-307-58958-2', 'Senior Highschool of Amfissa', 8);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-345-49678-6', '2nd Senior Highschool of Igoumenitsa', 9);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-553-21312-3', 'GEORGIOU ZOIS EDUCATIONAL High School', 3);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-553-57340-3', '8th Junior-Senior Highschool of Chalandri', 2);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-375-70599-7', 'Senior Highschool of Amfissa', 6);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-345-80324-2', '2nd Senior Highschool of Igoumenitsa', 9);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-330-25864-8', 'GEORGIOU ZOIS EDUCATIONAL High School', 6);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-393-60342-0', '8th Junior-Senior Highschool of Chalandri', 3);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-307-27884-8', 'Senior Highschool of Amfissa', 4);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-440-22556-2', '2nd Senior Highschool of Igoumenitsa', 4);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-553-21311-6', 'GEORGIOU ZOIS EDUCATIONAL High School', 7);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-13-409341-3', '8th Junior-Senior Highschool of Chalandri', 5);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-321-94658-1', 'Senior Highschool of Amfissa', 1);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-13-441423-2', '2nd Senior Highschool of Igoumenitsa', 5);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-316-34809-2', 'GEORGIOU ZOIS EDUCATIONAL High School', 7);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-06-089154-1', '8th Junior-Senior Highschool of Chalandri', 8);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-07-352526-6', 'Senior Highschool of Amfissa', 8);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-07-802316-9', '2nd Senior Highschool of Igoumenitsa', 8);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-451-20722-5', 'GEORGIOU ZOIS EDUCATIONAL High School', 4);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-7167-6034-4', '8th Junior-Senior Highschool of Chalandri', 8);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-393-96115-7', 'Senior Highschool of Amfissa', 5);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-393-97976-5', '2nd Senior Highschool of Igoumenitsa', 4);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-307-59331-0', 'GEORGIOU ZOIS EDUCATIONAL High School', 10);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-553-57340-0', '8th Junior-Senior Highschool of Chalandri', 6);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-380-72703-8', 'Senior Highschool of Amfissa', 10);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-7869-4867-3', '2nd Senior Highschool of Igoumenitsa', 7);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-552-16469-9', 'GEORGIOU ZOIS EDUCATIONAL High School', 5);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-8129-7449-8', '8th Junior-Senior Highschool of Chalandri', 4);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-321-92831-3', 'Senior Highschool of Amfissa', 10);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-07-352258-6', '2nd Senior Highschool of Igoumenitsa', 10);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-13-396822-4', 'GEORGIOU ZOIS EDUCATIONAL High School', 5);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-87893-642-8', '8th Junior-Senior Highschool of Chalandri', 4);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-87893-725-8', 'Senior Highschool of Amfissa', 10);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-12-803550-3', '2nd Senior Highschool of Igoumenitsa', 10);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-1-4292-1960-3', 'GEORGIOU ZOIS EDUCATIONAL High School', 2);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-13-468599-1', '8th Junior-Senior Highschool of Chalandri', 9);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-375-82775-7', 'Senior Highschool of Amfissa', 3);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-671-74251-0', '2nd Senior Highschool of Igoumenitsa', 3);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-1-4292-3222-0', 'GEORGIOU ZOIS EDUCATIONAL High School', 10);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-12-813802-6', '8th Junior-Senior Highschool of Chalandri', 8);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-19-850410-3', 'Senior Highschool of Amfissa', 7);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-14-200067-0', '2nd Senior Highschool of Igoumenitsa', 8);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-07-352419-1', 'GEORGIOU ZOIS EDUCATIONAL High School', 7);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-07-340371-3', '8th Junior-Senior Highschool of Chalandri', 3);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-385-52737-7', 'Senior Highschool of Amfissa', 3);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-679-72315-7', '2nd Senior Highschool of Igoumenitsa', 7);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-679-74581-5', 'GEORGIOU ZOIS EDUCATIONAL High School', 4);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-321-98203-0', '8th Junior-Senior Highschool of Chalandri', 2);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-451-52888-5', 'Senior Highschool of Amfissa', 5);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-446-31078-9', '2nd Senior Highschool of Igoumenitsa', 9);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-553-29141-7', 'GEORGIOU ZOIS EDUCATIONAL High School', 5);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-743-28292-1', '8th Junior-Senior Highschool of Chalandri', 4);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-1-4088-5567-0', 'Senior Highschool of Amfissa', 1);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-375-70597-6', '2nd Senior Highschool of Igoumenitsa', 6);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-385-49529-1', 'GEORGIOU ZOIS EDUCATIONAL High School', 8);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-06-112006-0', '8th Junior-Senior Highschool of Chalandri', 3);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-451-52634-2', 'Senior Highschool of Amfissa', 4);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-525-49252-6', '2nd Senior Highschool of Igoumenitsa', 1);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-545-01022-6', 'GEORGIOU ZOIS EDUCATIONAL High School', 4);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-679-64359-6', '8th Junior-Senior Highschool of Chalandri', 9);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-804-15825-5', 'Senior Highschool of Amfissa', 3);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-440-22371-5', '2nd Senior Highschool of Igoumenitsa', 2);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-553-21321-6', 'GEORGIOU ZOIS EDUCATIONAL High School', 6);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-375-70643-7', '8th Junior-Senior Highschool of Chalandri', 4);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-307-96585-2', 'Senior Highschool of Amfissa', 2);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-7432-4382-4', '2nd Senior Highschool of Igoumenitsa', 5);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-312-42757-3', 'GEORGIOU ZOIS EDUCATIONAL High School', 7);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-440-32085-2', '8th Junior-Senior Highschool of Chalandri', 9);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-753-80484-5', 'Senior Highschool of Amfissa', 3);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-316-12983-8', '2nd Senior Highschool of Igoumenitsa', 5);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-618-00197-5', 'GEORGIOU ZOIS EDUCATIONAL High School', 1);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-399-15534-3', '8th Junior-Senior Highschool of Chalandri', 5);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-440-22331-9', 'Senior Highschool of Amfissa', 7);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-786-72682-1', '2nd Senior Highschool of Igoumenitsa', 10);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-1-4028-9462-6', 'GEORGIOU ZOIS EDUCATIONAL High School', 10);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-451-47525-1', '8th Junior-Senior Highschool of Chalandri', 3);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-312-38047-3', 'Senior Highschool of Amfissa', 5);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-316-03641-5', '2nd Senior Highschool of Igoumenitsa', 5);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-375-70522-5', 'GEORGIOU ZOIS EDUCATIONAL High School', 7);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-345-80350-9', '8th Junior-Senior Highschool of Chalandri', 7);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-446-60229-8', 'Senior Highschool of Amfissa', 8);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-553-58467-3', '2nd Senior Highschool of Igoumenitsa', 3);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-312-41958-6', 'GEORGIOU ZOIS EDUCATIONAL High School', 3);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-1-4391-5864-9', '8th Junior-Senior Highschool of Chalandri', 9);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-345-80220-7', 'Senior Highschool of Amfissa', 8);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-679-64402-6', '2nd Senior Highschool of Igoumenitsa', 7);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-452-01141-5', 'GEORGIOU ZOIS EDUCATIONAL High School', 9);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-307-70145-1', '8th Junior-Senior Highschool of Chalandri', 5);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-679-77449-2', 'Senior Highschool of Amfissa', 4);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-446-60169-0', '2nd Senior Highschool of Igoumenitsa', 9);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-1-4169-6740-6', 'GEORGIOU ZOIS EDUCATIONAL High School', 3);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-316-03623-0', '8th Junior-Senior Highschool of Chalandri', 7);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-553-23261-6', 'Senior Highschool of Amfissa', 5);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-141-18719-2', '2nd Senior Highschool of Igoumenitsa', 10);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-679-64209-6', 'GEORGIOU ZOIS EDUCATIONAL High School', 6);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-679-64259-6', '8th Junior-Senior Highschool of Chalandri', 10);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-307-74355-0', 'Senior Highschool of Amfissa', 3);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-06-057749-4', '2nd Senior Highschool of Igoumenitsa', 3);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-393-32940-6', 'GEORGIOU ZOIS EDUCATIONAL High School', 9);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-743-47759-0', '8th Junior-Senior Highschool of Chalandri', 5);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-440-23807-0', 'Senior Highschool of Amfissa', 1);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-345-39680-1', '2nd Senior Highschool of Igoumenitsa', 10);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-19-882151-2', 'GEORGIOU ZOIS EDUCATIONAL High School', 10);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-743-27103-5', '8th Junior-Senior Highschool of Chalandri', 2);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-06-112008-4', 'Senior Highschool of Amfissa', 1);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-446-55620-9', '2nd Senior Highschool of Igoumenitsa', 2);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-679-60165-5', 'GEORGIOU ZOIS EDUCATIONAL High School', 10);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-312-32684-7', '8th Junior-Senior Highschool of Chalandri', 3);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-1-59420-128-2', 'Senior Highschool of Amfissa', 7);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-307-58958-2', '2nd Senior Highschool of Igoumenitsa', 2);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-345-49678-6', 'GEORGIOU ZOIS EDUCATIONAL High School', 10);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-553-21312-3', '8th Junior-Senior Highschool of Chalandri', 4);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-553-57340-3', 'Senior Highschool of Amfissa', 10);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-375-70599-7', '2nd Senior Highschool of Igoumenitsa', 9);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-345-80324-2', 'GEORGIOU ZOIS EDUCATIONAL High School', 4);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-330-25864-8', '8th Junior-Senior Highschool of Chalandri', 5);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-393-60342-0', 'Senior Highschool of Amfissa', 1);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-307-27884-8', '2nd Senior Highschool of Igoumenitsa', 2);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-440-22556-2', 'GEORGIOU ZOIS EDUCATIONAL High School', 9);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-553-21311-6', '8th Junior-Senior Highschool of Chalandri', 7);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-13-409341-3', 'Senior Highschool of Amfissa', 4);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-321-94658-1', '2nd Senior Highschool of Igoumenitsa', 7);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-13-441423-2', 'GEORGIOU ZOIS EDUCATIONAL High School', 6);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-316-34809-2', '8th Junior-Senior Highschool of Chalandri', 10);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-06-089154-1', 'Senior Highschool of Amfissa', 3);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-07-352526-6', '2nd Senior Highschool of Igoumenitsa', 4);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-07-802316-9', 'GEORGIOU ZOIS EDUCATIONAL High School', 5);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-451-20722-5', '8th Junior-Senior Highschool of Chalandri', 8);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-7167-6034-4', 'Senior Highschool of Amfissa', 10);
INSERT INTO HasBook (ISBN_FK, school_name_FK, available_copies) VALUES ('978-0-393-96115-7', '2nd Senior Highschool of Igoumenitsa', 5);

/*INSERT CATEGORY*/
INSERT INTO Category (category, ISBN_FK) VALUES ('Dystopian Fiction', '978-0-307-58958-2');
INSERT INTO Category (category, ISBN_FK) VALUES ('Fantasy', '978-0-345-49678-6');
INSERT INTO Category (category, ISBN_FK) VALUES ('Historical Fiction', '978-0-553-21312-3');
INSERT INTO Category (category, ISBN_FK) VALUES ('Science Fiction', '978-0-553-57340-3');
INSERT INTO Category (category, ISBN_FK) VALUES ('Fantasy', '978-0-375-70599-7');
INSERT INTO Category (category, ISBN_FK) VALUES ('Allegory', '978-0-345-80324-2');
INSERT INTO Category (category, ISBN_FK) VALUES ('Satire', '978-0-330-25864-8');
INSERT INTO Category (category, ISBN_FK) VALUES ('Popular Science', '978-0-393-60342-0');
INSERT INTO Category (category, ISBN_FK) VALUES ('Dystopian Fiction', '978-0-307-27884-8');
INSERT INTO Category (category, ISBN_FK) VALUES ('Science (Chemistry)', '978-0-440-22556-2');
INSERT INTO Category (category, ISBN_FK) VALUES ('Technology (Computer Networks)', '978-0-553-21311-6');
INSERT INTO Category (category, ISBN_FK) VALUES ('Computer Science (Programming)', '978-0-13-409341-3');
INSERT INTO Category (category, ISBN_FK) VALUES ('Biography', '978-0-321-94658-1');
INSERT INTO Category (category, ISBN_FK) VALUES ('Memoir', '978-0-13-441423-2');
INSERT INTO Category (category, ISBN_FK) VALUES ('Science Fiction', '978-0-316-34809-2');
INSERT INTO Category (category, ISBN_FK) VALUES ('Engineering (Mechanics)', '978-0-06-089154-1');
INSERT INTO Category (category, ISBN_FK) VALUES ('Science (Environmental Science)', '978-0-07-352526-6');
INSERT INTO Category (category, ISBN_FK) VALUES ('Science Fiction', '978-0-07-802316-9');
INSERT INTO Category (category, ISBN_FK) VALUES ('Dystopian Fiction', '978-0-451-20722-5');
INSERT INTO Category (category, ISBN_FK) VALUES ('Science (Biology)', '978-0-7167-6034-4');
INSERT INTO Category (category, ISBN_FK) VALUES ('Science (Physics)', '978-0-393-96115-7');
INSERT INTO Category (category, ISBN_FK) VALUES ('Science (Genetics)', '978-0-393-97976-5');
INSERT INTO Category (category, ISBN_FK) VALUES ('Psychological Thriller', '978-0-307-59331-0');
INSERT INTO Category (category, ISBN_FK) VALUES ('Historical Fiction', '978-0-553-57340-0');
INSERT INTO Category (category, ISBN_FK) VALUES ('Romance', '978-0-380-72703-8');
INSERT INTO Category (category, ISBN_FK) VALUES ('Fantasy', '978-0-7869-4867-3');
INSERT INTO Category (category, ISBN_FK) VALUES ('Fantasy', '978-0-552-16469-9');
INSERT INTO Category (category, ISBN_FK) VALUES ('Fantasy', '978-0-8129-7449-8');
INSERT INTO Category (category, ISBN_FK) VALUES ('Computer Science (Artificial Intelligence)', '978-0-321-92831-3');
INSERT INTO Category (category, ISBN_FK) VALUES ('Science (Biotechnology)', '978-0-07-352258-6');
INSERT INTO Category (category, ISBN_FK) VALUES ('Technology', '978-0-13-396822-4');
INSERT INTO Category (category, ISBN_FK) VALUES ('Data Science', '978-0-87893-642-8');
INSERT INTO Category (category, ISBN_FK) VALUES ('Engineering (Electrical Engineering)', '978-0-87893-725-8');
INSERT INTO Category (category, ISBN_FK) VALUES ('Science', '978-0-12-803550-3');
INSERT INTO Category (category, ISBN_FK) VALUES ('Engineering (Environmental Engineering)', '978-1-4292-1960-3');
INSERT INTO Category (category, ISBN_FK) VALUES ('Technology (GIS)', '978-0-13-468599-1');
INSERT INTO Category (category, ISBN_FK) VALUES ('Psychology', '978-0-375-82775-7');
INSERT INTO Category (category, ISBN_FK) VALUES ('Science (Physics', '978-0-671-74251-0');
INSERT INTO Category (category, ISBN_FK) VALUES ('Quantum Mechanics)', '978-1-4292-3222-0');
INSERT INTO Category (category, ISBN_FK) VALUES ('Adventure', '978-0-12-813802-6');
INSERT INTO Category (category, ISBN_FK) VALUES ('Fiction', '978-0-19-850410-3');
INSERT INTO Category (category, ISBN_FK) VALUES ('Allegory', '978-0-14-200067-0');
INSERT INTO Category (category, ISBN_FK) VALUES ('Survival Fiction', '978-0-07-352419-1');
INSERT INTO Category (category, ISBN_FK) VALUES ('Science (Microbiology)', '978-0-07-340371-3');
INSERT INTO Category (category, ISBN_FK) VALUES ('Science (Molecular Biology)', '978-0-385-52737-7');
INSERT INTO Category (category, ISBN_FK) VALUES ('Science (Neuroscience)', '978-0-679-72315-7');
INSERT INTO Category (category, ISBN_FK) VALUES ('Magical Realism', '978-0-679-74581-5');
INSERT INTO Category (category, ISBN_FK) VALUES ('Science (Organic Chemistry)', '978-0-321-98203-0');
INSERT INTO Category (category, ISBN_FK) VALUES ('Science (Physical Chemistry)', '978-0-451-52888-5');
INSERT INTO Category (category, ISBN_FK) VALUES ('Classic Literature', '978-0-446-31078-9');
INSERT INTO Category (category, ISBN_FK) VALUES ('Romance', '978-0-553-29141-7');
INSERT INTO Category (category, ISBN_FK) VALUES ('Non-fiction', '978-0-743-28292-1');
INSERT INTO Category (category, ISBN_FK) VALUES ('Economics', '978-1-4088-5567-0');
INSERT INTO Category (category, ISBN_FK) VALUES ('Science Fiction', '978-0-375-70597-6');
INSERT INTO Category (category, ISBN_FK) VALUES ('Postmodern Literature', '978-0-385-49529-1');
INSERT INTO Category (category, ISBN_FK) VALUES ('Fiction', '978-0-06-112006-0');
INSERT INTO Category (category, ISBN_FK) VALUES ('Self-Help', '978-0-451-52634-2');
INSERT INTO Category (category, ISBN_FK) VALUES ('Spiritual', '978-0-525-49252-6');
INSERT INTO Category (category, ISBN_FK) VALUES ('Historical Fiction', '978-0-545-01022-6');
INSERT INTO Category (category, ISBN_FK) VALUES ('Satire', '978-0-679-64359-6');
INSERT INTO Category (category, ISBN_FK) VALUES ('War Fiction', '978-0-804-15825-5');
INSERT INTO Category (category, ISBN_FK) VALUES ('Coming-of-Age Fiction', '978-0-440-22371-5');
INSERT INTO Category (category, ISBN_FK) VALUES ('Fantasy', '978-0-553-21321-6');
INSERT INTO Category (category, ISBN_FK) VALUES ('Fiction', '978-0-375-70643-7');
INSERT INTO Category (category, ISBN_FK) VALUES ('Drama', '978-0-307-96585-2');
INSERT INTO Category (category, ISBN_FK) VALUES ('Adventure', '978-0-7432-4382-4');
INSERT INTO Category (category, ISBN_FK) VALUES ('Historical Fiction', '978-0-312-42757-3');
INSERT INTO Category (category, ISBN_FK) VALUES ('Mystery', '978-0-440-32085-2');
INSERT INTO Category (category, ISBN_FK) VALUES ('Drama', '978-0-753-80484-5');
INSERT INTO Category (category, ISBN_FK) VALUES ('Mystery', '978-0-316-12983-8');
INSERT INTO Category (category, ISBN_FK) VALUES ('Thriller', '978-0-618-00197-5');
INSERT INTO Category (category, ISBN_FK) VALUES ('Young Adult Fiction', '978-0-399-15534-3');
INSERT INTO Category (category, ISBN_FK) VALUES ('Romance', '978-0-440-22331-9');
INSERT INTO Category (category, ISBN_FK) VALUES ('Psychological Thriller', '978-0-786-72682-1');
INSERT INTO Category (category, ISBN_FK) VALUES ('Crime Fiction', '978-1-4028-9462-6');
INSERT INTO Category (category, ISBN_FK) VALUES ('Thriller', '978-0-451-47525-1');
INSERT INTO Category (category, ISBN_FK) VALUES ('Science Fiction', '978-0-312-38047-3');
INSERT INTO Category (category, ISBN_FK) VALUES ('Dystopian Fiction', '978-0-316-03641-5');
INSERT INTO Category (category, ISBN_FK) VALUES ('Fiction', '978-0-375-70522-5');
INSERT INTO Category (category, ISBN_FK) VALUES ('Drama', '978-0-345-80350-9');
INSERT INTO Category (category, ISBN_FK) VALUES ('Classic Literature', '978-0-446-60229-8');
INSERT INTO Category (category, ISBN_FK) VALUES ('Drama', '978-0-553-58467-3');
INSERT INTO Category (category, ISBN_FK) VALUES ('Dystopian Fiction', '978-0-312-41958-6');
INSERT INTO Category (category, ISBN_FK) VALUES ('Historical Fiction', '978-1-4391-5864-9');
INSERT INTO Category (category, ISBN_FK) VALUES ('Drama', '978-0-345-80220-7');
INSERT INTO Category (category, ISBN_FK) VALUES ('Fantasy', '978-0-679-64402-6');
INSERT INTO Category (category, ISBN_FK) VALUES ('Adventure', '978-0-452-01141-5');
INSERT INTO Category (category, ISBN_FK) VALUES ('Science Fiction', '978-0-307-70145-1');
INSERT INTO Category (category, ISBN_FK) VALUES ('Dystopian Fiction', '978-0-679-77449-2');
INSERT INTO Category (category, ISBN_FK) VALUES ('Historical Fiction', '978-0-446-60169-0');
INSERT INTO Category (category, ISBN_FK) VALUES ('Drama', '978-1-4169-6740-6');
INSERT INTO Category (category, ISBN_FK) VALUES ('Children''s Literature', '978-0-316-03623-0');
INSERT INTO Category (category, ISBN_FK) VALUES ('Fantasy', '978-0-553-23261-6');
INSERT INTO Category (category, ISBN_FK) VALUES ('Fantasy', '978-0-141-18719-2');
INSERT INTO Category (category, ISBN_FK) VALUES ('Adventure', '978-0-679-64209-6');
INSERT INTO Category (category, ISBN_FK) VALUES ('Fiction', '978-0-679-64259-6');
INSERT INTO Category (category, ISBN_FK) VALUES ('Mystery', '978-0-307-74355-0');
INSERT INTO Category (category, ISBN_FK) VALUES ('Science Fiction', '978-0-06-057749-4');
INSERT INTO Category (category, ISBN_FK) VALUES ('Science Fiction', '978-0-393-32940-6');
INSERT INTO Category (category, ISBN_FK) VALUES ('Dystopian Fiction', '978-0-743-47759-0');
INSERT INTO Category (category, ISBN_FK) VALUES ('Historical Fiction', '978-0-440-23807-0');
INSERT INTO Category (category, ISBN_FK) VALUES ('War Fiction', '978-0-345-39680-1');
INSERT INTO Category (category, ISBN_FK) VALUES ('Epic Poetry', '978-0-19-882151-2');
INSERT INTO Category (category, ISBN_FK) VALUES ('Adventure', '978-0-743-27103-5');
INSERT INTO Category (category, ISBN_FK) VALUES ('Classic Literature', '978-0-06-112008-4');
INSERT INTO Category (category, ISBN_FK) VALUES ('Horror', '978-0-446-55620-9');
INSERT INTO Category (category, ISBN_FK) VALUES ('Self-Help', '978-0-679-60165-5');
INSERT INTO Category (category, ISBN_FK) VALUES ('Spiritual', '978-0-312-32684-7');
INSERT INTO Category (category, ISBN_FK) VALUES ('Psychology', '978-1-59420-128-2');
INSERT INTO Category (category, ISBN_FK) VALUES ('Self-Help', '978-0-307-58958-2');
INSERT INTO Category (category, ISBN_FK) VALUES ('Mystery', '978-0-345-49678-6');
INSERT INTO Category (category, ISBN_FK) VALUES ('Drama', '978-0-553-21312-3');
INSERT INTO Category (category, ISBN_FK) VALUES ('Fiction', '978-0-553-57340-3');
INSERT INTO Category (category, ISBN_FK) VALUES ('Drama', '978-0-375-70599-7');
INSERT INTO Category (category, ISBN_FK) VALUES ('Fiction', '978-0-345-80324-2');
INSERT INTO Category (category, ISBN_FK) VALUES ('Drama', '978-0-330-25864-8');
INSERT INTO Category (category, ISBN_FK) VALUES ('Horror', '978-0-393-60342-0');
INSERT INTO Category (category, ISBN_FK) VALUES ('Science (Physics', '978-0-307-27884-8');
INSERT INTO Category (category, ISBN_FK) VALUES ('Cosmology)', '978-0-440-22556-2');
INSERT INTO Category (category, ISBN_FK) VALUES ('Science Fiction', '978-0-553-21311-6');
INSERT INTO Category (category, ISBN_FK) VALUES ('Romance', '978-0-13-409341-3');
INSERT INTO Category (category, ISBN_FK) VALUES ('Classic Literature', '978-0-321-94658-1');
INSERT INTO Category (category, ISBN_FK) VALUES ('Drama', '978-0-13-441423-2');
INSERT INTO Category (category, ISBN_FK) VALUES ('Modernist Literature', '978-0-316-34809-2');
INSERT INTO Category (category, ISBN_FK) VALUES ('Drama', '978-0-06-089154-1');
INSERT INTO Category (category, ISBN_FK) VALUES ('Historical Fiction', '978-0-07-352526-6');
INSERT INTO Category (category, ISBN_FK) VALUES ('Romance', '978-0-07-802316-9');
INSERT INTO Category (category, ISBN_FK) VALUES ('Fantasy', '978-0-451-20722-5');
INSERT INTO Category (category, ISBN_FK) VALUES ('Fantasy', '978-0-7167-6034-4');
INSERT INTO Category (category, ISBN_FK) VALUES ('Historical Fiction', '978-0-393-96115-7');
INSERT INTO Category (category, ISBN_FK) VALUES ('Science Fiction', '978-0-393-97976-5');
INSERT INTO Category (category, ISBN_FK) VALUES ('Fantasy', '978-0-307-59331-0');
INSERT INTO Category (category, ISBN_FK) VALUES ('Allegory', '978-0-553-57340-0');
INSERT INTO Category (category, ISBN_FK) VALUES ('Satire', '978-0-380-72703-8');
INSERT INTO Category (category, ISBN_FK) VALUES ('Popular Science', '978-0-7869-4867-3');
INSERT INTO Category (category, ISBN_FK) VALUES ('Dystopian Fiction', '978-0-552-16469-9');
INSERT INTO Category (category, ISBN_FK) VALUES ('Science (Chemistry)', '978-0-8129-7449-8');
INSERT INTO Category (category, ISBN_FK) VALUES ('Technology (Computer Networks)', '978-0-321-92831-3');
INSERT INTO Category (category, ISBN_FK) VALUES ('Computer Science (Programming)', '978-0-07-352258-6');
INSERT INTO Category (category, ISBN_FK) VALUES ('Biography', '978-0-13-396822-4');
INSERT INTO Category (category, ISBN_FK) VALUES ('Memoir', '978-0-87893-642-8');
INSERT INTO Category (category, ISBN_FK) VALUES ('Science Fiction', '978-0-87893-725-8');
INSERT INTO Category (category, ISBN_FK) VALUES ('Engineering (Mechanics)', '978-0-12-803550-3');
INSERT INTO Category (category, ISBN_FK) VALUES ('Science (Environmental Science)', '978-1-4292-1960-3');
INSERT INTO Category (category, ISBN_FK) VALUES ('Science Fiction', '978-0-13-468599-1');
INSERT INTO Category (category, ISBN_FK) VALUES ('Dystopian Fiction', '978-0-375-82775-7');
INSERT INTO Category (category, ISBN_FK) VALUES ('Science (Biology)', '978-0-671-74251-0');
INSERT INTO Category (category, ISBN_FK) VALUES ('Science (Physics)', '978-1-4292-3222-0');
INSERT INTO Category (category, ISBN_FK) VALUES ('Science (Genetics)', '978-0-12-813802-6');
INSERT INTO Category (category, ISBN_FK) VALUES ('Psychological Thriller', '978-0-19-850410-3');
INSERT INTO Category (category, ISBN_FK) VALUES ('Historical Fiction', '978-0-14-200067-0');
INSERT INTO Category (category, ISBN_FK) VALUES ('Romance', '978-0-07-352419-1');
INSERT INTO Category (category, ISBN_FK) VALUES ('Fantasy', '978-0-07-340371-3');
INSERT INTO Category (category, ISBN_FK) VALUES ('Fantasy', '978-0-385-52737-7');
INSERT INTO Category (category, ISBN_FK) VALUES ('Fantasy', '978-0-679-72315-7');

/*INSERT KEYWORD*/
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Dystopia', '978-0-307-58958-2');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Totalitarianism', '978-0-345-49678-6');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Surveillance', '978-0-553-21312-3');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Fantasy', '978-0-553-57340-3');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Politics', '978-0-375-70599-7');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Power', '978-0-345-80324-2');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Afghanistan', '978-0-330-25864-8');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Women''s Rights', '978-0-393-60342-0');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Family', '978-0-307-27884-8');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Science Fiction', '978-0-440-22556-2');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Adventure', '978-0-553-21311-6');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Time Travel', '978-0-13-409341-3');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Allegory', '978-0-321-94658-1');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Satire', '978-0-13-441423-2');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Revolution', '978-0-316-34809-2');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Science', '978-0-06-089154-1');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Astronomy', '978-0-07-352526-6');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Universe', '978-0-07-802316-9');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Dystopia', '978-0-451-20722-5');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Social Engineering', '978-0-7167-6034-4');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Conformity', '978-0-393-96115-7');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Chemistry', '978-0-393-97976-5');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Science', '978-0-307-59331-0');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Education', '978-0-553-57340-0');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Computer Networks', '978-0-380-72703-8');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Technology', '978-0-7869-4867-3');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Networking', '978-0-552-16469-9');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Data Structures', '978-0-8129-7449-8');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Algorithms', '978-0-321-92831-3');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Programming', '978-0-07-352258-6');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Biography', '978-0-13-396822-4');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Memoir', '978-0-87893-642-8');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Science Fiction', '978-0-87893-725-8');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Adventure', '978-0-12-803550-3');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Engineering', '978-1-4292-1960-3');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Mechanics', '978-0-13-468599-1');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Environmental Science', '978-0-375-82775-7');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Sustainability', '978-0-671-74251-0');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Dystopia', '978-1-4292-3222-0');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Psychological Thriller', '978-0-12-813802-6');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Anatomy and Physiology', '978-0-19-850410-3');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Science', '978-0-14-200067-0');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Fundamentals of Physics', '978-0-07-352419-1');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Science', '978-0-07-340371-3');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Genetics', '978-0-385-52737-7');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Analysis', '978-0-679-72315-7');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Principles', '978-0-679-74581-5');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Psychological Thriller', '978-0-321-98203-0');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Mystery', '978-0-451-52888-5');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Historical Fiction', '978-0-446-31078-9');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Romance', '978-0-553-29141-7');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Fantasy', '978-0-743-28292-1');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Adventure', '978-1-4088-5567-0');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Fantasy', '978-0-375-70597-6');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Adventure', '978-0-385-49529-1');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Fantasy', '978-0-06-112006-0');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Adventure', '978-0-451-52634-2');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Artificial Intelligence', '978-0-525-49252-6');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Computer Science', '978-0-545-01022-6');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Biotechnology', '978-0-679-64359-6');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Science', '978-0-804-15825-5');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Data Science', '978-0-440-22371-5');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Technology', '978-0-553-21321-6');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Electric Circuits', '978-0-375-70643-7');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Engineering', '978-0-307-96585-2');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Environmental Engineering', '978-0-7432-4382-4');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Science', '978-0-312-42757-3');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Geographic Information Systems', '978-0-440-32085-2');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Technology', '978-0-753-80484-5');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Psychology', '978-0-316-12983-8');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Introduction', '978-0-618-00197-5');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Quantum Mechanics', '978-0-399-15534-3');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Science', '978-0-440-22331-9');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Adventure', '978-0-786-72682-1');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Fiction', '978-1-4028-9462-6');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Classic Literature', '978-0-451-47525-1');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Allegory', '978-0-312-38047-3');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Microbiology', '978-0-316-03641-5');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Science', '978-0-375-70522-5');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Molecular Biology', '978-0-345-80350-9');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Science', '978-0-446-60229-8');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Neuroscience', '978-0-553-58467-3');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Science', '978-0-312-41958-6');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Magical Realism', '978-1-4391-5864-9');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Fiction', '978-0-345-80220-7');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Organic Chemistry', '978-0-679-64402-6');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Science', '978-0-452-01141-5');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Physical Chemistry', '978-0-307-70145-1');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Science', '978-0-679-77449-2');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Classic Literature', '978-0-446-60169-0');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Romance', '978-1-4169-6740-6');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Classic Literature', '978-0-316-03623-0');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Romance', '978-0-553-23261-6');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Classic Literature', '978-0-141-18719-2');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Romance', '978-0-679-64209-6');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Economics', '978-0-679-64259-6');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Principles', '978-0-307-74355-0');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Science Fiction', '978-0-06-057749-4');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Satire', '978-0-393-32940-6');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Fiction', '978-0-743-47759-0');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Self-Help', '978-0-440-23807-0');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Spiritual', '978-0-345-39680-1');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Satire', '978-0-19-882151-2');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('War Fiction', '978-0-743-27103-5');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Coming-of-Age Fiction', '978-0-06-112008-4');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Drama', '978-0-446-55620-9');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Fantasy', '978-0-679-60165-5');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Fiction', '978-0-312-32684-7');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Mystery', '978-1-59420-128-2');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Drama', '978-0-307-58958-2');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Fiction', '978-0-345-49678-6');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Mystery', '978-0-553-21312-3');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Horror', '978-0-553-57340-3');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Thriller', '978-0-375-70599-7');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Young Adult Fiction', '978-0-345-80324-2');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Mystery', '978-0-330-25864-8');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Psychological Thriller', '978-0-393-60342-0');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Crime Fiction', '978-0-307-27884-8');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Mystery', '978-0-440-22556-2');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Dystopia', '978-0-553-21311-6');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Drama', '978-0-13-409341-3');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Fiction', '978-0-321-94658-1');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Classic Literature', '978-0-13-441423-2');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Drama', '978-0-316-34809-2');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Dystopia', '978-0-06-089154-1');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Fiction', '978-0-07-352526-6');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Historical Fiction', '978-0-07-802316-9');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Drama', '978-0-451-20722-5');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Fantasy', '978-0-7167-6034-4');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Adventure', '978-0-393-96115-7');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Science Fiction', '978-0-393-97976-5');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Dystopia', '978-0-307-59331-0');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Historical Fiction', '978-0-553-57340-0');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Drama', '978-0-380-72703-8');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Children''s Literature', '978-0-7869-4867-3');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Fantasy', '978-0-552-16469-9');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Fantasy', '978-0-8129-7449-8');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Adventure', '978-0-321-92831-3');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Mystery', '978-0-07-352258-6');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Fiction', '978-0-13-396822-4');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Science Fiction', '978-0-87893-642-8');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Adventure', '978-0-87893-725-8');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Historical Fiction', '978-0-12-803550-3');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Drama', '978-1-4292-1960-3');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Epic Poetry', '978-0-13-468599-1');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Adventure', '978-0-375-82775-7');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Classic Literature', '978-0-671-74251-0');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Horror', '978-1-4292-3222-0');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Self-Help', '978-0-12-813802-6');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Spiritual', '978-0-19-850410-3');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Psychology', '978-0-14-200067-0');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Self-Help', '978-0-07-352419-1');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Mystery', '978-0-07-340371-3');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Drama', '978-0-385-52737-7');
INSERT INTO keyword (keyword, ISBN_FK) VALUES ('Fiction', '978-0-679-72315-7');

/*INSERT AUTHOR*/
INSERT INTO Author (author) VALUES ('Antonin Edelmann');
INSERT INTO Author (author) VALUES ('Meridith Ausello');
INSERT INTO Author (author) VALUES ('Jessica Aronson');
INSERT INTO Author (author) VALUES ('Winnie Hazeldene');
INSERT INTO Author (author) VALUES ('Viki Beningfield');
INSERT INTO Author (author) VALUES ('Carlye Nancekivell');
INSERT INTO Author (author) VALUES ('Jeanie Pinner');
INSERT INTO Author (author) VALUES ('Isis De Bruyn');
INSERT INTO Author (author) VALUES ('Kerianne Vouls');
INSERT INTO Author (author) VALUES ('Rockwell Danovich');
INSERT INTO Author (author) VALUES ('Lorne Sindell');
INSERT INTO Author (author) VALUES ('Filide Ragate');
INSERT INTO Author (author) VALUES ('Karine Solon');
INSERT INTO Author (author) VALUES ('Virginie Saggs');
INSERT INTO Author (author) VALUES ('Min Shepard');
INSERT INTO Author (author) VALUES ('Brenden Bottby');
INSERT INTO Author (author) VALUES ('Doreen Matzaitis');
INSERT INTO Author (author) VALUES ('Cilka Berzon');
INSERT INTO Author (author) VALUES ('Rodie Allport');
INSERT INTO Author (author) VALUES ('Kenneth Greenstead');
INSERT INTO Author (author) VALUES ('Leia Heikkinen');
INSERT INTO Author (author) VALUES ('Adella Newnham');
INSERT INTO Author (author) VALUES ('Mozelle Bellhouse');
INSERT INTO Author (author) VALUES ('Poul Speek');
INSERT INTO Author (author) VALUES ('Juliana Satcher');
INSERT INTO Author (author) VALUES ('Masha Andras');
INSERT INTO Author (author) VALUES ('Osgood Yosevitz');
INSERT INTO Author (author) VALUES ('Eugenia Cleverley');
INSERT INTO Author (author) VALUES ('Traver Stanner');
INSERT INTO Author (author) VALUES ('Sybilla Conklin');
INSERT INTO Author (author) VALUES ('Kile Laxston');
INSERT INTO Author (author) VALUES ('Arnold Ebbett');
INSERT INTO Author (author) VALUES ('Aggie Domerc');
INSERT INTO Author (author) VALUES ('Lind Spridgen');
INSERT INTO Author (author) VALUES ('Danice Durrell');

/*INSERT HAS AUTHOR*/
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (1, '978-0-307-58958-2');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (4, '978-0-345-49678-6');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (13, '978-0-553-21312-3');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (15, '978-0-553-57340-3');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (7, '978-0-375-70599-7');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (2, '978-0-345-80324-2');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (7, '978-0-330-25864-8');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (8, '978-0-393-60342-0');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (9, '978-0-307-27884-8');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (20, '978-0-440-22556-2');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (31, '978-0-553-21311-6');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (12, '978-0-13-409341-3');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (5, '978-0-321-94658-1');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (24, '978-0-13-441423-2');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (35, '978-0-316-34809-2');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (16, '978-0-06-089154-1');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (7, '978-0-07-352526-6');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (28, '978-0-07-802316-9');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (29, '978-0-451-20722-5');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (20, '978-0-7167-6034-4');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (21, '978-0-393-96115-7');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (22, '978-0-393-97976-5');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (23, '978-0-307-59331-0');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (24, '978-0-553-57340-0');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (3, '978-0-380-72703-8');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (26, '978-0-7869-4867-3');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (1, '978-0-552-16469-9');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (2, '978-0-8129-7449-8');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (4, '978-0-321-92831-3');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (6, '978-0-07-352258-6');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (8, '978-0-13-396822-4');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (3, '978-0-87893-642-8');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (31, '978-0-87893-725-8');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (10, '978-0-12-803550-3');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (11, '978-1-4292-1960-3');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (14, '978-0-13-468599-1');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (26, '978-0-375-82775-7');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (8, '978-0-671-74251-0');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (4, '978-1-4292-3222-0');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (5, '978-0-12-813802-6');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (6, '978-0-19-850410-3');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (7, '978-0-14-200067-0');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (11, '978-0-07-352419-1');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (18, '978-0-07-340371-3');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (23, '978-0-385-52737-7');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (34, '978-0-679-72315-7');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (2, '978-0-679-74581-5');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (3, '978-0-321-98203-0');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (9, '978-0-451-52888-5');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (13, '978-0-446-31078-9');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (27, '978-0-553-29141-7');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (33, '978-0-743-28292-1');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (18, '978-1-4088-5567-0');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (19, '978-0-375-70597-6');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (20, '978-0-385-49529-1');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (2, '978-0-06-112006-0');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (22, '978-0-451-52634-2');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (23, '978-0-525-49252-6');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (24, '978-0-545-01022-6');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (16, '978-0-679-64359-6');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (23, '978-0-804-15825-5');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (23, '978-0-440-22371-5');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (4, '978-0-553-21321-6');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (31, '978-0-375-70643-7');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (24, '978-0-307-96585-2');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (33, '978-0-7432-4382-4');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (3, '978-0-312-42757-3');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (10, '978-0-440-32085-2');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (12, '978-0-753-80484-5');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (8, '978-0-316-12983-8');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (5, '978-0-618-00197-5');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (7, '978-0-399-15534-3');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (9, '978-0-440-22331-9');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (19, '978-0-786-72682-1');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (5, '978-1-4028-9462-6');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (6, '978-0-451-47525-1');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (7, '978-0-312-38047-3');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (8, '978-0-316-03641-5');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (9, '978-0-375-70522-5');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (15, '978-0-345-80350-9');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (10, '978-0-446-60229-8');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (29, '978-0-553-58467-3');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (32, '978-0-312-41958-6');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (34, '978-1-4391-5864-9');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (15, '978-0-345-80220-7');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (14, '978-0-679-64402-6');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (17, '978-0-452-01141-5');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (18, '978-0-307-70145-1');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (19, '978-0-679-77449-2');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (20, '978-0-446-60169-0');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (21, '978-1-4169-6740-6');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (22, '978-0-316-03623-0');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (23, '978-0-553-23261-6');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (24, '978-0-141-18719-2');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (25, '978-0-679-64209-6');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (23, '978-0-679-64259-6');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (29, '978-0-307-74355-0');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (31, '978-0-06-057749-4');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (13, '978-0-393-32940-6');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (30, '978-0-743-47759-0');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (31, '978-0-440-23807-0');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (35, '978-0-345-39680-1');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (32, '978-0-19-882151-2');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (14, '978-0-743-27103-5');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (31, '978-0-06-112008-4');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (6, '978-0-446-55620-9');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (7, '978-0-679-60165-5');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (8, '978-0-312-32684-7');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (9, '978-1-59420-128-2');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (2, '978-0-307-58958-2');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (2, '978-0-345-49678-6');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (4, '978-0-553-21312-3');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (8, '978-0-553-57340-3');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (9, '978-0-375-70599-7');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (10, '978-0-345-80324-2');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (18, '978-0-330-25864-8');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (24, '978-0-393-60342-0');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (13, '978-0-307-27884-8');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (14, '978-0-440-22556-2');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (15, '978-0-553-21311-6');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (16, '978-0-13-409341-3');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (17, '978-0-321-94658-1');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (18, '978-0-13-441423-2');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (19, '978-0-316-34809-2');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (20, '978-0-06-089154-1');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (21, '978-0-07-352526-6');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (22, '978-0-07-802316-9');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (23, '978-0-451-20722-5');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (24, '978-0-7167-6034-4');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (25, '978-0-393-96115-7');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (26, '978-0-393-97976-5');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (27, '978-0-307-59331-0');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (28, '978-0-553-57340-0');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (29, '978-0-380-72703-8');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (30, '978-0-7869-4867-3');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (31, '978-0-552-16469-9');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (32, '978-0-8129-7449-8');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (33, '978-0-321-92831-3');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (34, '978-0-07-352258-6');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (35, '978-0-13-396822-4');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (1, '978-0-87893-642-8');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (2, '978-0-87893-725-8');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (3, '978-0-12-803550-3');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (4, '978-1-4292-1960-3');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (5, '978-0-13-468599-1');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (6, '978-0-375-82775-7');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (7, '978-0-671-74251-0');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (8, '978-1-4292-3222-0');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (9, '978-0-12-813802-6');
INSERT INTO HasAuthor (author_id_FK, ISBN_FK) VALUES (10, '978-0-19-850410-3');

/*INSERT BORROW BOOK*/
/*8th Junior-Senior Highschool of Chalandri*/
INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('14-803-9953', '978-0-321-98203-0', '2023-01-12', '2023-01-18', '2023-01-19', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '14-803-9953';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('76-818-4872', '978-0-307-70145-1', '2023-02-15', '2023-02-18', '2023-02-22', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '76-818-4872';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('00-000-0000', '978-1-4391-5864-9', '2023-03-10', '2023-03-19', '2023-03-17', 1);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '00-000-0000';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('78-113-7638', '978-1-4391-5864-9', '2023-04-20', '2023-04-27', '2023-04-27', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '78-113-7638';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('22-522-1653', '978-0-679-64259-6', '2023-03-25', '2023-04-02', '2023-04-01', 1);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '22-522-1653';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('14-803-9953', '978-1-4391-5864-9', '2023-04-10', '2023-04-16', '2023-04-17', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '14-803-9953';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('80-811-5247', '978-0-7167-6034-4', '2023-02-21', '2023-02-28', '2023-02-28', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '80-811-5247';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('87-268-5701', '978-0-451-47525-1', '2023-05-02', '2023-05-13', '2023-05-09', 1);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '87-268-5701';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('87-268-5701', '978-0-553-21311-6', '2023-03-19', '2023-03-25', '2023-03-26', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '87-268-5701';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('89-847-1479', '978-0-553-21311-6', '2023-03-26', '2023-04-02', '2023-04-02', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '89-847-1479';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('89-847-1479', '978-0-307-70145-1', '2023-03-22', '2023-03-27', '2023-03-29', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '89-847-1479';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('87-268-5701', '978-1-4391-5864-9', '2023-04-17', '2023-04-30', '2023-04-24', 1);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '87-268-5701';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('90-550-9411', '978-0-06-089154-1', '2023-03-01', '2023-03-07', '2023-03-08', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '90-550-9411';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('90-550-9411', '978-0-06-112006-0', '2023-02-04', '2023-02-11', '2023-02-11', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '90-550-9411';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('63-206-1985', '978-0-12-813802-6', '2023-05-20', '2023-05-27', '2023-05-27', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '63-206-1985';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('76-818-4872', '978-0-399-15534-3', '2023-04-03', '2023-04-09', '2023-04-10', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '76-818-4872';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('76-818-4872', '978-0-553-57340-0', '2023-04-03', '2023-04-11', '2023-04-10', 1);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '76-818-4872';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('20-739-5216', '978-0-451-20722-5', '2023-01-10', '2023-01-17', '2023-01-17', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '20-739-5216';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('20-739-5216', '978-0-375-70643-7', '2023-01-20', '2023-01-26', '2023-01-27', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '20-739-5216';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('20-739-5216', '978-0-13-468599-1', '2023-02-21', '2023-02-28', '2023-02-28', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '20-739-5216';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('22-522-1653', '978-0-07-340371-3', '2023-05-15', '2023-05-24', '2023-05-22', 1);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '22-522-1653';

/*GEORGIOU ZOIS EDUCATIONAL High School*/
INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('11-528-4906', '978-0-07-352419-1', '2023-01-24', '2023-01-30', '2023-01-31', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '11-528-4906';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('11-528-4906', '978-0-07-802316-9', '2023-04-27', '2023-05-04', '2023-05-04', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '11-528-4906';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('93-561-7324', '978-0-13-396822-4', '2023-03-26', '2023-04-03', '2023-04-02', 1);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '93-561-7324';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('15-483-9550', '978-0-13-396822-4', '2023-05-01', '2023-05-07', '2023-05-08', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '15-483-9550';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('15-483-9550', '978-0-13-441423-2', '2023-02-11', '2023-02-20', '2023-02-18', 1);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '15-483-9550';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('25-107-9977', '978-0-19-882151-2', '2023-03-23', '2023-03-28', '2023-03-30', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '15-483-9550';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('60-184-0005', '978-0-452-01141-5', '2023-04-22', '2023-04-28', '2023-04-29', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '93-561-7324';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('93-561-7324', '978-0-07-802316-9', '2023-02-21', '2023-02-28', '2023-02-28', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '93-561-7324';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('93-561-7324', '978-0-307-59331-0', '2023-03-20', '2023-03-26', '2023-03-27', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '93-561-7324';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('94-325-4966', '978-0-618-00197-5', '2023-01-20', '2023-01-26', '2023-01-27', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '94-325-4966';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('94-325-4966', '978-0-440-22556-2', '2023-04-16', '2023-04-23', '2023-04-23', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '94-325-4966';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('71-145-7153', '978-0-553-21321-6', '2023-04-10', '2023-04-19', '2023-04-17', 1);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '71-145-7153';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('71-145-7153', '978-0-19-882151-2', '2023-02-02', '2023-02-07', '2023-02-09', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '71-145-7153';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('71-145-7153', '978-0-679-64209-6', '2023-03-06', '2023-03-10', '2023-03-13', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '71-145-7153';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('91-232-4414', '978-0-679-60165-5', '2023-04-21', '2023-04-28', '2023-04-28', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '91-232-4414';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('91-232-4414', '978-0-345-49678-6', '2023-02-21', '2023-02-27', '2023-02-28', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '91-232-4414';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('91-232-4414', '978-0-13-441423-2', '2023-04-21', '2023-04-26', '2023-04-28', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '91-232-4414';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('91-232-4414', '978-1-4292-1960-3', '2023-02-13', '2023-02-20', '2023-02-13', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '91-232-4414';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('25-107-9977', '978-0-312-41958-6', '2023-03-22', '2023-03-25', '2023-03-29', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '25-107-9977';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('25-107-9977', '978-0-345-49678-6', '2023-05-19', '2023-05-27', '2023-05-26', 1);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '25-107-9977';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('14-566-5720', '978-0-452-01141-5', '2023-04-10', '2023-04-17', '2023-04-17', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '25-107-9977';


/*2nd Senior Highschool of Igoumenitsa*/
INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('00-833-5189', '978-0-06-057749-4', '2023-01-21', '2023-01-27', '2023-01-28', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '00-833-5189';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('00-833-5189', '978-0-07-352258-6', '2023-04-17', '2023-04-24', '2023-04-24', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '00-833-5189';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('82-897-8319', '978-0-06-057749-4', '2023-04-22', '2023-04-29', '2023-04-29', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '82-897-8319';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('82-897-8319', '978-0-13-441423-2', '2023-03-10', '2023-03-15', '2023-03-17', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '82-897-8319';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('82-897-8319', '978-0-316-12983-8', '2023-03-26', '2023-04-02', '2023-04-02', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '82-897-8319';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('82-897-8319', '978-0-345-80324-2', '2023-01-22', '2023-01-28', '2023-01-29', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '82-897-8319';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('78-244-3530', '978-0-345-80324-2', '2023-04-07', '2023-04-13', '2023-04-14', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '78-244-3530';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('78-244-3530', '978-0-307-58958-2', '2023-03-22', '2023-03-28', '2023-03-29', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '78-244-3530';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('77-585-7810', '978-0-345-39680-1', '2023-03-03', '2023-03-10', '2023-03-10', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '77-585-7810';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('69-093-4272', '978-0-307-27884-8', '2023-02-27', '2023-03-07', '2023-03-07', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '77-585-7810';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('78-244-3530', '978-0-07-352258-6', '2023-05-19', NULL, '2023-05-26', 1);

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('49-356-6693', '978-0-345-49678-6', '2023-05-22', NULL, '2023-05-29', 1);

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('03-217-2689', '978-0-786-72682-1', '2023-05-15', NULL, '2023-05-22', 1);


/*Senior Highschool of Amfiss*/
INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('50-757-8865', '978-0-321-92831-3', '2023-03-27', '2023-04-03', '2023-04-03', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '50-757-8865';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('50-757-8865', '978-0-451-52634-2', '2023-03-14', '2023-03-21', '2023-03-21', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '50-757-8865';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('50-757-8865', '978-0-19-850410-3', '2023-01-11', '2023-01-18', '2023-01-18', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '50-757-8865';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('50-757-8865', '978-0-19-850410-3', '2023-02-11', '2023-02-19', '2023-02-18', 1);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '50-757-8865';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('47-462-8756', '978-0-19-850410-3', '2023-05-01', '2023-05-07', '2023-05-08', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '47-462-8756';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('47-462-8756', '978-0-312-38047-3', '2023-02-22', '2023-03-01', '2023-03-01', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '47-462-8756';

INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
VALUES ('47-462-8756', '978-0-385-52737-7', '2023-02-09', '2023-02-16', '2023-02-16', 0);
UPDATE User SET total_num_of_borrowed_books = total_num_of_borrowed_books + 1 WHERE user_id = '47-462-8756';


/*INSERT RESERVE BOOK*/
/*8th Junior-Senior Highschool of Chalandri*/
INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('00-000-0000', '978-0-06-089154-1', '2023-05-23 12:30:52', 'made');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('00-000-0000', '978-0-345-80350-9', '2023-05-25 10:24:46', 'made');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('14-803-9953', '978-0-321-98203-0', '2023-01-17 09:56:11', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('22-522-1653', '978-0-321-98203-0', '2023-05-27 16:02:58', 'made');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('22-522-1653', '978-0-553-21312-3', '2023-05-27 08:59:04', 'made');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('76-818-4872', '978-0-321-98203-0', '2023-05-29 22:14:23', 'made');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('78-113-7638', '978-0-553-21312-3', '2023-05-23 20:41:17', 'made');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('80-811-5247', '978-0-553-21312-3', '2023-05-24 18:34:50', 'made');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('82-399-5943', '978-0-553-21312-3', '2023-05-26 15:19:28', 'made');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('87-268-5701', '978-0-553-21312-3', '2023-05-28 23:48:10', 'made');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('89-847-1479', '978-0-553-21312-3', '2023-05-29 12:29:46', 'made');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('90-550-9411', '978-0-553-21312-3', '2023-05-27 09:55:21', 'made');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('92-106-3854', '978-0-13-468599-1', '2023-05-24 14:40:13', 'made');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('76-818-4872', '978-0-307-70145-1', '2023-02-15 10:19:45', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('00-000-0000', '978-1-4391-5864-9', '2023-03-10 21:43:23', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('78-113-7638', '978-1-4391-5864-9', '2023-04-20 19:41:13', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('22-522-1653', '978-0-679-64259-6', '2023-03-25 15:44:04', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('14-803-9953', '978-1-4391-5864-9', '2023-04-10 10:24:49', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('80-811-5247', '978-0-7167-6034-4', '2023-02-21 20:34:17', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('87-268-5701', '978-0-451-47525-1', '2023-05-02 19:13:10', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('87-268-5701', '978-0-553-21311-6', '2023-03-19 13:32:05', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('89-847-1479', '978-0-553-21311-6', '2023-03-26 11:49:25', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('89-847-1479', '978-0-307-70145-1', '2023-03-22 09:20:45', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('87-268-5701', '978-1-4391-5864-9', '2023-04-17 21:43:23', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('90-550-9411', '978-0-06-089154-1', '2023-03-01 10:49:34', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('90-550-9411', '978-0-06-112006-0', '2023-02-04 20:40:14', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('63-206-1985', '978-0-12-813802-6', '2023-05-20 22:14:56', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('76-818-4872', '978-0-399-15534-3', '2023-04-03 19:58:11', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('76-818-4872', '978-0-553-57340-0', '2023-04-03 19:56:02', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('20-739-5216', '978-0-451-20722-5', '2023-01-10 10:08:54', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('20-739-5216', '978-0-375-70643-7', '2023-01-20 17:32:44', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('20-739-5216', '978-0-13-468599-1', '2023-02-21 14:22:39', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('22-522-1653', '978-0-07-340371-3', '2023-05-15 21:19:12', 'accepted');


/*GEORGIOU ZOIS EDUCATIONAL High School*/
INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('93-561-7324', '978-0-19-882151-2', '2023-05-29 21:43:23', 'made');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('91-232-4414', '978-0-312-42757-3', '2023-05-27 23:55:13', 'made');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('91-232-4414', '978-0-552-16469-9', '2023-05-29 10:24:46', 'made');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('25-107-9977', '978-0-452-01141-5', '2023-05-26 20:30:21', 'made');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('11-528-4906', '978-0-07-352419-1', '2023-01-24 12:26:51', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('11-528-4906', '978-0-07-802316-9', '2023-04-27 14:24:19', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('93-561-7324', '978-0-13-396822-4', '2023-03-26 11:38:57', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('15-483-9550', '978-0-13-396822-4', '2023-05-01 13:57:42', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('15-483-9550', '978-0-13-441423-2', '2023-02-11 09:46:03', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('25-107-9977', '978-0-19-882151-2', '2023-03-23 16:19:51', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('60-184-0005', '978-0-452-01141-5', '2023-04-22 13:54:29', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('93-561-7324', '978-0-07-802316-9', '2023-02-21 12:29:48', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('93-561-7324', '978-0-307-59331-0', '2023-03-20 19:43:06', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('94-325-4966', '978-0-618-00197-5', '2023-04-16 09:17:47', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('94-325-4966', '978-0-440-22556-2', '2023-04-16 17:18:37', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('71-145-7153', '978-0-553-21321-6', '2023-04-10 13:45:22', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('71-145-7153', '978-0-19-882151-2', '2023-02-02 18:33:51', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('71-145-7153', '978-0-679-64209-6', '2023-03-06 09:17:47', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('91-232-4414', '978-0-679-60165-5', '2023-04-21 10:39:27', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('91-232-4414', '978-0-345-49678-6', '2023-02-21 08:39:22', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('91-232-4414', '978-0-13-441423-2', '2023-04-21 12:26:51', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('91-232-4414', '978-1-4292-1960-3', '2023-02-13 12:14:10', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('25-107-9977', '978-0-312-41958-6', '2023-03-22 17:15:34', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('25-107-9977', '978-0-345-49678-6', '2023-05-19 17:18:37', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('14-566-5720', '978-0-452-01141-5', '2023-04-10 13:125:12', 'accepted');


/*2nd Senior Highschool of Igoumenitsa*/
INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('69-093-4272', '978-0-12-803550-3', '2023-05-29 13:57:13', 'made');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('49-356-6693', '978-0-345-49678-6', '2023-05-28 09:26:36', 'made');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('85-068-9147', '978-0-446-60169-0', '2023-05-27 10:24:46', 'made');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('82-897-8319', '978-0-7432-4382-4', '2023-05-26 14:29:59', 'made');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('71-268-0650', '978-0-393-97976-5', '2023-05-29 23:04:01', 'made');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('00-833-5189', '978-0-06-057749-4', '2023-01-21 16:27:07', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('00-833-5189', '978-0-07-352258-6', '2023-04-17 22:33:53', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('82-897-8319', '978-0-06-057749-4', '2023-04-22 21:29:42', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('82-897-8319', '978-0-13-441423-2', '2023-03-10 18:46:43', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('82-897-8319', '978-0-316-12983-8', '2023-03-26 16:52:03', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('82-897-8319', '978-0-345-80324-2', '2023-01-22 19:07:21', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('78-244-3530', '978-0-345-80324-2', '2023-04-07 17:45:08', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('78-244-3530', '978-0-307-58958-2', '2023-03-22 14:05:40', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('77-585-7810', '978-0-345-39680-1', '2023-03-03 12:38:06', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('69-093-4272', '978-0-307-27884-8', '2023-02-27 13:34:03', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('78-244-3530', '978-0-07-352258-6', '2023-05-19 19:46:40', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('49-356-6693', '978-0-345-39680-1', '2023-05-23 12:17:23', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('03-217-2689', '978-0-786-72682-1', '2023-05-15 09:14:49', 'accepted');


/*Senior Highschool of Amfissa*/
INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('05-215-3486', '978-0-321-92831-3', '2023-05-29 18:42:55', 'made');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('05-215-3486', '978-0-393-60342-0', '2023-05-29 18:45:36', 'made');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('55-105-2218', '978-0-7167-6034-4', '2023-05-27 09:11:34', 'made');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('50-757-8865', '978-0-321-92831-3', '2023-03-27 11:59:08', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('50-757-8865', '978-0-451-52634-2', '2023-03-14 18:57:12', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('50-757-8865', '978-0-19-850410-3', '2023-01-11 11:17:11', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('50-757-8865', '978-0-19-850410-3', '2023-02-11 13:20:17', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('47-462-8756', '978-0-19-850410-3', '2023-05-01 22:51:02', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('47-462-8756', '978-0-312-38047-3', '2023-02-22 11:54:49', 'accepted');

INSERT INTO ReserveBook (user_id_FK, ISBN_FK, reservation_date, reservation_status)
VALUES ('47-462-8756', '978-0-385-52737-7', '2023-02-09 11:39:05', 'accepted');

/*INSERT RATE BOOK*/
/*8th Junior-Senior Highschool of Chalandri*/
INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, critique, accepted_critique)
VALUES ('14-803-9953', '978-0-321-98203-0', '3', 'good book, bad translation', 1);

INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, critique, accepted_critique)
VALUES ('76-818-4872', '978-0-307-70145-1', '5', 'great book', 1);

INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, critique, accepted_critique)
VALUES ('00-000-0000', '978-1-4391-5864-9', '5', 'greatest book ever', 1);

INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, critique, accepted_critique)
VALUES ('78-113-7638', '978-1-4391-5864-9', '1', 'badly written', 1);

INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, critique, accepted_critique)
VALUES ('22-522-1653', '978-0-679-64259-6', '4', 'the book was ok', 1);

INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, critique, accepted_critique)
VALUES ('14-803-9953', '978-1-4391-5864-9', '2', 'not my preference', 1);

INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, critique, accepted_critique)
VALUES ('80-811-5247', '978-0-7167-6034-4', '5', 'great book', 1);

INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, critique, accepted_critique)
VALUES ('87-268-5701', '978-0-451-47525-1', '4', 'very interesting', 1);

INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, critique, accepted_critique)
VALUES ('87-268-5701', '978-0-553-21311-6', '5', 'couldnt stop reading!', 1);

INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, critique, accepted_critique)
VALUES ('89-847-1479', '978-0-553-21311-6', '3', 'found it boring', 1);

INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, critique, accepted_critique)
VALUES ('89-847-1479', '978-0-307-70145-1', '4', 'the plot is very unique', 1);

INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, critique, accepted_critique)
VALUES ('87-268-5701', '978-1-4391-5864-9', '5', 'very interesting plot', 1);


/*GEORGIOU ZOIS EDUCATIONAL High School*/
INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, accepted_critique)
VALUES ('25-107-9977', '978-0-345-49678-6', '5', 1);

INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, accepted_critique)
VALUES ('11-528-4906', '978-0-07-352419-1', '2', 1);

INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, accepted_critique)
VALUES ('11-528-4906', '978-0-07-802316-9', '1', 1);

INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, accepted_critique)
VALUES ('93-561-7324', '978-0-13-396822-4', '5', 1);

INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, accepted_critique)
VALUES ('15-483-9550', '978-0-13-396822-4', '4', 1);

INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, accepted_critique)
VALUES ('25-107-9977', '978-0-19-882151-2', '3', 1);

INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, accepted_critique)
VALUES ('91-232-4414', '978-0-345-80324-2', '1', 1);

INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, accepted_critique)
VALUES ('94-325-4966', '978-0-618-00197-5', '5', 1);

INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, accepted_critique)
VALUES ('71-145-7153', '978-0-553-21321-6', '5', 1);

INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, accepted_critique)
VALUES ('25-107-9977', '978-0-312-41958-6', '2', 1);

INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, accepted_critique)
VALUES ('91-232-4414', '978-0-07-802316-9', '4', 1);


/*2nd Senior Highschool of Igoumenitsa*/
INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, accepted_critique)
VALUES ('82-897-8319', '978-0-06-057749-4', '4', 1);

INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, accepted_critique)
VALUES ('82-897-8319', '978-0-316-12983-8', '1', 1);

INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, accepted_critique)
VALUES ('78-244-3530', '978-0-307-58958-2', '3', 1);

INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, accepted_critique)
VALUES ('77-585-7810', '978-0-345-39680-1', '5', 1);

INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, accepted_critique)
VALUES ('00-833-5189', '978-0-06-057749-4', '4', 1);

INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, accepted_critique)
VALUES ('00-833-5189', '978-0-07-352258-6', '3', 1);

INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, accepted_critique)
VALUES ('82-897-8319', '978-0-13-441423-2', '5', 1);

INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, accepted_critique)
VALUES ('82-897-8319', '978-0-345-80324-2', '1', 1);

INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, accepted_critique)
VALUES ('78-244-3530', '978-0-345-80324-2', '1', 1);

INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, accepted_critique)
VALUES ('69-093-4272', '978-0-307-27884-8', '2', 1);


/*Senior Highschool of Amfissa*/
INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, accepted_critique)
VALUES ('50-757-8865', '978-0-451-52634-2', '5', 1);

INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, accepted_critique)
VALUES ('50-757-8865', '978-0-19-850410-3', '3', 1);

INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, accepted_critique)
VALUES ('50-757-8865', '978-0-321-92831-3', '4', 1);

INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, accepted_critique)
VALUES ('47-462-8756', '978-0-19-850410-3', '2', 1);

INSERT INTO RateBook (user_id_FK, ISBN_FK, Likert_rating, accepted_critique)
VALUES ('47-462-8756', '978-0-312-38047-3', '4', 1);
