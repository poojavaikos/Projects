--List the popular songID from top to low
Select songID, max(songLikes) from Song group by songID;

--List usernames who have commented on more than one song
Select userID, username from user_info u
where 1 < (
select count(songID)
from comments 
where userID = u.userID;
)

--Print details and calculate total sales of all the albums
select * from album_Info
where albumId in ( 
select albumID, sum(albumprice)
from Pricing
group by albumID);

--List all the orders before '14-04-2020';
select * from order_details where orderDate < '14-Apr-2020';

--Select the lyrics details where lyrics characters are more than 300 words;
Select LyricsID from Lyrics where length(lyricContent) > 300;

--Retrieve artist name based on most no. of likes.
Select A.artistName, max(s.songLikes) MaxLikes from Artist A
inner join Genre G
on a.artistID = G.artistID
inner join Category C
on G.genreID = C.genreID
inner join Song s
on C.categoryID = s.categoryID
group by s.songID, s.categoryID;

--List artists and associated band details who are part of at least one band
select * from artist a
where exists (
select bandID, bandName, bandDescription 
from band_info b 
where b.artistID = a.artistID
);

--List Genre Type, Artist Name and decode genre 'PoP' to 'Gazal'
select A.artistName, G.genreID, decode(G.genreType, 'Pop', 'Gazal', G.genreType) as 'New_Genre'
from Artist A
inner join Genre G
on A.artistID = G.artistID;

--List top 5 popular artist Songs based on likes;
select A.artistName, P.song, max(P.likesNum) Most_Likes
from artist A
inner join Popular_ArtistSongs P
on a.artistID = P.artistID
where rownum <=5
order by P.likesNum desc;

--List user details who have bought more than one song
select userID, userName
from user_Info u
where 1< ( 
select orderID, OrderDate, Status
from Order_Details 
where userID = u.userID
);

--Dates Functions
select orderDate, add_months(orderDate, 4)
from order_details;

