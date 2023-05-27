Select *
From SpotifyandYoutube;

-- Which is the most viewed song track on youtube?

Select TOP 1 Track,Views
From SpotifyandYoutube
Where most_played = 'Youtube'
Order By Views Desc;

-- Which Song track is streamed most on Spotify?

Select TOP 1 Track,Stream
From SpotifyandYoutube
Where most_played = 'Spotify'
Order By Stream Desc;

-- EnergyLiveness ratio is one of the popular ways to measure the quality of the song, which are the top 5 songs that have the highest energyliveness ratio.

Select Top 5 Track, EnergyLiveness
From SpotifyandYoutube
Order By EnergyLiveness Desc;

-- let us assume a situation where an artist named Black Eyed Peas wants to analyze his songs. The artist wants to know which platform is capable of keeping his song track more engaged. To check this he assigns you this task and wants you to report to him where his song tracks are more played on. compare the platforms.

Select Artist, 
	Sum(Stream) AS total_spotify_streams, 
	Sum(Views) AS total_youtube_views
From SpotifyandYoutube
Where Artist = 'Black Eyed Peas'
Group By Artist

-- So Youtube is better bcs Number of views on youtube is higher than streams on Spotify

-- Gorillaz wants to know their most liked song on youtube. Report to them with their most liked song along with the Energy and Tempo of the song.

Select Top 1 Artist,Track,Energy, Tempo, Likes
From SpotifyandYoutube
Where Artist = 'Gorillaz'
Order By Likes Desc


-- Which Album types are more prominent on Spotify?

Select Album_type, Count(*) As Album_Count
From SpotifyandYoutube
Where most_played = 'Spotify'
Group By Album_type
Order By Album_Count Desc;


-- Spotify's most loved song tracks are to be declared soon. Help Spotify choose the top 5 most streamed+youtube viewed song track.

Select Top 5 Track, (Stream + Views) as ViewsAndStreams
From SpotifyandYoutube
Order By ViewsAndStreams Desc
