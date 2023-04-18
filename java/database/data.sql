BEGIN TRANSACTION;


INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');



INSERT INTO landmarks (name, category, description, phone, address, thumbs_up, thumbs_down, approved, hero_img, latitude, longitude, map_link)
VALUES ('The Root Beer Stand', 'Food', ' The Root Beer Stand, the wonderful eatery that signifies summer in Greater Cincinnati, opened as an A & W Root Beer Stand in 1957. Since then, Cincinnati Magazine has named it as the best place to quaff a root beer in town and ranked "The Stand" in the number 12 slot among the "Top 100 Places in Cincinnati."', '(513) 769-4349', '11566 Reading Rd, Sharonville, OH 45241', 0, 0, true, 'https://img-aws.ehowcdn.com/700x/www.onlyinyourstate.com/wp-content/uploads/2018/03/17362418_1313394472060039_2753526769913276673_n.jpg', '39.2822679', '-84.412874', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3088.2637848254303!2d-84.41287402359576!3d39.28226792390299!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x88405191a43276e9%3A0xc72d7e2a77afdbff!2sThe%20Root%20Beer%20Stand!5e0!3m2!1sen!2sus!4v1681351900744!5m2!1sen!2sus');

INSERT INTO operating_hrs (landmark_id, day_of_week, opening_time, closing_time, closed, varies)
VALUES ((SELECT landmark_id FROM landmarks WHERE name = 'The Root Beer Stand'),'Monday','11:00:00','20:00:00',false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'The Root Beer Stand'),'Tuesday','11:00:00','20:00:00',false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'The Root Beer Stand'),'Wednesday','11:00:00','20:00:00',false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'The Root Beer Stand'),'Thursday','11:00:00','20:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'The Root Beer Stand'),'Friday','11:00:00','20:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'The Root Beer Stand'),'Saturday','11:00:00','20:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'The Root Beer Stand'),'Sunday','11:00:00','20:00:00', false, false);


INSERT INTO landmarks (name, category, description, phone, address, thumbs_up, thumbs_down, approved, hero_img, latitude, longitude, map_link)
VALUES ('Boca', 'Food', 'Boca has been recognized as one of the top French Restaurants in the United States by Travel and Leisure Magazine as well as Open Table’s Top 100 Restaurants in the United States.', '(513) 542-2022', '114 E 6th St, Cincinnati, OH 45202', 0, 0, true, 'https://media-cdn.tripadvisor.com/media/photo-m/1280/17/60/30/08/boca-cincinnati-oh.jpg', '39.1029425', '-84.5138199', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3096.154939789071!2d-84.51381992360236!3d39.10294253454928!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8841b15a0ea2899f%3A0x15280d497b5df514!2sBoca!5e0!3m2!1sen!2sus!4v1681353187753!5m2!1sen!2sus');

INSERT INTO operating_hrs (landmark_id, day_of_week, opening_time, closing_time, closed, varies)
VALUES ((SELECT landmark_id FROM landmarks WHERE name = 'Boca'),'Monday','16:00:00','22:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Boca'),'Tuesday','16:00:00','22:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Boca'),'Wednesday','16:00:00','22:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Boca'),'Thursday','16:00:00','22:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Boca'),'Friday','16:00:00','22:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Boca'),'Saturday','16:00:00','22:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Boca'),'Sunday','16:00:00','22:00:00', false, false);


INSERT INTO landmarks (name, category, description, phone, address, thumbs_up, thumbs_down, approved, hero_img, latitude, longitude, map_link)
VALUES ('Skyline Chili - Ludlow', 'Food', 'Skyline is famous for their incredibly delicious Cheese Coneys and 3-Ways. Their unique chili is still made with the original secret family recipe passed down through generations of the Lambrinides family. It’s extremely craveable. Some would even say addictive. All we know is people love it.', '(513) 221-2142', '290 Ludlow Ave, Cincinnati, OH 45220', 0, 0, true, 'https://www.discovercincinnati.co/wp-content/uploads/place_rest_skyline_gas-cover.jpg', '39.1436235', '-84.5216162', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3094.367442811581!2d-84.52161622360084!3d39.14362353213741!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8841b386e5a3a045%3A0xfbff9d299db0eadc!2sSkyline%20Chili!5e0!3m2!1sen!2sus!4v1681353477658!5m2!1sen!2sus');

INSERT INTO operating_hrs (landmark_id, day_of_week, opening_time, closing_time, closed, varies)
VALUES ((SELECT landmark_id FROM landmarks WHERE name = 'Skyline Chili - Ludlow'),'Monday','10:00:00','24:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Skyline Chili - Ludlow'),'Tuesday','10:00:00','24:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Skyline Chili - Ludlow'),'Wednesday','10:00:00','24:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Skyline Chili - Ludlow'),'Thursday','10:00:00','24:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Skyline Chili - Ludlow'),'Friday','10:00:00','24:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Skyline Chili - Ludlow'),'Saturday','10:00:00','24:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Skyline Chili - Ludlow'),'Sunday','10:00:00','24:00:00', false, false);


INSERT INTO landmarks (name, category, description, phone, address, thumbs_up, thumbs_down, approved, hero_img, latitude, longitude, map_link)
VALUES ('Mochiko', 'Food', 'In 2022 Cafe Mochiko was named by Bon Appetit Magazine as one of the 50 Best New Restaurants in the country, and Chef Elaine was nominated as a semifinalist for the James Beard Awards for Outstanding Baker. In 2023 Chef Elaine was nominated as a finalist for the James Beard Awards for Outstanding Pastry Chef or Baker.', '(513) 559-1000', '1524 Madison Rd, Cincinnati, OH 45206', 0, 0, true, 'https://chrisglass.com/wp-content/uploads/2022/03/030522-cafe-mochiko-pastries-scaled.jpg', '39.1298647', '-84.4803844', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3094.9721702573506!2d-84.48038442360134!3d39.129864732953386!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8841b3baa07950c3%3A0x383112857467ad8f!2sCafe%20Mochiko!5e0!3m2!1sen!2sus!4v1681354010443!5m2!1sen!2sus');

INSERT INTO operating_hrs (landmark_id, day_of_week, opening_time, closing_time, closed, varies)
VALUES ((SELECT landmark_id FROM landmarks WHERE name = 'Mochiko'), 'Monday', NULL, NULL, true, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Mochiko'), 'Tuesday', NULL, NULL, true, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Mochiko'), 'Wednesday', NULL, NULL, true, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Mochiko'), 'Thursday', '08:00:00', '21:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Mochiko'), 'Friday', '08:00:00', '21:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Mochiko'), 'Saturday', '09:00:00', '21:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Mochiko'), 'Sunday', '09:00:00', '21:00:00', false, false);

INSERT INTO landmarks (name, category, description, phone, address, thumbs_up, thumbs_down, approved, hero_img, latitude, longitude, map_link)
VALUES ('Findlay Market', 'Food', 'Findlay Market is the only surviving municipal market house of the nine public markets operating in Cincinnati in the 19th and early 20th  century. The market house is built on land donated to the City of Cincinnati by the estate of General James Findlay (1770 - 1835) and Jane Irwin Findlay (1769 - 1851). Findlay Market is Ohio''s oldest surviving  municipal market house. It was designed under the direction of City Civil Engineer Alfred West Gilbert (1816-1900) using a durable but unconventional cast and wrought iron frame, a construction technology that had been little used in the United States. Findlay Market was  listed on the National Register of Historic Places in 1972. The structure was among the first markets in the United States to use iron  frame construction technology and is one of very few that have survived. ', '(513) 665-4839', '1801 Race St, Cincinnati, OH 45202', 0, 0, true, 'https://images.squarespace-cdn.com/content/v1/5c094a9725bf026a08cb9f9f/1584034029640-L2S48JS90472UKQCWKAD/home_FindlayMarket.jpg?format=1500w', '39.1153157', '-84.5216473', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3095.611434468649!2d-84.52164732360187!3d39.11531573381588!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8841b3f96aa9a5b3%3A0x263afcd98b6e84b0!2sFindlay%20Market!5e0!3m2!1sen!2sus!4v1681354167176!5m2!1sen!2sus');

INSERT INTO operating_hrs (landmark_id, day_of_week, opening_time, closing_time, closed, varies)
VALUES ((SELECT landmark_id FROM landmarks WHERE name = 'Findlay Market'), 'Monday', NULL, NULL, true, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Findlay Market'), 'Tuesday', '09:00:00', '18:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Findlay Market'), 'Wednesday', '09:00:00', '18:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Findlay Market'), 'Thursday', '09:00:00', '18:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Findlay Market'), 'Friday', '09:00:00', '18:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Findlay Market'), 'Saturday', '08:00:00', '18:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Findlay Market'), 'Sunday', '10:00:00', '16:00:00', false, false);


INSERT INTO landmarks (name, category, description, phone, address, thumbs_up, thumbs_down, approved, hero_img, latitude, longitude, map_link)
VALUES ('FC Cincinnati', 'Sports', 'Football Club Cincinnati, commonly known as FC Cincinnati, is an American professional soccer club based in Cincinnati. The club plays in the Eastern Conference of Major League Soccer.', '(513) 991-1803', '14 East 4th St, Cincinnati, OH', 0, 0, true, 'https://media.bizj.us/view/img/9229352/697c1278*1200xx2000-1125-0-104.jpg', '39.1111013', '-84.5248299', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3095.796572462929!2d-84.52482992360204!3d39.11110133406576!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8841b5e9feafea03%3A0x5aff5d42a3b11002!2sTQL%20Stadium!5e0!3m2!1sen!2sus!4v1681354711144!5m2!1sen!2sus');

INSERT INTO operating_hrs (landmark_id, day_of_week, opening_time, closing_time, closed, varies)
VALUES ((SELECT landmark_id FROM landmarks WHERE name = 'FC Cincinnati'), 'Monday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'FC Cincinnati'), 'Tuesday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'FC Cincinnati'), 'Wednesday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'FC Cincinnati'), 'Thursday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'FC Cincinnati'), 'Friday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'FC Cincinnati'), 'Saturday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'FC Cincinnati'), 'Sunday', NULL, NULL, false, true);

INSERT INTO landmarks (name, category, description, phone, address, thumbs_up, thumbs_down, approved, hero_img, latitude, longitude, map_link)
VALUES ('Cincinnati Reds', 'Sports', 'The Cincinnati Reds are an American professional baseball team based in Cincinnati. They compete in Major League Baseball as a member club of the National League Central division and were a charter member of the American Association in 1881 before joining the NL in 1890.', '(513) 765-7000', '100 Joe Nuxhall Way, Cincinnati, OH 45202', 0, 0, true, 'https://www.ballparksofbaseball.com/wp-content/uploads/2016/03/gab23main.jpg', '39.0973849', '84.509642', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3096.399015996696!2d-84.50964202360254!3d39.09738493487867!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8841b143589c062f%3A0x7638b0b25d4ed72!2sGreat%20American%20Ball%20Park!5e0!3m2!1sen!2sus!4v1681351763216!5m2!1sen!2sus');

INSERT INTO operating_hrs (landmark_id, day_of_week, opening_time, closing_time, closed, varies)
VALUES ((SELECT landmark_id FROM landmarks WHERE name = 'FC Cincinnati'), 'Monday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'Cincinnati Reds'), 'Tuesday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'Cincinnati Reds'), 'Wednesday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'Cincinnati Reds'), 'Thursday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'Cincinnati Reds'), 'Friday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'Cincinnati Reds'), 'Saturday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'Cincinnati Reds'), 'Sunday', NULL, NULL, false, true);

INSERT INTO landmarks (name, category, description, phone, address, thumbs_up, thumbs_down, approved, hero_img, latitude, longitude, map_link)
VALUES ('Cincinnati Bengals', 'Sports', 'The Cincinnati Bengals are a professional American football team based in Cincinnati. The Bengals compete in the National Football League as a member club of the league''s American Football Conference North division. The club''s home games are held in downtown Cincinnati at Paycor Stadium.', '(513) 621-8383', '1 Paycor Stadium | Cincinnati, Ohio 45202', 0, 0, true, 'https://cloudfront-us-east-1.images.arcpublishing.com/advancelocal/7HQC4LAMTZDF7KB4GXO5RTVNSY.jpg', '39.0954617', '-84.5186326', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3096.4834714548956!2d-84.51863262360266!3d39.095461734992575!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8841b14e8e995ab1%3A0x991715beb84d8bcb!2sPaycor%20Stadium!5e0!3m2!1sen!2sus!4v1681355640464!5m2!1sen!2sus');

INSERT INTO operating_hrs (landmark_id, day_of_week, opening_time, closing_time, closed, varies)
VALUES ((SELECT landmark_id FROM landmarks WHERE name = 'Cincinnati Bengals'), 'Monday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'Cincinnati Bengals'), 'Tuesday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'Cincinnati Bengals'), 'Wednesday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'Cincinnati Bengals'), 'Thursday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'Cincinnati Bengals'), 'Friday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'Cincinnati Bengals'), 'Saturday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'Cincinnati Bengals'), 'Sunday', NULL, NULL, false, true);

INSERT INTO landmarks (name, category, description, phone, address, thumbs_up, thumbs_down, approved, hero_img, latitude, longitude, map_link)
VALUES ('Cincinnati Rollergirls', 'Sports', 'The Cincinnati Rollergirls is Cincinnati’s amateur flat track roller derby team. A member of the Women''s Flat Track Derby Association, CRG plays its home games at Cintas Center at Xavier University and at Sports Plus in Evendale.', '(513) 818-3372', 'P.O. Box 36322. Cincinnati, OH 45236', 0, 0, true, 'https://cincinnatirollergirls.com/wp-content/uploads/elementor/thumbs/crg_091022_1985jpg_52364621023_o-puycppbu4vfd6ctkmuy332uyvwgvsqb7kypc2jtv9w.jpg', '39.1503572', '-84.474432', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3094.071417865256!2d-84.4744320236007!3d39.150357231738106!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8841b2f8dca0c0f5%3A0xbf225e354313f6ea!2sCintas%20Center!5e0!3m2!1sen!2sus!4v1681356066856!5m2!1sen!2sus');

INSERT INTO operating_hrs (landmark_id, day_of_week, opening_time, closing_time, closed, varies)
VALUES ((SELECT landmark_id FROM landmarks WHERE name = 'Cincinnati Rollergirls'), 'Monday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'Cincinnati Rollergirls'), 'Tuesday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'Cincinnati Rollergirls'), 'Wednesday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'Cincinnati Rollergirls'), 'Thursday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'Cincinnati Rollergirls'), 'Friday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'Cincinnati Rollergirls'), 'Saturday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'Cincinnati Rollergirls'), 'Sunday', NULL, NULL, false, true);

INSERT INTO landmarks (name, category, description, phone, address, thumbs_up, thumbs_down, approved, hero_img, latitude, longitude, map_link)
VALUES ('Rhinegeist', 'Brewery', 'Taproom located in a historic bottling plant offering house-brewed beers, Ping-Pong, cornhole & TVs.', '(513) 381-1367', '1910 Elm St, Cincinnati, OH 45202', 0, 0, true, 'https://d24v69n0tr7hm9.cloudfront.net/wp-content/uploads/2018/07/03161434/visit-hero.png', '39.1172664', '-84.5201012', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3734.7948718634975!2d-84.52056646619724!3d39.11671891197333!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8841b3f9acd61b67%3A0x402ea6be65897064!2sRhinegeist%20Brewery!5e0!3m2!1sen!2sus!4v1681356635017!5m2!1sen!2sus');

INSERT INTO operating_hrs (landmark_id, day_of_week, opening_time, closing_time, closed, varies)
VALUES ((SELECT landmark_id FROM landmarks WHERE name = 'Rhinegeist'),'Monday','15:00:00','22:00:00',false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Rhinegeist'),'Tuesday','15:00:00','22:00:00',false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Rhinegeist'),'Wednesday','15:00:00','22:00:00',false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Rhinegeist'),'Thursday','15:00:00','22:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Rhinegeist'),'Friday','11:00:00','24:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Rhinegeist'),'Saturday','12:00:00','24:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Rhinegeist'),'Sunday','12:00:00','21:00:00', false, false);

INSERT INTO landmarks (name, category, description, phone, address, thumbs_up, thumbs_down, approved, hero_img, latitude, longitude, map_link)
VALUES ('Madtree', 'Brewery', 'Bustling taproom offering craft beers, wood-fired pizzas, growler fills & keg sales, plus a patio.', '(513) 836-8733', '3301 Madison Rd, Cincinnati, OH 45209', 0, 0, true, 'https://ohiomagazine.imgix.net/sitefinity/images/default-source/articles/2019/02---february-2019/madtree-interior-2.jpg?sfvrsn=74d9a938_2&w=960&auto=compress%2cformat', '39.1563092', '-84.4265755', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3093.80972219786!2d-84.42657545916461!3d39.15630923150296!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8841ad6e2118ee3d%3A0xf7fabe0d67ce78bc!2sMadTree%20Brewing!5e0!3m2!1sen!2sus!4v1681357646355!5m2!1sen!2sus');

INSERT INTO operating_hrs (landmark_id, day_of_week, opening_time, closing_time, closed, varies)
VALUES ((SELECT landmark_id FROM landmarks WHERE name = 'Madtree'),'Monday','11:00:00','23:00:00',false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Madtree'),'Tuesday','11:00:00','23:00:00',false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Madtree'),'Wednesday','11:00:00','23:00:00',false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Madtree'),'Thursday','11:00:00','23:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Madtree'),'Friday','10:00:00','24:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Madtree'),'Saturday','10:00:00','24:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Madtree'),'Sunday','10:00:00','24:00:00', false, false);

INSERT INTO landmarks (name, category, description, phone, address, thumbs_up, thumbs_down, approved, hero_img, latitude, longitude, map_link)
VALUES ('Fifty West Brewing Company', 'Brewery', 'Offers craft beer brewery, restaurant for lunch and dinner, sand volleyball courts, canoe and kayak rental, bicycle rental, Sunday brunch, running club, craft beer, and brewery services. Located next to the Little Miami Scenic Trail.', '(513) 834-8789', '7605 Wooster Pike, Cincinnati, OH 45227', 0, 0, true, 'https://fiftywestbrew.com/wp-content/uploads/sites/90/2022/12/BrewpubExterior-1-1500x844.jpg', '39.1394493', '-84.3560129', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1547.2754646572682!2d-84.35601285122674!3d39.13944926403053!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8841ab3bd0757057%3A0x66343d3fbfbbb889!2sFifty%20West%20Brewpub!5e0!3m2!1sen!2sus!4v1681358017294!5m2!1sen!2sus');

INSERT INTO operating_hrs (landmark_id, day_of_week, opening_time, closing_time, closed, varies)
VALUES ((SELECT landmark_id FROM landmarks WHERE name = 'Fifty West Brewing Company'),'Monday','11:00:00','23:00:00',false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Fifty West Brewing Company'),'Tuesday','11:00:00','23:00:00',false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Fifty West Brewing Company'),'Wednesday','11:00:00','23:00:00',false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Fifty West Brewing Company'),'Thursday','11:00:00','23:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Fifty West Brewing Company'),'Friday','11:00:00','23:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Fifty West Brewing Company'),'Saturday','11:00:00','23:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Fifty West Brewing Company'),'Sunday','11:00:00','21:00:00', false, false);

INSERT INTO landmarks (name, category, description, phone, address, thumbs_up, thumbs_down, approved, hero_img, latitude, longitude, map_link)
VALUES ('American Sign Museum', 'Historic', 'This museum features a collection of over 100 years of American signage, including neon signs, electric signs, and other types of advertising and marketing materials.', '(513) 541-6366', '1330 Monmouth Ave, Cincinnati, OH 45225', 0, 0, true, 'https://www.ohiotraveler.com/wp-content/uploads/2016/07/American-Sign-Museum-by-Alias-Imaging.jpg', '39.1434819', '-84.5426437', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3094.37366733047!2d-84.54264372360088!3d39.143481932145896!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8841b4665765cc9f%3A0xb1a2d0a73e91ab13!2sAmerican%20Sign%20Museum!5e0!3m2!1sen!2sus!4v1681358208454!5m2!1sen!2sus');

INSERT INTO operating_hrs (landmark_id, day_of_week, opening_time, closing_time, closed, varies)
VALUES ((SELECT landmark_id FROM landmarks WHERE name = 'American Sign Museum'), 'Monday', NULL, NULL, true, false),
((SELECT landmark_id FROM landmarks WHERE name = 'American Sign Museum'), 'Tuesday', NULL, NULL, true, false),
((SELECT landmark_id FROM landmarks WHERE name = 'American Sign Museum'), 'Wednesday', '10:00:00', '16:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'American Sign Museum'), 'Thursday', '10:00:00', '16:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'American Sign Museum'), 'Friday', '10:00:00', '16:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'American Sign Museum'), 'Saturday', '10:00:00', '16:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'American Sign Museum'), 'Sunday', NULL, NULL, true, false);

INSERT INTO landmarks (name, category, description, phone, address, thumbs_up, thumbs_down, approved, hero_img, latitude, longitude, map_link)
VALUES ('Serpent Mound State Memorial', 'Historic', 'The Great Serpent Mound is a 1,348-foot-long, three-foot-high prehistoric effigy mound located in Peebles, Ohio. It was built on what is known as the Serpent Mound crater plateau, running along the Ohio Brush Creek in Adams County, Ohio. The mound is the largest serpent effigy in the world', '(800) 752-2757', '3850 OH-73, Peebles, OH 45660', 0, 0, true, 'https://i0.wp.com/worldheritageohio.org/wp-content/support/sites/site-serpent.jpg', '39.0252455', '-83.4327731', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3099.5645579111006!2d-83.43277312360514!3d39.02524553914982!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8846d09a5c319709%3A0xacd28418cfc04e!2sSerpent%20Mound%20State%20Memorial!5e0!3m2!1sen!2sus!4v1681358483359!5m2!1sen!2sus');

INSERT INTO operating_hrs (landmark_id, day_of_week, opening_time, closing_time, closed, varies)
VALUES ((SELECT landmark_id FROM landmarks WHERE name = 'Serpent Mound State Memorial'), 'Monday', '10:00:00', '17:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Serpent Mound State Memorial'), 'Tuesday', '10:00:00', '17:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Serpent Mound State Memorial'), 'Wednesday', '10:00:00', '17:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Serpent Mound State Memorial'), 'Thursday', '10:00:00', '17:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Serpent Mound State Memorial'), 'Friday', '10:00:00', '17:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Serpent Mound State Memorial'), 'Saturday', '10:00:00', '17:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Serpent Mound State Memorial'), 'Sunday', '12:00:00', '17:00:00', false, false);

INSERT INTO landmarks (name, category, description, phone, address, thumbs_up, thumbs_down, approved, hero_img, latitude, longitude, map_link)
VALUES ('Norwood Mound', 'Historic', 'Norwood Mound, also known as “Indian Mound” by locals, is a prehistoric Native American earthwork mound located in Norwood, Ohio, United States, believed to be at least 2000 years old.', NULL, '2413 Indian Mound Ave, Cincinnati, OH 45212, USA', 0, 0, true, 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Norwood_Mound_from_the_southwest.jpg/1200px-Norwood_Mound_from_the_southwest.jpg', '39.1679122', '-84.4482764', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3093.2994691724666!2d-84.44827642359998!3d39.167912230696594!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8841b2a278e49f73%3A0x2e46128d7e6130e8!2sNorwood%20Mound!5e0!3m2!1sen!2sus!4v1681358664364!5m2!1sen!2sus');

INSERT INTO operating_hrs (landmark_id, day_of_week, opening_time, closing_time, closed, varies)
VALUES ((SELECT landmark_id FROM landmarks WHERE name = 'Norwood Mound'), 'Monday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'Norwood Mound'), 'Tuesday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'Norwood Mound'), 'Wednesday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'Norwood Mound'), 'Thursday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'Norwood Mound'), 'Friday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'Norwood Mound'), 'Saturday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'Norwood Mound'), 'Sunday', NULL, NULL, false, true);

INSERT INTO landmarks (name, category, description, phone, address, thumbs_up, thumbs_down, approved, hero_img, latitude, longitude, map_link)
VALUES ('Harriet Beecher Stowe House', 'Historic', 'The Harriet Beecher Stowe House is a historic home in Cincinnati, Ohio which was once the residence of influential anti slavery author Harriet Beecher Stowe, author of the 1852 novel Uncle Tom''s Cabin.', '(513) 751-0651', '2950 Gilbert Ave, Cincinnati, OH 45206
', 0, 0, true, 'https://ohio.org/static/uploads/0688y000000pvcMAAQ.png', '39.1331569', '-84.4899151', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3094.827487565016!2d-84.48991512360126!3d39.13315693275831!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8841b3b6cdfd223b%3A0xd8d3e6f431f1d790!2sHarriet%20Beecher%20Stowe%20House!5e0!3m2!1sen!2sus!4v1681359118153!5m2!1sen!2sus');

INSERT INTO operating_hrs (landmark_id, day_of_week, opening_time, closing_time, closed, varies)
VALUES ((SELECT landmark_id FROM landmarks WHERE name = 'Harriet Beecher Stowe House'), 'Monday', NULL, NULL, true, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Harriet Beecher Stowe House'), 'Tuesday', NULL, NULL, true, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Harriet Beecher Stowe House'), 'Wednesday', NULL, NULL, true, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Harriet Beecher Stowe House'), 'Thursday', '10:00:00', '16:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Harriet Beecher Stowe House'), 'Friday', '10:00:00', '16:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Harriet Beecher Stowe House'), 'Saturday', '10:00:00', '16:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Harriet Beecher Stowe House'), 'Sunday', NULL, NULL, true, false);

INSERT INTO landmarks (name, category, description, phone, address, thumbs_up, thumbs_down, approved, hero_img, latitude, longitude, map_link)
VALUES ('Bobby Mackeys', 'Haunted', 'On the 2 hour tour, you are taken around all accessible areas of the building.  Your tour guide is with you at all times and provides information on the history of the location and reported paranormal activity.  We will spend time in each area to allow for a brief paranormal investigation.  You are welcome to bring small, handheld equipment such as recorders, EMF meters, camera, etc.', '(859) 431-5588', '44 Licking Pike, Wilder, KY 41071', 0, 0, true, 'https://creepycincinnati.files.wordpress.com/2014/04/dscn1472.jpg', '39.0733538', '-84.4955359', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3097.4540678037856!2d-84.49553592349409!3d39.07335383630198!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8841b11b05bcd3f3%3A0x7a493810ab51566!2sBobby%20Mackey&#39;s!5e0!3m2!1sen!2sus!4v1681745733301!5m2!1sen!2sus');

INSERT INTO operating_hrs (landmark_id, day_of_week, opening_time, closing_time, closed, varies)
VALUES ((SELECT landmark_id FROM landmarks WHERE name = 'Bobby Mackeys'), 'Monday', '19:00:00', '21:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Bobby Mackeys'), 'Tuesday', '19:00:00', '21:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Bobby Mackeys'), 'Wednesday', '19:00:00', '21:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Bobby Mackeys'), 'Thursday', '19:00:00', '21:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Bobby Mackeys'), 'Friday', NULL, NULL, true, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Bobby Mackeys'), 'Saturday', NULL, NULL, true, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Bobby Mackeys'), 'Sunday', '19:00:00', '21:00:00', false, false);

INSERT INTO landmarks (name, category, description, phone, address, thumbs_up, thumbs_down, approved, hero_img, latitude, longitude, map_link)
VALUES ('Lick Road', 'Haunted', 'A ghost named Amy is said to haunt the end of the long, desolate road.  There are many tales of how Amy had died, but the most popular is that she was murdered by her boyfriend.  Witnesses have reported hearing footsteps following them, others have spotted a ghostly girl walking the grounds.  Another legend states that if one flicks their headlights at the sign, you can see “Amy” written on the sign. Other legends states that one might hear screams, or even see the word “Help” scrawled in the condensation on the window of your car while parked in the cul-de-sac.', NULL, 'Lick Rd, Colerain Township, OH 45251', 0, 0, true, 'https://creepycincinnati.files.wordpress.com/2011/11/lick-road-gate.jpg', '39.3098791', '-84.608904', 'https://www.google.com/maps/embed?pb=!1m17!1m12!1m3!1d771.7619053529011!2d-84.60959073036628!3d39.30984403588237!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m2!1m1!2zMznCsDE4JzM1LjQiTiA4NMKwMzYnMzIuMiJX!5e0!3m2!1sen!2sus!4v1681359531445!5m2!1sen!2sus');

INSERT INTO operating_hrs (landmark_id, day_of_week, opening_time, closing_time, closed, varies)
VALUES ((SELECT landmark_id FROM landmarks WHERE name = 'Lick Road'), 'Monday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'Lick Road'), 'Tuesday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'Lick Road'), 'Wednesday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'Lick Road'), 'Thursday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'Lick Road'), 'Friday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'Lick Road'), 'Saturday', NULL, NULL, false, true),
((SELECT landmark_id FROM landmarks WHERE name = 'Lick Road'), 'Sunday', NULL, NULL, false, true);

INSERT INTO landmarks (name, category, description, phone, address, thumbs_up, thumbs_down, approved, hero_img, latitude, longitude, map_link)
VALUES ('Spring Grove Cemetery', 'Haunted', 'One legend revolves around the grave of Charles Breuer, upon which a bust of Charles sits.  Late one evening, a visitor is said to have witnessed one of the eyes popping out of the head of the bust, landing beside the visitor’s foot, and then turning toward the visitor, squelching wetly as it moved. Another frightening tale involved a mausoleum that opens up to reveal a pair of snarling white dogs, eyes aglow with blue fire, that let out blood-curdling howls.', '(513) 681-7526', '4521 Spring Grove Ave. Cincinnati, OH 45232', 0, 0, true, 'https://www.onlyinyourstate.com/wp-content/uploads/2018/03/39981548401_1f33e20085_b.jpg', '39.1743429', '-84.5275855', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3093.016618346244!2d-84.52758552359973!3d39.17434293031511!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8841b4a1f5fa9487%3A0xfdc7e1db79a92d63!2sSpring%20Grove!5e0!3m2!1sen!2sus!4v1681359711336!5m2!1sen!2sus');

INSERT INTO operating_hrs (landmark_id, day_of_week, opening_time, closing_time, closed, varies)
VALUES ((SELECT landmark_id FROM landmarks WHERE name = 'Spring Grove Cemetery'), 'Monday', '08:00:00', '18:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Spring Grove Cemetery'), 'Tuesday', '08:00:00', '18:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Spring Grove Cemetery'), 'Wednesday', '08:00:00', '18:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Spring Grove Cemetery'), 'Thursday', '08:00:00', '18:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Spring Grove Cemetery'), 'Friday', '08:00:00', '18:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Spring Grove Cemetery'), 'Saturday', '08:00:00', '18:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Spring Grove Cemetery'), 'Sunday', '08:00:00', '18:00:00', false, false);

INSERT INTO reviews (landmark_id, user_id, title, description) VALUES ((SELECT landmark_id FROM landmarks WHERE name = 'Bobby Mackeys'), '1', 'Ghosts everywhere!', 'I went out for a simple burger, but instead was inundated with ghosts trying to also order burgers.  I really wish they could solve their ghost issues at this place.');
INSERT INTO reviews (landmark_id, user_id, title, description) VALUES ((SELECT landmark_id FROM landmarks WHERE name = 'Bobby Mackeys'), '2', 'Just wanted a burger', 'Someone call the Ghostbusters. Too many ghouls. I just wanted some sliders without having to deal with dead people everywhere.');

INSERT INTO reviews (landmark_id, user_id, title, description) VALUES ((SELECT landmark_id FROM landmarks WHERE name = 'Lick Road'), '1', 'Misinformation', 'There were haunted things everywhere, but they were mostly ghost dogs and muskrats.');
INSERT INTO reviews (landmark_id, user_id, title, description) VALUES ((SELECT landmark_id FROM landmarks WHERE name = 'Spring Grove Cemetery'), '1', 'So many graves', 'There was at least one dead person in each grave!');
INSERT INTO reviews (landmark_id, user_id, title, description) VALUES ((SELECT landmark_id FROM landmarks WHERE name = 'Cincinnati Bengals'), '2', 'False advertising', 'Very few actual Bengal tigers');
INSERT INTO reviews (landmark_id, user_id, title, description) VALUES ((SELECT landmark_id FROM landmarks WHERE name = 'Skyline Chili - Ludlow'), '1', 'Help!', 'Trapped in the bathroom, need someone to call for help');
INSERT INTO reviews (landmark_id, user_id, title, description) VALUES ((SELECT landmark_id FROM landmarks WHERE name = 'Skyline Chili - Ludlow'), '2', 'Tiny crackers', 'If you like those little tiny crackers that are shaped like hexagons, you are gonna love this place.');
INSERT INTO reviews (landmark_id, user_id, title, description) VALUES ((SELECT landmark_id FROM landmarks WHERE name = 'Cincinnati Reds'), '2', 'Big Red Machine!', 'They got the brats and mets with the best mustard in town.');
INSERT INTO reviews (landmark_id, user_id, title, description) VALUES ((SELECT landmark_id FROM landmarks WHERE name = 'Fifty West Brewing Company'), '1', 'I am leaving a review', 'This is the first reviews I have ever left on the internet.  I will be forever remembered.');
INSERT INTO reviews (landmark_id, user_id, title, description) VALUES ((SELECT landmark_id FROM landmarks WHERE name = 'The Root Beer Stand'), '2', 'Root', 'There are so many roots.  Why did they choose a place with roots if they are a root beer stand?');

INSERT INTO reviews (landmark_id, user_id, title, description) VALUES ((SELECT landmark_id FROM landmarks WHERE name = 'FC Cincinnati'), '2', 'Soccer is interesting', 'It is a lot like Riverdancing, no one is allowed to use their hands');


INSERT INTO itineraries (user_id, name, date)
VALUES (1, 'test', '2023-05-05');

INSERT INTO itinerary_details (itin_id, landmark_id, sequence_number) VALUES 
(1, 1, 12),
(1, 2, 11),
(1, 3, 10),
(1, 4, 1),
(1, 5, 2),
(1, 6, 3),
(1, 7, 4),
(1, 8, 5),
(1, 9, 6),
(1, 10, 7),
(1, 11, 8),
(1, 12, 9);


COMMIT TRANSACTION;