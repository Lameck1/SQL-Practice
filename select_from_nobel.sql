SELECT yr, subject, winner FROM nobel WHERE yr = 1950;

SELECT winner FROM nobel WHERE yr = 1962 AND subject = 'Literature';

SELECT yr, subject FROM nobel WHERE winner = 'Albert Einstein';

SELECT winner FROM nobel WHERE yr >= 2000 AND subject = 'Peace';

SELECT yr, subject, winner FROM nobel WHERE yr BETWEEN 1980 AND 1989 and subject = 'Literature';

SELECT * FROM nobel WHERE winner = 'Theodore Roosevelt' OR winner = 'Woodrow Wilson' OR winner = 'Jimmy Carter' OR winner = 'Barack Obama';

SELECT winner FROM nobel WHERE winner LIKE ('John%');

SELECT * FROM nobel WHERE subject = 'Physics' AND yr = 1980 XOR subject = 'Chemistry' AND yr = 1984;

SELECT * FROM nobel WHERE yr = 1980 EXCEPT SELECT * FROM nobel WHERE subject = 'Chemistry' OR subject = 'Medicine';

SELECT * FROM nobel WHERE subject = 'Medicine' AND yr < 1910 XOR subject = 'Literature' AND yr >= 2004;

SELECT * FROM nobel WHERE winner = 'PETER GRÜNBERG';

SELECT * FROM nobel WHERE winner = 'EUGENE O\'NEILL';

SELECT winner, yr, subject FROM nobel WHERE winner LIKE ('Sir%') ORDER BY yr DESC;

SELECT winner, subject FROM nobel WHERE yr = 1984 ORDER BY CASE WHEN subject IN ('Physics', 'Chemistry') THEN 1 ELSE 0 END, subject, winner;