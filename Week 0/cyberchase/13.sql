Select "title", "season", "episode_in_season", "topic", "air_date"
From "episodes"
Where "topic" Like '%Data%' And "air_date" Between '2010-01-01' And '2012-12-31';
