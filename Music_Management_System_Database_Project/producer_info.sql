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

create table  Genre (
genreID int not null,
artistID int references Artist(artistID),
genreType varchar(15),
genreDescription varchar(100)
);

create table Popular_ArtistSongs (
artistID int references Artist(artistID),
song varchar(20) not null,
likesNum int not null
);

