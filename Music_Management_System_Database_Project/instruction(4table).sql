/*create table: appRole*/
create table appRole (
roleID INT PRIMARY KEY not null,
roleName varchar(15)
); 

/*create table: Administrator_Info*/
CREATE TABLE Administrator_Info
(adminID int not null primary key,
 adminName varchar2(20) not null,
 emailAdd varchar2(50) not null,
 phoneNo int,
 recoEmail varchar2(50) not null,
 password varchar2(21) not null,
 region varchar(20) not null,
 gender varchar(10),
 approleID
 REFERENCES appRole(roleID)
);

create table Producer_info(
prodID int not null primary key,
roleID int not null,
prodName varchar2(20) not null,
emailAdd varchar2(50) not null,
password varchar2(20) not null,
region varchar(20),
gender varchar(10),
phoneNo int,
recoEmail varchar2(50)not null
);

create table Artist (
artistID int not null primary key,
bandID int not null,
prodID int not null,
artistName varchar2(20) not null,
gender varchar(10) not null,
debutDate date not null,
artistDescription varchar2(300)
);

alter table artist
add constraint FK_artist_producer FOREIGN key (prodID) REFERENCES Producer_Info(prodID);

/*create table: Pricing*/
CREATE TABLE Pricing
(productID int not null primary key,
 songPrice number(5,2) default 0 not null,
 albumPrice number(5,2) default 0 not null
);
alter table pricing add albumID int;
alter table pricing add songID int;
alter table Pricing add constraint fk_albumID FOREIGN key (albumID) REFERENCES Album_Info(albumID);
alter table Pricing add constraint fk_songID FOREIGN key (songID) REFERENCES Song(songID);

create table Album_Info (
albumID INT PRIMARY KEY not null,
song varchar(500),
albumDescription varchar(300),
albumCover varchar2(500)
);

alter table Album_Info
add constraint FK_artistID FOREIGN key (artistID) REFERENCES Artist(artistID);

alter table Producer_Info
add constraint FK_prodID FOREIGN key (prodID) REFERENCES Producer_Info(prodID);

CREATE TABLE Band_Info
(bandID int not null primary key,
 bandName varchar(50) not null,
 bandDescription varchar(300),
 bandCover varchar2(500)
);

alter table artist
add constraint FK_artist_band FOREIGN key (bandID) REFERENCES Band_Info(bandID);

create table Popular_ArtistSongs (
artistID int references Artist(artistID),
song varchar(20) not null,
likesNum int not null
);

/*create table: Genre*/
CREATE TABLE Genre
(genreID int not null primary key,
 genreType varchar(15) not null,
 genreDescription varchar(100),
 artistID
 REFERENCES Artist(artistID)
);

/*create table: Category*/
CREATE TABLE Category
(categoryID int not null primary key,
 categoryName varchar(15),
 categoryDescription varchar(100),
 genreID
 REFERENCES Genre(genreID)
);
alter table Category add constraints GenreID check(GenreID in (select genreID from Genre));

create table Song ( 
songID INT PRIMARY KEY not null,
songDetail varchar(500),
songLikes INT
);
alter table Song add albumID int;
alter table Song add categoryID int;
alter table Song add lyricsID int;
alter table Song add constraint fk_albumID FOREIGN key (albumID) REFERENCES Album_Info(albumID);
alter table Song add constraint fk_categoryID FOREIGN key (categoryID) REFERENCES Category(categoryID);

create table Lyrics (
lyricsID INT PRIMARY KEY not null,
songID INT references Song(songID),
lyricsContent varchar(500)
);

alter table Song add constraint fk_lyricsID FOREIGN key (lyricsID) REFERENCES Lyrics(lyricsID);

create table Favorite_Songs( 
 userID number(10) primary key null, 
 songID number(10), 
 accessibility varchar2(10)
 );

create table Comments(
 userID number(10) primary key not null, 
 songID number(10), 
 commentText varchar2(200), 
 commentsDate date
 );
 
Create table User_Info( 
 userID number(10) Primary key not null, 
 roleID number(10), 
 userName varchar2(20) check( username not like '%[^a-zA-Z]%'),
 emailAddr varchar2(50) check( emailAddr like '%_@__%.__%'), 
 phoneNo number(15),recovEmail varchar2(50) check(recovEmail like '%_@__%.__%  '), 
 password  varchar2(21) check(password like '%[0-9]%' and password like '%[A-Z]%' 
 and password like '%[&@!]%' and length(password) >= 6 
 and length(password) <=21), 
 region varchar(20),
 gender varchar(10), 
 interest1 varchar(10), 
 interest2 varchar(10)
); 

create table Order_Details( 
orderID number(10) primary key not null, 
productID number(10), 
userID number(10),
prodID number(10), 
orderDate date, 
status varchar(10),
foreign key(userID) references User_Info(userID)
);


insert into approle(roleID, roleName) values (1, 'Administrator'); 

insert into approle(roleID, roleName) values (2, 'Producer'); 

insert into approle(roleID, roleName) values (3, 'Users');

alter table APPROLE modify (roleID int);

alter table user_info modify(userID int, roleID int);

alter table favorite_songs modify(userID int, songID int);

alter table comments modify(userID int, songID int);

alter table order_details modify (orderID int, productID int, userID int,
prodID int);

alter table User_Info add foreign key(roleID) references approle(roleID);

alter table Favorite_Songs add foreign key(songID) references Song(songID);

alter table Comments add foreign key(songID) references Song(songID);

alter table Order_Details add foreign key(productID) references Pricing(productID);

alter table Order_Details add foreign key(prodID) references Producer_Info(prodID);

alter table Artist add GenreID REFERENCES Genre(GenreID);
