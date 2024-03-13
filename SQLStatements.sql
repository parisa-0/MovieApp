create database MovieApp;

CREATE TABLE user (
    UserID bigint primary key auto_increment,
    UserName varchar(255),
    Password varchar(255)
);

CREATE TABLE Movies (
    MovieID bigint primary key auto_increment,
    MovieName varchar(255)
);

CREATE TABLE moviesdetail (
    MovieID bigint primary key,
    MovieDescription varchar(255),
    AverageRating varchar(255),
    Review varchar(255),
    YearAdded datetime
);
	

CREATE TABLE usermovieswatched (
    usermoviewatchedid bigint primary key auto_increment,
    userid bigint,
    movieid bigint,
    datemoviewatched datetime
);

alter table usermovieswatched
ADD CONSTRAINT FK_un
FOREIGN KEY (userid) REFERENCES User (userid);

alter table usermovieswatched
ADD CONSTRAINT FK_mn
FOREIGN KEY (movieid) REFERENCES Movies (movieid);


CREATE TABLE usermoviessaved (
    usermoviesavedid int primary key auto_increment,
    userid bigint,
    movieid bigint,
    datemoviesaved datetime
);


alter table usermoviessaved
ADD CONSTRAINT FK_un2
FOREIGN KEY (UserID) REFERENCES User (UserID);

alter table usermoviessaved
ADD CONSTRAINT FK_mn3
FOREIGN KEY (MovieID) REFERENCES Movies (MovieID);

insert into users (UserName,Password)
values
('BarryAllen', 'TheFlash!10'),
('OliverQueen', 'GreenArrow!20'),
('TonyStark', 'IronMan!30'),
('ClarkKent', 'Superman!40'),
('PeterParker', 'Spiderman!5'),
('BruceWayne', 'Batman!14'),
('CharlesXavier', 'ProfX!39'),
('ScarletWitch', 'Witch!30'),
('SteveRogers', 'CaptainAmerica!32'),
('CarolDanvers', 'Mavel!13'),
('NickFury', 'Leader!20'),
('KaraZorEl', 'Supergirl!11'),
('Tchalla', 'BlackPanther!17'),
('StevenStrange', 'DrStrange!98'),
('ClintBarton', 'HawkEye!19'),
('RyanReynolds', 'GreenLantern!70'),
('BruceBanner', 'Hulk!50'),
('Logan', 'Wolverine!60'),
('DianaPrince', 'WonderWoman!100'),
('DickGrayson', 'Robin!10')

insert into movies (MovieName)
values
('The Wolf Of Wall Street'),
('Raiders Of The Lost Ark'),
('Speed'),
('The Matrix'),
('Once Upon A Time In Hollywood'),
('There Will Be Blood'),
('Singing In The Rain'),
('Goodfellas'),
('Bicyle Thieves'),
('The Dark Knight'),
('Senna'),
('Oppenheimer'),
('Kiss Kiss Bang Bang'),
('Gothika'),
('Inception'),
('Memento'),
('City Lights'),
('Jaws'),
('Star Wars'),
('Alien'),
('Pulp Fiction'),
('The Social Network'),
('Rservoir Dogs'),
('Lost In Translation'),
('Taxi Driver'),
('Modern Times'),
('Blade Runner'),
('Airplane'),
('Mad Max'),
('Brokeback Mountain'),
('The Blair Witch Project'),
('The General'),
('Eternal Sunshine Of The Spotless Mind'),
('Heat'),
('Gravity'),
('The Godfather'),
('Black Panther'),
('Bridesmaids'),
('Manchester By The Sea'),
('Oceans 11'),
('Parasite'),
('Moonlight'),
('La La Land'),
('Get Out'),
('Zodiac'),
('Gladiator'),
('No Country For Old Men'),
('Persepolis'),
('Paddington'),
('The Incredibles'),
('Ted')

insert into UserMoviesSaved (UserId, MovieId,DateMovieSaved)
values
('1', '18', NOW()),
('1', '34', NOW()),
('1', '26', NOW()),
('1', '5', NOW()),
('1', '51', NOW()),
('1', '26', NOW()),
('1', '33', NOW()),
('1', '38', NOW()),
('14', '18', NOW()),
('14', '34', NOW()),
('14', '48', NOW()),
('14', '28', NOW()),
('14', '43', NOW()),
('14', '23', NOW()),
('14', '33', NOW()),
('14', '42', NOW()),
('8', '44', NOW()),
('8', '34', NOW()),
('8', '30', NOW()),
('8', '28', NOW()),
('8', '43', NOW()),
('8', '23', NOW()),
('8', '31', NOW()),
('8', '35', NOW()),
('19', '43', NOW()),
('19', '3', NOW()),
('19', '31', NOW()),
('19', '15', NOW()),
('11', '43', NOW()),
('11', '22', NOW()),
('11', '31', NOW()),
('11', '29', NOW())



insert into UserMoviesWatched (UserMovieWatchedId,UserId, movieId, DateMovieWatched)
values
(1,'1', '48', NOW()),
(2,'1', '28', NOW()),
(3,'1', '42', NOW()),
(4,'14', '50', NOW()),
(5,'14', '39', NOW()),
(6,'14', '19', NOW()),
(7,'20', '6', NOW()),
(8,'20', '24', NOW()),
(9,'20', '10', NOW()),
(10,'20', '16', NOW()),
(11,'20', '11', NOW()),
(12,'20', '14', NOW()),
(13,'20', '7', NOW()),
(14,'20', '2', NOW()),
(15,'3', '11', NOW()),
(16,'3', '5', NOW()),
(17,'3', '7', NOW()),
(18,'3', '16', NOW()),
(19,'11', '40', NOW()),
(20,'11', '37', NOW()),
(21,'11', '51', NOW()),
(22,'11', '49', NOW())


insert into moviesdetail (movieid,moviedescription,averagerating,review,yearadded)
values
(1,'Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.','','',NOW()),
(2,'In 1936, archaeologist and adventurer Indiana Jones is hired by the U.S. government to find the Ark of the Covenant before the Nazis can obtain its awesome powers.','','',NOW()),
(3,'A young police officer must prevent a bomb exploding aboard a city bus by keeping its speed above 50 mph.','','',NOW()),
(4,'When a beautiful stranger leads computer hacker Neo to a forbidding underworld, he discovers the shocking truth the life he knows is the elaborate deception of an evil cyber-intelligence.','','',NOW()),
(5,'A faded television actor and his stunt double strive to achieve fame and success in the final years of Hollywoods Golden Age in 1969 Los Angeles.','','',NOW()),
(6,'A story of family, religion, hatred, oil and madness, focusing on a turn-of-the-century prospector in the early days of the business.','','',NOW()),
(7,'A silent film star falls for a chorus girl just as he and his delusionally jealous screen partner are trying to make the difficult transition to talking pictures in 1920s Hollywood.','','',NOW()),
(8,'The story of Henry Hill and his life in the mafia, covering his relationship with his wife Karen and his mob partners Jimmy Conway and Tommy DeVito.','','',NOW()),
(9,'In post-war Italy, a working-class mans bicycle is stolen, endangering his efforts to find work. He and his son set out to find it.','','',NOW()),
(10,'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.','','',NOW()),
(11,'A documentary on Brazilian Formula One racing driver Ayrton Senna, who won the F1 world championship three times before his death at age 34.','','',NOW()),
(12,'The story of American scientist J. Robert Oppenheimer and his role in the development of the atomic bomb.','','',NOW()),
(13,'After being mistaken for an actor, a New York thief is sent to Hollywood to train under a private eye for a potential movie role, but the duo are thrown together with a struggling actress into a murder mystery.','','',NOW()),
(14,'A psychiatrist awakens as a patient in a mental institution, with no memory of the murder she is accused of committing. As she tries to regain her memory, a vengeful spirit manipulates her.','','',NOW()),
(15,'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O., but his tragic past may doom the project and his team to disaster.','','',NOW()),
(16,'A man with short-term memory loss attempts to track down his wifes murderer.','','',NOW()),
(17,'With the aid of a wealthy erratic tippler, a dewy-eyed tramp who has fallen in love with a sightless flower girl accumulates money to be able to help her medically.','','',NOW()),
(18,'When a killer shark unleashes chaos on a beach community off Cape Cod, it is up to a local sheriff, a marine biologist, and an old seafarer to hunt the beast down.','','',NOW()),
(19,'Two Jedi escape a hostile blockade to find allies and come across a young boy who may bring balance to the Force, but the long dormant Sith resurface to claim their original glory.','','',NOW()),
(20,'The crew of a commercial spacecraft encounters a deadly lifeform after investigating a mysterious transmission of unknown origin.','','',NOW()),
(21,'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.','','',NOW()),
(22,'As Harvard student Mark Zuckerberg creates the social networking site that would become known as Facebook, he is sued by the twins who claimed he stole their idea and by the co-founder who was later squeezed out of the business.','','',NOW()),
(23,'When a simple jewelry heist goes horribly wrong, the surviving criminals begin to suspect that one of them is a police informant.','','',NOW()),
(24,'A faded movie star and a neglected young woman form an unlikely bond after crossing paths in Tokyo.','','',NOW()),
(25,'A mentally unstable veteran works as a nighttime taxi driver in New York City, where the perceived decadence and sleaze fuels his urge for violent action.','','',NOW()),
(26,'The Tramp struggles to live in modern industrial society with the help of a young homeless woman.','','',NOW()),
(27,'A blade runner must pursue and terminate four replicants who stole a ship in space and have returned to Earth to find their creator.','','',NOW()),
(28,'After the crew becomes sick with food poisoning, a neurotic ex-fighter pilot must safely land a commercial airplane full of passengers.','','',NOW()),
(29,'In a post-apocalyptic wasteland, a woman rebels against a tyrannical ruler in search for her homeland with the aid of a group of female prisoners, a psychotic worshiper and a drifter named Max.','','',NOW()),
(30,'Ennis and Jack are two shepherds who develop a sexual and emotional relationship. Their relationship becomes complicated when both of them get married to their respective girlfriends.','','',NOW()),
(31,'Three film students vanish after traveling into a Maryland forest to film a documentary on the local Blair Witch legend, leaving only their footage behind.','','',NOW()),
(32,'The real-life story of Dublin folk hero and criminal Martin Cahill, who pulled off two daring robberies in Ireland with his team, but attracted unwanted attention from the police, the I.R.A., the U.V.F., and members of his own team.','','',NOW()),
(33,'When their relationship turns sour, a couple undergoes a medical procedure to have each other erased from their memories for ever.','','',NOW()),
(34,'A group of high-end professional thieves start to feel the heat from the LAPD when they unknowingly leave a verbal clue at their latest heist.','','',NOW()),
(35,'Dr Ryan Stone, an engineer on her first time on a space mission, and Matt Kowalski, an astronaut on his final expedition, have to survive in space after they are hit by debris while spacewalking.','','',NOW()),
(36,'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.','','',NOW()),
(37,'TChalla, heir to the hidden but advanced kingdom of Wakanda, must step forward to lead his people into a new future and must confront a challenger from his countrys past.','','',NOW()),
(38,'Competition between the maid of honor and a bridesmaid, over who is the brides best friend, threatens to upend the life of an out-of-work pastry chef.','','',NOW()),
(39,'A depressed uncle is asked to take care of his teenage nephew after the boys father dies.','','',NOW()),
(40,'Danny Ocean gathers a group of his World War II compatriots to pull off the ultimate Las Vegas heist. Together the eleven friends plan to rob five Las Vegas casinos in one night.','','',NOW()),
(41,'Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.','','',NOW()),
(42,'A young African-American man grapples with his identity and sexuality while experiencing the everyday struggles of childhood, adolescence, and burgeoning adulthood.','','',NOW()),
(43,'While navigating their careers in Los Angeles, a pianist and an actress fall in love while attempting to reconcile their aspirations for the future.','','',NOW()),
(44,'A young African-American visits his white girlfriends parents for the weekend, where his simmering uneasiness about their reception of him eventually reaches a boiling point.','','',NOW()),
(45,'Between 1968 and 1983, a San Francisco cartoonist becomes an amateur detective obsessed with tracking down the Zodiac Killer, an unidentified individual who terrorizes Northern California with a killing spree.','','',NOW()),
(46,'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.','','',NOW()),
(47,'Violence and mayhem ensue after a hunter stumbles upon the aftermath of a drug deal gone wrong and over two million dollars in cash near the Rio Grande.','','',NOW()),
(48,'A precocious and outspoken Iranian girl grows up during the Islamic Revolution.','','',NOW()),
(49,'A young Peruvian bear travels to London in search of a home. Finding himself lost and alone at Paddington Station, he meets the kindly Brown family, who offer him a temporary haven.','','',NOW()),
(50,'While trying to lead a quiet suburban life, a family of undercover superheroes are forced into action to save the world.','','',NOW()),
(51,'Its 1993, and Ted the bears moment of fame has passed. Hes living back home with his best friend, John Bennett, and his family. While Ted may be a lousy influence on John, he is a loyal pal who will go out on a limb for friendship.','','',NOW())

