CREATE TABLE thingsToDO (
  id SERIAL PRIMARY KEY, -- a serial primary key
  title VARCHAR(255) NOT NULL, -- not optional, string up to 255 characters
  details VARCHAR(1000), -- optional, holds a large amount of text
  priority INTEGER NOT NULL DEFAULT 1,-- not optional, an integer. Default is 1.
  created_at DATE NOT NULL,-- not optional. A date and time.
  completed_at  DATE-- optional. A date a time.
);

INSERT INTO thingsToDO(title, details, priority, created_at, completed_at)VALUES('Clean House','Clean Kichen ,Bathroom, Living room and Room',2,'2017-8-01','2017-8-03');

INSERT INTO thingsToDO(title, details, priority, created_at)VALUES('Change oil','Go to dealership for FREE oil change',1,'2017-8-05');

INSERT INTO thingsToDO(title, details, priority, created_at)VALUES('Claim The Iron Throne','Make Jon Snow bend the knee',1,'2017-8-01');

INSERT INTO thingsToDO(title, details, priority, created_at)VALUES('Don''t tell Solo the Odds','Never tell him the odds',4,'2017-8-04');

INSERT INTO thingsToDO(title, details, priority, created_at)VALUES('Go to Taco bell','Order a Big-mac',6,'2017-8-02');

SELECT title, completed_at
FROM thingsToDO
WHERE completed_at IS NULL;

SELECT title, priority
FROM thingsToDO
WHERE priority > 1;

UPDATE thingsToDO
SET completed_at = '2017-8-02'
WHERE id = 3;

DELETE FROM thingsToDO
WHERE completed_at
IS NOT NULL;
