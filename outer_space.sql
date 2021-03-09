CREATE TABLE stars(
  id SERIAL PRIMARY KEY,
  name TEXT UNIQUE NOT NULL,
  temp_in_k INT NOT NULL
);

CREATE TABLE planets(
  id SERIAL PRIMARY KEY,
  name TEXT UNIQUE NOT NULL,
  orbital_period_yrs FLOAT NOT NULL,
  star_id INT NOT NULL REFERENCES stars
);

CREATE TABLE moons(
  id SERIAL PRIMARY KEY,
  planet_id INT NOT NULL REFERENCES planets,
  name TEXT UNIQUE NOT NULL
);

INSERT INTO stars (name, temp_in_k)
VALUES ('The Sun', 5800), ('Proxima', 3042), ('Gliese', 3192);

INSERT INTO planets (name, orbital_period_yrs, star_id)
VALUES ('Earth', 1.00, 1), ('Mars', 1.882, 1), ('Venus', .62, 1), ('Proxima', .03, 2), ('Gliese', .236, 3);

INSERT INTO moons (planet_id, name)
VALUES (1, 'The Moon'), (2, 'Phobos'), (2, 'Deimos');




-- --

-- SELECT planet, star, count(moon)
-- FROM planets 
-- LEFT JOIN stars ON star_id = stars.id
-- LEFT JOIN moons ON planet_id = planets.id 
-- GROUP BY planet, star


-- SELECT planet, star, count(moon)
-- FROM moons
-- RIGHT JOIN planets ON planet_id = planets.id
-- JOIN stars ON star_id = stars.id
-- GROUP BY planet, star;

-- --