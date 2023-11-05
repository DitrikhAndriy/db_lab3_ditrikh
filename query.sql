-- 1. Вивести назву аніме в якого рейтинг більше за 9, й жанр якого не є боєвиком
select Anime.name from Anime
where Anime.rating > 9
and Anime.anime_id not in (select anime_id from Anime_genre where genre = 'Action');

-- 2. Вивести назву студії, яка була заснована пілся 1970, аніме якої має більше чим 500.000 фанатів 
select Animation_studio.name from Animation_studio
join Anime on Animation_studio.studio_id = Anime.studio_id
where Animation_studio.founded > '1970-01-01' and Anime.members > 500000;

-- 3. Вивести назву аніме й жанр до якого вони відносяться
select Animation_studio.name, Anime.name from Animation_studio
join Anime on Animation_studio.studio_id = Anime.studio_id;