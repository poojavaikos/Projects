

Create table User_Info( userID number(10) Primary key, roleID number(10), userName varchar2(20) check( username not like '%[^a-zA-Z]%'),
emailAddr varchar2(50) check( emailAddr like '%_@__%.__%'), phoneNo number(15),recovEmail varchar2(50) check(recovEmail like '%_@__%.__%  '), password  varchar2(21) check(password like '%[0-9]%' and password like '%[A-Z]%' and password like '%[&@!]%' and length(password) >= 6 and length(password) <=21), region varchar(20), gender varchar(10), interest1 varchar(10), interest2 varchar(10)); 

Create table Role( roleID number(10) primary key, roleName varchar(16));

insert into role(roleID, roleName) values (1, 'Administrator'); 

insert into role(roleID, roleName) values (2, 'Producer'); 

insert into role(roleID, roleName) values (3, 'Users');

create table Favorite_Songs( userID number(10) primary key, songID number(10), accessibility varchar2(10));

create table Comments(userID number(10) primary key, songID number(10), commentText varchar2(200), commentsDate date);

create table Order_Details( 
orderID number(10) primary key, 
productID number(10), 
userID number(10),
prodID number(10), 
orderDate date, 
status varchar(10),
foreign key(userID) references User_Info(userID)
);

alter table ROLE modify (roleID int);

alter table user_info modify(userID int, roleID int);

alter table favorite_songs modify(userID int, songID int);

alter table comments modify(userID int, songID int);

alter table order_details modify (orderID int, productID int, userID int,
prodID int);

create table Producer_Info(prodID int primary key, 
roleID int, prodName varchar2(20), 
emailAdd varchar2(50), 
password varchar2(21), foreign key(roleID) references role(roleID));
	
create table Pricing(productID int primary key, 
albumID int,
songID int, 
songPrice number(5,2), albumPrice number(5,2));

create table Song( 
songID int primary key,
albumID int, categoryID int,
lyricsID int, 
songDetail varchar2(500), songLikes int);

alter table User_Info add foreign key(roleID) references role(roleID);

alter table Favorite_Songs add foreign key(songID) references Song(songID);

alter table Comments add foreign key(songID) references Song(songID);

alter table Order_Details add foreign key(productID) references Pricing(productID);

alter table Order_Details add foreign key(prodID) references Producer_Info(prodID);