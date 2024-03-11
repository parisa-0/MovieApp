create database MovieApp;

CREATE TABLE Users (
    UserID int primary key auto_increment,
    UserName varchar(255),
    Password varchar(255)
);

CREATE TABLE Movies (
    MovieID int primary key auto_increment,
    MovieName varchar(255)
);

CREATE TABLE Movies_Detail (
    MovieID int primary key,
    MovieDescription carchar(255),
    AverageRating varchar(255),
    Review varchar(255),
    YearAdded datetime
);
	

CREATE TABLE UserMoviesWatched (
    UserMovieWatchedID int primary key auto_increment,
    UserID int,
    MovieID int,
    DateMovieWatched datetime
);

alter table UserMoviesWatched
ADD CONSTRAINT FK_un2
FOREIGN KEY (UserID) REFERENCES Users (UserID);

alter table UserMoviesWatched
ADD CONSTRAINT FK_mn
FOREIGN KEY (MovieID) REFERENCES Movies (MovieID);


CREATE TABLE UserMoviesSaved (
    UserMovieSavedID int primary key auto_increment,
    UserID int,
    MovieID int,
    DateMovieSaved datetime
);


alter table UserMoviesSaved
ADD CONSTRAINT FK_un3
FOREIGN KEY (UserID) REFERENCES Users (UserID);

alter table UserMoviesSaved
ADD CONSTRAINT FK_mn2
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
