USE youtubeproject;

SELECT * 
FROM youtube;

--number of entries
SELECT COUNT(*)
FROM youtube;

--unique entries
SELECT DISTINCT COUNT(Username)
FROM youtube;

-- Top 10 countries with maximum users 
SELECT TOP 10 COUNT(Username) AS UserCount , Country
FROM youtube
GROUP BY Country
ORDER BY COUNT(Username) DESC;

-- Categories and their likes count
SELECT COUNT(Likes) , Categories
FROM youtube
GROUP BY Categories
ORDER BY COUNT(Likes) DESC;

-- Top categories
SELECT TOP 5 COUNT(Username), Categories
FROM youtube
GROUP BY Categories
ORDER BY COUNT(Username) DESC;

-- most liked categories
SELECT TOP 5 COUNT(Likes) as likes_count , Categories
FROM youtube
GROUP BY Categories
ORDER BY COUNT(Likes) DESC;

-- comments count according to categories
SELECT COUNT(Comments) as Comments_count , Categories
FROM youtube
GROUP BY Categories
ORDER BY COUNT(Comments) DESC;

--Top 5 categories with most comments
SELECT TOP 5 COUNT(Comments) as Comments_count , Categories
FROM youtube
GROUP BY Categories
ORDER BY COUNT(Comments) DESC;

-- visits count according to categories
SELECT COUNT(Visits) as Visits_count , Categories
FROM youtube
GROUP BY Categories
ORDER BY COUNT(Visits) DESC;

--Top 5 categories with most Visits
SELECT TOP 5 COUNT(Visits) as Visits_count , Categories
FROM youtube
GROUP BY Categories
ORDER BY COUNT(Visits) DESC;

SELECT * FROM youtube;

-- changing coulmn name from suscribers to subscribers
EXEC sp_rename 'youtube.Suscribers' , 'Subscribers','COLUMN' ;

-- top 5 countries with most subscribers
SELECT TOP 5 COUNT(Subscribers) AS subs_count , Country
FROM youtube
GROUP BY Country
ORDER BY COUNT(Subscribers) DESC;

-- top youtubers in us
SELECT Rank , Username , Subscribers
FROM youtube
WHERE Country = 'US';

SELECT * FROM youtube;

--top categories watched in us
SELECT TOP 5 Categories ,COUNT(Subscribers)
FROM youtube
WHERE Country = 'US'
GROUP BY Categories
ORDER BY COUNT(Subscribers) DESC;

-- top 5 youtubers in entertainment category in us
SELECT TOP 5 Username , Rank , Subscribers
FROM youtube
WHERE Categories = 'Entertainment'
AND
COUNTRY = 'US';

-- top 5 youtubers in music category in us
SELECT TOP 5 Username , Rank , Subscribers
FROM youtube
WHERE Categories = 'Music'
AND
COUNTRY = 'US';

-- top 5 youtubers in film category in us
SELECT TOP 5 Username , Rank , Subscribers
FROM youtube
WHERE Categories = 'Film'
AND
COUNTRY = 'US';

-- top 5 youtubers in hobby category in us
SELECT TOP 5 Username , Rank , Subscribers
FROM youtube
WHERE Categories = 'Hobby'
AND
COUNTRY = 'US';

-- top 5 youtubers in lifestyle category in us
SELECT TOP 5 Username , Rank , Subscribers
FROM youtube
WHERE Categories = 'Lifestyle_(sociology)'
AND
COUNTRY = 'US';

-- top 5 youtubers in pop music category in us
SELECT TOP 10 Username , Rank , Subscribers
FROM youtube
WHERE Categories = 'Pop_music'
AND
COUNTRY = 'US';

-- top 10 pop music artists 
SELECT TOP 10 Username , Rank , Subscribers , Country , Likes , Visits
FROM youtube
WHERE Categories = 'Pop_music';

-- top 10 entertainment channels 
SELECT TOP 10 Username , Rank , Subscribers , Country , Likes , Visits
FROM youtube
WHERE Categories = 'Entertainment';

-- top 10 film channels 
SELECT TOP 10 Username , Rank , Subscribers , Country , Likes , Visits
FROM youtube
WHERE Categories = 'Film';

-- top 10 lifestyle channels 
SELECT TOP 10 Username , Rank , Subscribers , Country , Likes , Visits
FROM youtube
WHERE Categories = 'Lifestyle_(sociology)';

-- top 10 music channels 
SELECT TOP 10 Username , Rank , Subscribers , Country , Likes , Visits
FROM youtube
WHERE Categories = 'Music';

-- top 10 hobby channels 
SELECT TOP 10 Username , Rank , Subscribers , Country , Likes , Visits
FROM youtube
WHERE Categories = 'Hobby';

SELECT * FROM youtube;














