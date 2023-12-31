/*
   MySQL Database 
   MGIS 320 PROJECT PART 3
   Original code by Madeline Mariano, An Dang, Abby Smith, Swetha Nair
   Company: Peloton
*/

drop database if exists SSAMP_database;
create database SSAMP_database;
use SSAMP_database;


----- Customer Database--------
create table Customer
(
	CustomerID            int,
    CustCoursID           int,
    FirstName             char(100),
    LastName              char(100),
    CustomerAddress       varchar(255),
    PaymentType           char(100),
    PhoneNumber           int,
    Email                 varchar(255),
    primary key (CustomerID)
);

insert into Customer (CustomerID, CustCourseID, FirstName, LastName, CustomerAddress, PaymentType, PhoneNumber, Email)
values
 
	(0001,	270001,	"Anna",	"Apple",	"1234 Main ST, Rochester NY 14623",	"Visa Credit",	7034019485,	"an.app@hotmail.com"),
	(0002,	270002,	"Boris", "Bank",	"1235 Main ST, Rochester NY 14623",	"Discover Credit",	5713059382,	"bank_boris@gmail.com"),
	(0003,	270003,	"Cameron",	"Carrot",	"1236 Main ST, Rochester NY 14623",	"Discover Credit",	5853494930,	"c_carrot@gmail.com"),
    (0004,	270004,	"Derek",	"Door",	"1237 Main ST, Rochester NY 14623",	"MasterCard Credit",	3154962034,	"ddoor11@gmail.com"),
	(0005,	270005,	"Evelyn",	"Exit",	"1238 Main ST, Rochester NY 14623",	"Visa Credit",	7067483928,	"goodbye_e@hotmail.com"),
	(0006,	270006,	"Fred",	"Fish",	"1239 Main ST, Rochester NY 14623",	"MasterCard Credit",	6783927293,	"fishing_is_life@yahoo.com"),
	(0007,	270007,	"Greg",	"Gong",	"1240 Main ST, Rochester NY 14623",	"Paypal",	7034309432,	"greg_gong@hotmail.com"),
	(0008,	270008,	"Harry",	"Hat",	"1241 Main ST, Rochester NY 14623",	"Paypal",	5128395342,	"hat.harry@gmail.com"),
	(0009,	270009,	"Ivanka",	"Inchworm",	"1242 Main ST, Rochester NY 14623",	"Paypal",	2617458375,	"worm_or_ivanka@hotmail"),
	(0010,	270010,	"Jane",	"Jacket",	"1000 Main ST, Rochester NY 14623",	"Paypal",	5023459862,	"jjacket_purple@gmail.com"),
	(0011,	270011,	"Kristen",	"King",	"1204 Main ST, Rochester NY 14623",	"Visa Credit",	5718889287,	"king.kristy@yahoo.com"),
	(0012,	270012,	"Laura",	"Love",	"1214 Main ST, Rochester NY 14623",	"Visa Credit",	3249084723,	"live_laugh_love@hotmail.com"),
	(0013,	270013,	"Matt",	"Murdock",	"1232 Main ST, Rochester NY 14623",	"Visa Credit",	9854567383,	"matty.mur@gmail.com"),
	(0014,	270014,	"Nora",	"Next",	"2134 Main ST, Rochester NY 14623",	"MasterCard Credit",	7382947853,	"thanks.next99@hotmail.com"),
	(0015,	270015,	"Oliver",	"Orange",	"1284 Main ST, Rochester NY 14623",	"MasterCard Credit",	9013829485,	"orange.juice3@gmail.com"),
	(0016,	270016,	"Paige",	"Penny",	"1294 Main ST, Rochester NY 14623",	"Visa Credit",	7578967384,	"is.penny.a.dime@hotmail.com"),
	(0017,	270017,	"Quinn",	"Question",	"1295 Main ST, Rochester NY 14623",	"Paypal",	4564728394,	"dont_ask_me@yahoo.com"),
	(0018,	270018,	"Rafael",	"Rowboat",	"1253 Main ST, Rochester NY 14623",	"Paypal",	4078274957,	"boat_lover@hotmail.com"),
	(0019,	270019,	"Silas",	"Silver",	"1254 Main ST, Rochester NY 14623",	"Visa Credit",	5085557829,	"silver.fox@yahoo.com"),
	(0020,	270020,	"Tristan",	"Trips",	"1264 Main ST, Rochester NY 14623",	"Discover Credit",	9078495765,	"rather_stayhome@yahoo.com"),
	(0021,	270021,	"Uma",	"Umbrella",	"1274 Main ST, Rochester NY 14623",	"Discover Credit",	2156784356,	"rihannah.queen@gmail.com"),
	(0022,	270022,	"Veda",	"Voyager",	"8796 Main ST, Rochester NY 14623",	"Visa Credit",	7032227584,	"adventure.123@gmail.com"),
	(0023,	270023,	"William",	"Waffle",	"1332 Main ST, Rochester NY 14623",	"Visa Credit",	5719994035,	"ilovejonasbrothers@hotmail.com"),
	(0024,	270024,	"Ximena",	"Xenon",	"1052 Main ST, Rochester NY 14623",	"Discover Credit",	8472930495,	"nice.lastname@yahoo.com"),
	(0025,	270025,	"Yael",	"Yoga",	"4034 Main ST, Rochester NY 14623",	"Paypal",	3859384036,	"ilivenear_lululemon@hotmail.com"),
	(0026,	270026,	"Zahra",	"Zebra",	"5902 Main ST, Rochester NY 14623",	"Visa Credit",	9384950305,	"gotothezoo.once@yahoo.com");

----- MembershipPlan Database--------
create table MembershipPlan
(
	MembershipPlanID     int,
    MembershipFee        decimal(5,5),
    PlanDescription      varchar(255),
    Monthly              bool,
    primary key (MembershipPlanID)
);

insert into MembershipPlan (RentalPlanID, PlanDescription, Cost)
values
(90001,	0,	"A collection of free classes. Activity tracking, step-by-step gym programs, live metrics, & more. Classes from home or on the go with your favorite smart devices",	FALSE),
(90002,	12.99,	"No limits on strength, cardio, Pilates, yoga, outdoor running, and more classes, 3 cardio equipment classes per month: cycling, running, walking, and rowing. Excludes Lanebreak and Scenic content. Activity tracking, step-by-step gym programs, live metrics, & other featuresMotivating music during class, from beloved classics to recent hits",	TRUE),
(90003,	24,	"No limits on strength, cardio, Pilates, yoga, outdoor running, and more classes. No limit on cardio equipment classes per month: cycling, running, walking, and rowing. Excludes Lanebreak and Scenic content. Activity tracking, step-by-step gym programs, live metrics, & other features. Motivating music during class, from beloved classics to recent hits. Exclusive classes, featuring special guests and more.Ability to use a cadence monitor with any cycling workout to track live metrics",	TRUE),
(90004,	89,	"Includes App+ Membership, rental Bike or Bike+, and cycling shoes",	TRUE),
(90005,	44,	"Includes App+ Membership and content exclusively for Peloton equipment",	TRUE),
(90006,	24,	"Includes App+ Membership and content exclusively for Guide",	TRUE);

----- RentalPlan Database--------
create table RentalPlan
(
	RentalPlanID    char(10),
    PlanDescription varchar(255),
	Cost            decimal(6,5),
    primary key (RentalPlanID)
);

insert into RentalPlan (RentalPlanID, PlanDescription, Cost)
values
("210001",	"Plus $150 one-time delivery fee
Cancel anytime, we’ll pick it up for free
Worry-free warranty for the duration of your rental
Peloton Rental Membership included ($44/mo value)
One pair of cycling shoes included ($125 value)
Option to buy out your Bike at any time",	89.00),
("210002",	"""Plus $150 one-time delivery fee
Cancel anytime, we’ll pick it up for free
Worry-free warranty for the duration of your rental
Peloton Rental Membership included ($44/mo value)
One pair of cycling shoes included ($125 value)
Option to buy out your Bike+ at any time",	119.00);

----- Product Type --------
create table ProductType
(
	ProductTypeID        char(50),
    ProductDescription   varchar(255),
    primary key (ProductTypeID)
);

insert into ProductType (ProductTypeID, ProductDesciption)
values
("Stationary Bike",	"Immersive 21.5 inchh HD touchscreen gives you a front-row seat in every class
Resistance knob for manual control
In-workout metrics like heart rate, output, cadence, and resistance
Pair your heart rate monitor or download the Peloton Watch App to track your workouts"),
("Treadmill", "A comfortable and quiet running belt with 59inch of space"),
("Rower",	"Smooth and nearly silent: Peloton Row’s advanced electronically controlled resistance allows for each stroke to be smooth and nearly silent."),
("Dumbells",	"Ergonomically designed pair of cast iron weights featuring natural rubberized coating for a non-slip grip so you can focus on pushing your limits. Depictions of weight measurements may differ based on territory."),
("Yoga Blocks",	"Set of 2. Our sturdy, EVA foam yoga blocks provide extra lift and balance when reaching for new or challenging poses. With three different height options, find just the right amount of support to enhance your practice."),
("Altos Cycling Shoes",	"Made with a single hook and loop strap to easily put on and remove, Altos are our most innovative cycling shoes yet. Its single-piece textile jacquard upper eliminates unnecessary seams. Runs true to the size of your everyday shoe. Most suitable for narrow to normal fit. Cleats included."),
("Heart Rate Monitor",	"Our ANT+ and BLE chest strap is comfortable and connects instantly to track your heart rate every workout."),
("Cycling Shoes",	"Comfortable indoor cycling shoes with a breathable upper and mesh vent on the base. Features a quick ratchet clip, plus hook and loop straps to adjust for the perfect fit."),
("Row Mat",	"Take your workouts on and off the mat, all while protecting your floor. Get the custom-made mat for Peloton Row."),
("Bike Mat",	"Protect your floors with our easy to clean mat made for the Peloton bike."),
("Resistance Bands",	"Made with high-grade natural rubber latex and premium aluminum handles. A no-slip grip made of nylon cording and rubber effortlessly steps up your training. Set of three bands: light, medium and heavy."),
("Reversible Workout Mat",	"Take your training to the floor with this premium, reversible mat. One side supports your sweatiest efforts with superior grip, and the other side allows you to flow your way to savasana on a textured surface."),
("Urbanears Sumpan Earbuds",	"We partnered with Urbanears for comfortable in-ear headphones that stay put."),
("Glass Water Bottle",	"Quench your thirst with our non-slip 16 oz. glass water bottle, made so you can easily replenish on the go."),
("Yoga Strap",	"Our adjustable nylon yoga strap gives you extra length and alignment throughout your practice. Use to improve your range of motion, and keep you feeling strong in any stretch, pose or bind."),
("Replacement TouchScreen",	"Includes a 22 inch HD replacement touchscreen for current Bike owners."),
("Pedals",	"Push yourself farther with our Delta-compatible clip⁠-⁠in pedals, usable with a variety of cycling shoes."),
("Bike Starter Set",	"Includes 1 pair of cycling shoes with cleats, 1 set of Light weights, 1 water bottle and a Bike mat."),
("Tread Starter Set",	"Includes a Peloton x Camelbak® water bottle, a reversible workout mat and 2 sets of dumbbells"),
("Row Starter", 	"Includes 1 Row Mat, 1 set of dumbbells, 1 reversible workout mat, and 1 Sport Bottle"),
("Yoga Set",	"Includes a Peloton x Camelbak® water bottle, a Special Edition workout mat, yoga blocks, and a yoga strap."),
("Guide Starter Set",	"Includes 1 reversible workout mat, 1 water bottle and 2 sets of dumbbells"),
("Bike Ultimate Set",	"Includes 1 pair of cycling shoes with cleats, 1 set of Light weights, a Bike mat, a reversible workout mat, 3 sets of dumbbells, and a water bottle."),
("Cleats",	"Cleats attach to your cycling shoes and allow you to clip in to your Peloton Bike."),
("Replacement Pod Charger",	"The Heart Rate Band Pod Charger magnetically connects to and charges your Peloton Heart Rate Band Pod in or out of the armband strap. Includes USB-C to USB-A converter");

----- Model --------
create table Model
(
	ModelID            int,
    ProductTypeID      char,
    ModelName          varchar(255),
    ModelDescription   varchar(255),
    WarrantyLength     int,
    CurrentCost        decimal(6,5),
    ColorID            char(20),
    CurrentStock       int,
    PackageOffered     char(255),
    primary key (ModelID),
    foreign key (ProductTypeID) references ProductType(ProductTypeID)
);

insert into Model (ModelID, ProductTypeID, ModelName, ModelDescription, WarrantyLength, CurrentCost, ColorID, CurrentStock, PackageOffered)
values
(12001,	"Stationary Bike",	"Bike+ Ultimate Package",	"Designed to keep you motivated and effortlessly moving from cardio to strength, yoga, and more.",	24,	2990.00,	"black",	426),
(12002,	"Stationary Bike",	"Bike Starter Package",	"The original motivating cardio machine loved by millions.",	12,	1650.00,	"gray",	387),
(12003,	"Stationary Bike",	"Peloton Bike Basics",	"The original motivating cardio machine loved by millions, a bit cheaper this time!",	2,	1095.00,	"black",	293),
(12004,	"Stationary Bike",	"Peloton Bike+ Basics",	"The original motivating cardio machine loved by millions, with the added membership bonus!",	4,	1995.00,	"black",	234),
(12005,	"Treadmill",	"Tread Ultimate Package",	"Built to go the extra mile and designed to keep you focused on the road ahead.",	4,	2905.00,	"black",	105),
(12006,	"Treadmill",	"Tread Starter Package",	"Built to go the extra mile and designed to keep you focused on the road ahead.",	3,	2835.00,	"black/red",	389),
(12007,	"Treadmill",	"Peloton Tread Classic",	"Easily adjust speed and incline, or automatically follow instructor cues with auto-incline.",	3,	2695.00,	"red"	,297),
(12008,	"Rower",	"Row Starter Package",	"Work 86% of your muscles in just 15 minutes",	4,	2925.00,	"black",	164),
(12009,	"Rower",	"Row Ultimate Package",	"Peloton Row: Work 86% of your muscles in just 15 minutes.; Accessories: Reversible workout mat, water bottle, and 4 sets of dumbbells",	6,	3070.00,	"gray",	275),
(12010,	"Rower",	"Peloton Row Classic",	"Get visual feedback on your form, so you can make improvements while you row",	4,	2745.00,	"gray",	389),
(12011,	"Dumbells",	"Dumbells 5lb"	"Set of 2. Ergonomically designed pair of cast iron weights featuring natural rubberized coating for a non-slip grip so you can focus on pushing your limits. Depictions of weight measurements may differ based on territory.",	0,	55.00,	"black",	265),
(12012,	"Dumbells",	"Dumbells 10lb"	"Set of 2. Ergonomically designed pair of cast iron weights featuring natural rubberized coating for a non-slip grip so you can focus on pushing your limits. Depictions of weight measurements may differ based on territory.",	0,	75.00,	"black",	376),
(12013,	"Dumbells",	"Dumbells 15lb"	"Set of 2. Ergonomically designed pair of cast iron weights featuring natural rubberized coating for a non-slip grip so you can focus on pushing your limits. Depictions of weight measurements may differ based on territory.",	0,	95.00,	"black",	245),
(12014,	"Dumbells",	"Dumbells 20lb"	"Set of 2. Ergonomically designed pair of cast iron weights featuring natural rubberized coating for a non-slip grip so you can focus on pushing your limits. Depictions of weight measurements may differ based on territory.",	0,	115.00,	"black",	103),
(12015,	"Dumbells",	"Dumbells 25lb"	"Set of 2. Ergonomically designed pair of cast iron weights featuring natural rubberized coating for a non-slip grip so you can focus on pushing your limits. Depictions of weight measurements may differ based on territory.",	0,	135.00,	"black",	197),
(12016,	"Dumbells",	"Dumbells 30lb"	"Set of 2. Ergonomically designed pair of cast iron weights featuring natural rubberized coating for a non-slip grip so you can focus on pushing your limits. Depictions of weight measurements may differ based on territory.",	0,	155.00,	"black",	384),
(12017,	"Yoga Blocks",	"Yoga Blocks",	"Set of 2. Our sturdy, EVA foam yoga blocks provide extra lift and balance when reaching for new or challenging poses. With three different height options, find just the right amount of support to enhance your practice.",	0,	30.00,	"black red",	264),
(12018,	"Altos Cycling Shoes",	"Altos Cycling Shoes",	"Made with a single hook and loop strap to easily put on and remove, Altos are our most innovative cycling shoes yet. Its single-piece textile jacquard upper eliminates unnecessary seams. Runs true to the size of your everyday shoe. Most suitable for narrow to normal fit. Cleats included.",	1,	145.00,	"black red",	346),
(12019,	"Altos Cycling Shoes",	"Cycling Shoes",	"Comfortable indoor cycling shoes with a breathable upper and mesh vent on the base. Features a quick ratchet clip, plus hook and loop straps to adjust for the perfect fit. Sizes are European and US. Runs true to the size of your everyday shoe. Narrow to normal fit. If you fall between sizes or have a wider foot, we recommend sizing up. Cleats included.",	1,	125.00,	"black red",	204),
(12020,	"Heart Rate Monitor",	"Heart Rate Monitor",	"Our ANT+ and BLE chest strap is comfortable and connects instantly to track your heart rate every workout",	1,	34.00,	"black",	168),
(12021,	"Yoga Strap",	"Yoga Strap",	"Our adjustable nylon yoga strap gives you extra length and alignment throughout your practice. Use to improve your range of motion, and keep you feeling strong in any stretch, pose or bind.",	1,	10.00,	"black",	198),
(12022,	"Replacement TouchScreen",	"Replacement Touchscreen",	"Includes a 22 inch HD replacement touchscreen for current Bike owners.", 	1,	375.00,	"black",	160),
(12023,	"Pedals",	"Pedals",	"Push yourself farther with our Delta-compatible clip⁠-⁠in pedals, usable with a variety of cycling shoes. Your first pair is included with your Bike purchase, but we recommend a fresh set annually.",	1,	55.00,	"black",	153),
(12024,	"Bike Starter Set",	"Bike Starter Set",	"Includes 1 pair of cycling shoes with cleats, 1 set of Light weights, 1 water bottle and a Bike mat.",	1,	205.00,	"black",	142),
(12025,	"Tread Starter Set",	"Tread Starter Set",	"Includes a Peloton x Camelbak® water bottle, a reversible workout mat and 2 sets of dumbbells.",	1,	240.00,	"black",	163),
(12026,	"Row Starter", 	"Row Starter", 	"Includes 1 Row Mat, 1 set of dumbbells, 1 reversible workout mat, and 1 Sport Bottle.",	1,	230.00,	"black",	103),
(12027,	"Yoga Set",	"Yoga Set",	"Includes a Peloton x Camelbak® water bottle, a Special Edition workout mat, yoga blocks, and a yoga strap.",	1,	125.00,	"black",	197),
(12028,	"Guide Starter Set",	"Guide Starter Set",	"Includes 1 reversible workout mat, 1 water bottle and 2 sets of dumbbells",	1,	240.00,	"black",	384),
(12029,	"Cleats",	"Cleats",	"Need an extra pair of cleats? Cleats attach to your cycling shoes and allow you to clip in to your Peloton Bike. Note: cleats are included with every shoe purchase.",	1, 	26.00,	"red",	123),
(12030,	"Replacement Pod Charger",	"Replacement Pod Charger",	"The Heart Rate Band Pod Charger magnetically connects to and charges your Peloton Heart Rate Band Pod in or out of the armband strap. Includes USB-C to USB-A converter (can charge with both USB A/C).",	1,	37.00,	"black",	142),
(12031,	"Row Mat",	"Row Mat",	"Take your workouts on and off the mat, all while protecting your floor. Get the custom-made mat for Peloton Row. Dimensions: 36 x 102 inches.",	1,	85.00,	"black",	163),
(12032,	"Bike Mat",	"Bike Mat",	"Protect your floors with our easy to clean mat made for the Peloton bike. Dimensions: 72 x 36",	1,	75.00,	"black",	204),
(12033,	"Resistance Bands",	"Resistance Bands",	"Made with high-grade natural rubber latex and premium aluminum handles. A no-slip grip made of nylon cording and rubber effortlessly steps up your training. Set of three bands: light, medium and heavy.",	1,	70.00,	"black",	187),
(12034,	"Reversible Workout Mat",	"Reversible Workout Mat",	"Take your training to the floor with this premium, reversible mat. One side supports your sweatiest efforts with superior grip, and the other side allows you to flow your way to savasana on a textured surface. Dimensions: 26 inch x 71 inch. Material: Contains Rubber. May contain latex.",	1,	70.00,	"black red",	163),
(12035,	"Urbanears Sumpan Earbuds",	"Urbanears Sumpan Earbuds",	"We partnered with Urbanears for comfortable in-ear headphones that stay put. Includes 6' cord, built-in mic, cord clip, washable earbud covers, and behind-the-neck hookup.",	1,	23.00,	"black",	234),
(12036,	"Glass Water Bottle",	"Glass Water Bottle",	"Quench your thirst with our non-slip 16 oz. glass water bottle, made so you can easily replenish on the go.",	1,	17.00,	"black",	198);

----- Course---
create table Course
(
	CourseID            int,
    ProductTypeID       char,
    CourseFocus         varchar(100),
    CourseDescription   varchar(255),
    Date                date,
    Duration            int,
    Music               varchar(100),
    BodyActivity        varchar(100),
    primary key (CourseID),
    foreign key (ProductTypeID) references ProductType(ProductTypeID)
);

insert into Course (CourseID, ProductTypeID, CourseFocus, CourseDescription, Date, Duration, Music, BodyActivity)
values
(26001,	"Stationary Bike",	"20 min Groove Ride",	"Let the power of the playlist move you. In this choreography-based class, you’ll be dancing along to the hottest beats on the Bike. No experience needed!",	07/28/2022,	20,	"Dua Lipa, Sean Paul, Zara Larsson, Young Thug",	"Cycling"),
(26002,	"Stationary Bike",	"60 min PowerZone Ride",	"Train smart with 7 zones of output customized to your fitness level. This class targets performance improvements in zones 3-6 on the power zone training scale of 1-7.",	12/03/2022,	60,	"Drake, David Guetta, Lil Wayne, Sean Paul",	"Cycling"),
(26003,	"Stationary Bike",	"30 min Low Impact Ride",	"This class is spent primarily in the saddle to give your joints a smooth ride while still giving you a good sweat. Perfect for all levels, especially those recovering from an injury.",	02/28/2023,	30,	"Justin Timberlake, RÜFÜS DU SOL, Kelis, Pete Tong",	"Cycling"),
(26004,	"Treadmill",	"Extra 10: Run",	"Keep your workout going with this quick and efficient run meant to be taken after you have already warmed up.",	01/09/2023,	10,	"Whitney Houston, Kygo, Maroon 5, Christina Aguilera",	"Running"),
(26005,	"Treadmill",	"30 min 80s Run",	"Run to the beat of a high-energy 80s playlist with a smile on your face in this fun run.",	03/02/2023,	30,	"Madonna, Whitney Houston, Queen, Phil Collins",	"Running"),
(26006,	"Treadmill",	"60 min Endurance Run",	"Find your strength and break through mental barriers as you adapt to running at a sustained, steady pace in this stamina-building run.",	05/14/2022,	60,	"Ed Sheeran, Madonna, J Balvin, Jennifer Lopez",	"Running"),
(26007,	"Rower",	"10 min Tabata Row",	"Two on, one off. This efficient style of intervals gives you a 2:1 ratio of effort to recovery, pumping you up with energy and power to take on your next challenge.",	11/10/2022,	10,	"David Guetta, John Newman, Aaliyah, Alle Farben",	"Rowing"),
(26008,	"Rower",	"20 min Advanced Beginner Row",	"Still learning but ready for more? Build on the basics with this challenging but accessible row that incorporates more advanced metrics and cues as you continue to master your rowing stroke.",	4/14/2023,	20,	"Pearl Jam, Shawn Mendes, Camila Cabello, Billy Joel",	"Rowing"),
(26009,	"Rower",	"20 min Pop Row",	"Row to the beats of an exciting pop playlist with a smile on your face in this fun row.",	3/15/2023,	20,	"Christina Aguilera, Janet Jackson, Zedd, Mariah Care",	"Rowing"),
(26010,	"Yoga Set",	"30 min Yin Yoga",	"Yin classes prioritize stability and stillness over movement, allowing us to go deeper both mentally and physically. In this class, you'll hold poses for longer amounts of time to target your connective tissues.",	2/21/23,	30,	"Stars of the Lid, Thomas Newman, Aetherium, Rafael Anton Irisarri",	"Yoga"),
(26011,	"Yoga Set",	"20 min Restorative",	"In restorative yoga, we hold poses for longer amounts of time and use props to take some or all of the effort out of the poses. Cultivate relaxation, calm the nervous system and feel restored.",	08/18/2021,	20,	"Beautiful Chorus, Outkast, OutKast, Deuter",	"Yoga"),
(26012,	"Yoga Set",	"20 min Yoga Flow",	"In this active, vinyasa-style yoga class, we'll flow from one pose to the next, linking movements with the breath. Hone your inner focus as you develop strength, flexibility and balance.",	02/03/2023,	20,	"Glass Animals, Massive Attack, Petit Biscuit, Cautious Clay",	"Yoga"),
(26013,	"Reversible Workout Mat",	"20 min Shadowboxing",	"Join the fight with Peloton Boxing! We are in your corner as you perfect your punches in this 20 min Shadowboxing class.",	02/07/2023,	20,	"Drake, Nicki Minaj, Missy Elliott, Bad Bunny"	"Cardio"),
(26014,	"Reversible Workout Mat",	"5 min Pre-Run Warm Up",	"Get your mind and muscles ready to run in this quick pre-run warm up",	11/15/2021,	5,	"Beyoncé, Spice Girls, Jay-Z",	"Stretching"),
(26015,	"Reversible Workout Mat",	"10 min Energizing Meditation",	"A guided meditation that focuses on lifting your energy",	02/16/2023,	10,	"Cooper Sams",	"Meditation");

----- Shipping---
create table Shipping
(
	ShippingID         int,
    CustomerID         int,
    PurchaseSerialNum  int,
    ShippingAddress    varchar(255),
    Price              decimal(6,5),
    Weight             decimal(6,5),
    ShippingDate       date,
    ShippingOption     char(100),
    PaymentType        char(200),
    primary key (ShippingID),
    foreign key (CustomerID) references Customer(CustomerID),
    foreign key (PurchaseSerialNum) references CustomerPurchase(PurchaseSerialNum)
);

insert into Shipping (ShippingID, CustomerID, PurchaseSerialNum, ShippingAddress, Price, Weight, ShippingDate, ShippingOption, PaymentType)
values
(80014,	0014,	90001,	"2134 Main ST, Rochester NY 14623",	29.20,	123.5,	1/15/2023,	"FedEX",	"MasterCard Credit"),
(80003,	0003,	90003,	"1236 Maple ST, Rochester NY 14623",	36.64,	158.7,	1/18/2023,	"FedEX",	"Discover Credit"),
(80008,	0008,	90004,	"1241 Jerfferson ST, Rochester NY 14623",	57.70,	458, 	1/25/2023,	"UPS",	"Paypal"),
(80018,	0018,	90005,	"1253 Main ST, Rochester NY 14623",	57.70,	458, 	3/20/2023,	"UPS",	"Paypal"),
(80025,	0025,	90006,	"1239 South ST, Rochester NY 14623",	15.87,	23.4,	4/4/2023,	"UPS",	"MasterCard Credit"),
(80026,	0026,	90007,	"1240 Main ST, Rochester NY 14623",	34.56,	145.8,	4/5/2023,	"UPS",	"Paypal"),
(80002,	0002,	90008,	"1235 West ST, Rochester NY 14623",	36.64,	158.7,	4/12/2023,	"FedEX",	"Discover Credit"),
(80009,	0009,	90009,	"1242 Main ST, Rochester NY 14623",	57.70,	458, 	4/17/2023,	"FedEX",	"Paypal"),
(80010,	0010,	90010,	"1000 East ST, Rochester NY 14623",	15.87,	23.4,	4/28/2023,	"FedEX",	"Paypal"),
(80025,	0025,	90011,	"1204 Main ST, Rochester NY 14623",	34.56,	145.8,	5/3/2023,	"UPS",	"Visa Credit"),
(80004,	0004,	90012,	"1237 Jefferson Rd, Rochester NY 14623",	34.56,	145.8,	5/4/2023,	"USPS",	"MasterCard Credit"),
(80009,	0009,	90013,	"1274 Main ST, Rochester NY 14623",	36.64,	158.7,	5/24/2023,	"USPS",	"Discover Credit"),
(80005,	0005,	90014,	"1238 Main ST, Rochester NY 14623",	34.56,	145.8,	7/18/2023,	"FedEX",	"Visa Credit"),
(80007,	0007,	90015,	"1284 North ST, Buffalo NY 14623",	36.64,	158.7,	7/24/2023,	"FedEX",	"MasterCard Credit"),
(80022,	0022,	90016,	"8796 Main ST, Rochester NY 14623",	57.70,	458, 	8/9/2023,	"USPS",	"Visa Credit"),
(80018,	0018,	90017,	"1295 South Henrietta ST, Buffalo NY 14623",	57.70,	458, 	8/12/2023,	"FedEX",	"Paypal"),
(80012,	0012,	90018,	"1214 Maple ST, Rochester NY 14623",	15.87,	23.4,	10/9/2023,	"UPS",	"Visa Credit"),
(80019,	0019,	90019,	"1254 Nathaniel ST, Binghamton NY 14623",	34.56,	145.8,	10/12/2023,	"UPS",	"Visa Credit"),
(80020,	0020,	90020,	"1264 Main ST, Rochester NY 14623",	36.64,	158.7,	11/8/2023,	"UPS",	"Discover Credit"),
(80001,	0001,	90021,	"1234 Main ST, Rochester NY 14623",	57.70,	458, 	11/14/2023,	"UPS",	"MasterCard Credit"),
(80013,	0013,	90022,	"1232 Europe ST, Rochester NY 14623",	36.64,	158.7,	11/25/2023,	"UPS",	"Visa Credit"),
(80014,	0014,	90023,	"1332 Main ST, Rochester NY 14623",	57.70,	458, 	1/16/2023,	"UPS",	"Visa Credit"),
(80016,	0016,	90024,	"1052 Main ST, Rochester NY 14623",	15.87,	23.4,	1/23/2023,	"USPS",	"Discover Credit"),
(80003,	0003,	90025,	"4034 West Henrietta ST, Rochester NY 14623",	34.56,	145.8,	3/20/2023,	"USPS",	"Paypal"),
(80008,	0008,	90026,	"5902 Main ST, Rochester NY 14623",	36.64,	158.7,	4/4/2023,	"USPS",	"Visa Credit"),
(80018,	0018,	90027,	"600 South Ave, Binghamton NY 13760",	34.56,	145.8,	4/5/2023,	"USPS",	"Visa Credit"),
(80024,	0024,	90028,	"1240 Main ST, Rochester NY 14623",	36.64,	158.7,	4/12/2023,	"FedEX",	"Paypal"),
(80025,	0025,	90029,	"1235 West ST, Rochester NY 14623",	57.70,	458, 	4/17/2023,	"UPS",	"Discover Credit"),
(80026,	0026,	90030,	"1242 Main ST, Rochester NY 14623",	15.87,	23.4,	4/28/2023,	"USPS",	"Paypal"),
(80006,	0006,	90031,	"3024 West ST Rochester NY 14623",	34.56,	145.8,	5/3/2023,	"FedEX",	"Discover Credit"),
(80007,	0007,	90032,	"1274 Main ST, Rochester NY 14623",	36.64,	158.7,	5/4/2023,	"UPS",	"Discover Credit"),
(80015,	0015,	90033,	"708 Park Point Dr, Rochester NY 14623",	57.70,	458, 	10/9/2023,	"USPS",	"Visa Credit"),
(80010,	0010,	90034,	"1000 East ST, Rochester NY 14623",	15.87,	23.4,	10/12/2023,	"USPS",	"Paypal"),
(80025,	0025,	90035,	"1232 Europe ST, Rochester NY 14623",	34.56,	145.8,	11/8/2023,	"UPS",	"Discover Credit"),
(80020,	0020,	90036,	"603 Park Point Dr, Rochester NY 14623",	36.64,	158.7,	11/14/2023,	"USPS",	"Paypal"),
(80001,	0001,	90037,	"1234 Main ST, Rochester NY 14623",	57.70,	458, 	11/25/2023,	"FedEX",	"MasterCard Credit"),
(80008,	0008,	90038,	"4034 North Henrietta ST, Rochester NY 14623",	15.87,	23.4,	12/16/2023,	"FedEX",	"Discover Credit"),
(80018,	0018,	90039,	"600 South Ave, Binghamton NY 13760",	34.56,	145.8,	12/18/2023,	"FedEX",	"Visa Credit"),
(80014,	0014,	90040,	"2134 Main ST, Rochester NY 14623",	36.64,	158.7,	12/31/2023,	"FedEX",	"MasterCard Credit"),
(80019,	0019,	90041,	"1238 North Adams ST, Rochester NY 14623",	57.70,	458, 	5/13/2023,	"UPS",	"Discover Credit");

----- CustomerPurchase---
create table CustomerPurchase
(
	PurchaseSerialNum     int,
    ModelID               int,
    Address               varchar(255),
    CustomerID            int,
    AmtPaid               decimal(6,5),
    Warranty              int,
    DateBought            date,
    Personalization       varchar(200),
    primary key (PurchaseSerialNum),
    foreign key (ModelID)    references Model(ModelID),
    foreign key (CustomerID) references Customer(CustomerID)
);

insert into CustomerPurchase (PurchaseSerialNum, ModelID, Address, CustomerID, AmtPaid, Warranty, DateBought, Personalization)
values
(90001,	12001,	80014,	0014,	1095.00,	24,	1/13/2023,	"Yoga"),
(90002,	12002,	80016,	0016,	1995.00,	48,	1/15/2023,	"Strength"),
(90003,	12003,	80003,	0003,	2229.00,	24,	1/16/2023,	"Cycling"),
(90004,	12004,	80008,	0008,	1350.00,	36,	1/23/2023,	"Meditation"),
(90005,	12005,	80018,	0018,	2350.00,	6,	3/20/2023,	"Power"),
(90006,	12006,	80025,	0025,	1590.00,	12,	4/4/2023,	"Outdoor"),
(90007,	12007,	80026,	0026,	1095.00,	18,	4/5/2023,	"Stretching"),
(90008,	12008,	80002,	0002,	1995.00,	36,	4/12/2023,	"Happy Birthday Dad!"),
(90009,	12009,	80009,	0009,	2229.00,	30,	4/17/2023,	"Congrats!"),
(90010,	12010,	80010,	0010,	1095.00,	48,	4/28/2023,	"Cycling"),
(90011,	12011,	80025,	0025,	1995.00,	12,	5/3/2023,	"Meditation"),
(90012,	12012,	80004,	0004,	2229.00,	12,	5/4/2023,	"Power"),
(90013,	12013,	80009,	0009,	1350.00,	24,	5/24/2023,	"Outdoor"),
(90014,	12014,	80005,	0005,	2350.00,	24,	7/18/2023,	"Stretching"),
(90015,	12015,	80007,	0007,	1590.00,	18,	7/24/2023,	"Yoga"),
(90016,	12016,	80022,	0022,	1095.00,	24,	8/9/2023,	"Strength"),
(90017,	12017,	80018,	0018,	1995.00,	48,	8/12/2023,	"Cycling"),
(90018,	12018,	80012,	0012,	2229.00,	24,	10/9/2023,	"Meditation"),
(90019,	12019,	80019,	0019,	1350.00,	36,	10/12/2023,	"Rafael's bike"),
(90020,	12020,	80020,	0020,	2350.00,	6,	11/8/2023,	"Congrats!"),
(90021,	12021,	80001,	0001,	1095.00,	12,	11/14/2023,	"Stretching"),
(90022,	12022,	80013,	0013,	1995.00,	18,	11/25/2023,	"Yoga"),
(90023,	12023,	80014,	0014,	2229.00,	36,	1/16/2023,	"Strength"),
(90024,	12024,	80016,	0016,	1350.00,	30,	1/23/2023,	"Cycling"),
(90025,	12025,	80003,	0003,	2350.00,	48,	3/20/2023,	"Meditation"),
(90026,	12026,	80008,	0008,	1590.00,	12,	4/4/2023,	"Congrats!"),
(90027,	12027,	80018,	0018,	1095.00,	12,	4/5/2023,	"Outdoor"),
(90028,	12028,	80024,	0024,	1995.00,	24,	4/12/2023,	"Stretching"),
(90029,	12029,	80025,	0025,	2229.00,	24,	4/17/2023,	"Yoga"),
(90030,	12030,	80026,	0026,	1350.00,	18,	4/28/2023,	"Strength"),
(90031,	12025,	80006,	0006,	1095.00,	24,	5/3/2023,	"Cycling"),
(90032,	12026,	80007,	0007,	1995.00,	48,	5/4/2023,	"Meditation"),
(90033,	12027,	80015,	0015,	2229.00,	24,	10/9/2023,	"Power"),
(90034,	12028,	80010,	0010,	1350.00,	36,	10/12/2023,	"Outdoor"),
(90035,	12029,	80025,	0025,	2350.00,	6,	11/8/2023,	"Stretching"),
(90036,	12030,	80020,	0020,	1590.00,	12,	11/14/2023,	"Outdoor"),
(90037,	12025,	80001,	0001,	1095.00,	18,	11/25/2023,	"Stretching"),
(90038,	12026,	80008,	0008,	1995.00,	36,	12/16/2023,	"Yoga Life"),
(90039,	12027,	80018,	0018,	2229.00,	30,	12/18/2023,	"Rafaels bike"),
(90040,	12028,	80014,	0014,	1350.00,	48,	12/31/2023,	"Congrats!"),
(90041,	12029,	80019,	0019,	2350.00,	12,	5/13/2023,	"Happy Birthday Mom!");

----- Rental---
create table Rental
(
	RentalID      int,
    ShippingID    int,
    CustomerID    int,
    ModelID       int, 
    RentalPlanID  int, 
    Warranty      int,
    RentalDate    date,
    primary key (RentalID),
    foreign key (ShippingID)   references Shipping(ShippingID),
    foreign key (CustomerID)   references Customer(CustomerID),
    foreign key (ModelID)      references Model(ModelID),
    foreign key (RentalPlanID) references RentalPlan(RentalPlanID)
);

insert into Rental (RentalID, ShippingID, CustomerID, ModelID, RentalPlanID, Warranty, RentalDate)
values
(35001,	80021,	0021,	12001,	210001,	24,	4/16/2023),
(35002,	80017,	0017,	12002,	210001,	48,	5/21/2023),
(35003,	80011,	0011,	12003,	210002,	24,	12/30/2023),
(35003,	80027,	0011,	12004,	210002,	36,	2/28/2023),
(35004,	80010,	0010,	12005,	210001,	6,	11/22/2023),
(35005,	80025,	0025,	12006,	210002,	12,	1/23/2023),
(35006,	80004,	0004,	12007,	210001,	18,	3/03/2023),
(35007,	80009,	0009,	12008,	210002,	36,	6/29/2023),
(35008,	80005,	0005,	12009,	210001,	30,	7/03/2023),
(35009,	80007,	0007,	12010,	210001,	48,	7/19/2023),
(35010,	80022,	0022,	12011,	210002,	12,	8/14/2025),
(35011,	80018,	0018,	12012,	210001,	12,	3/25/2023),
(35012,	80012,	0012,	12013,	210001,	24,	12/11/2023),
(35013,	80019,	0019,	12014,	210002,	24,	10/14/2023),
(35014,	80020,	0020,	12015,	210002,	18,	3/19/2023),
(35015,	80001,	0001,	12016,	210002,	12,	11/30/2023),
(35016,	80013,	0013,	12017,	210001,	6,	3/23/2023),
(35017,	80009,	0009,	12018,	210001,	24,	08/21/2023);


----- CustomerMembership---
create table CustomerMembership
(
	CustomerID         int,
    MembershipPlanID   int,
    CustomerFee        decimal(5,5),
    SmartDevices       bool,
    HealthMetric       int, 
    Ranking            int,
    ExpirationDate     date,
    foreign key (MembershipPlanID)   references MembershipPlan(MembershipPlanID),
    foreign key (CustomerID)         references Customer(CustomerID)
);

insert into CustomerMembership (CustomerID, MembershipPlanID, CustomerFee, SmartDevices, HealthMetric, Ranking, ExpirationDate)
values
(0001,	50001,	0.00,	FALSE,	55,	3401,	3/29/2024),
(0002,	50004,	79.00,	FALSE,	45,	305,	5/21/2024),
(0003,	50003,	24.00,	TRUE,	30,	4006,	3/14/2024),
(0004,	50002,	12.99,	FALSE,	40,	6784,	1/31/2024),
(0005,	50005,	44.00,	TRUE,	80,	108,	4/09/2024),
(0006,	50002,	12.99,	TRUE,	95,	34,	6/28/2024),
(0007,	50006,	24.00,	FALSE,	100,	5689,	3/30/2024),
(0008,	50002,	12.99,	TRUE,	75,	4352,	6/29/2024),
(0009,	50004,	69.00,	FALSE,	35,	4765,	7/30/2024),
(0010,	50001,	0.00,	TRUE,	70,	189,	7/29/2024),
(0011,	50002,	10.99,	FALSE,	90,	467,	8/14/2025),
(0012,	50004,	89.00,	TRUE,	100,	249,	3/29/2024),
(0013,	50001,	0.00,	FALSE,	85,	2350,	12/29/2024),
(0014,	50006,	20.00,	TRUE,	50,	3989,	10/29/2024),
(0015,	50001,	0.00,	TRUE,	30,	6678,	3/29/2024),
(0016,	50002,	12.99,	FALSE,	75,	5464,	11/30/2024),
(0017,	50006,	24.00,	FALSE,	75,	7765,	3/29/2024),
(0018,	50004,	89.00,	TRUE,	80,	1242,	3/29/2024),
(0019,	50005,	44.00,	TRUE,	95,	1095,	12/30/2024),
(0020,	50006,	20.00,	TRUE,	90,	1456,	2/28/2024),
(0021,	50001,	0.00,	FALSE,	100,	4065,	1/30/2024),
(0022,	50004,	85.00,	TRUE,	35,	7609,	1/30/2024), 
(0023,	50005,	35.00,	FALSE,	45,	4798,	3/29/2024),
(0024,	50006,	24.00,	TRUE,	55,	1543,	5/30/2024),
(0025,	50002,	11.99,	FALSE,	65,	74,	12/01/2024),
(0026,	50004,	89.00,	TRUE,	85,	2084,	12/31/2025);



