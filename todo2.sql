INSERT INTO thingsToDO(title, details, priority, created_at, completed_at)VALUES('Fight Apollo Creed','Try to out box the world heavy-weight champion',1,'1976-6-01','1976-12-03');

INSERT INTO thingsToDO(title, details, priority, created_at, completed_at)VALUES('Fight Apollo Creed Again','This time actually beat Apollo creed',1,'1979-1-01','1979-6-15');

INSERT INTO thingsToDO(title, details, priority, created_at, completed_at)VALUES('Fight Clubber Lang','This Fool just called me out, time to knock him out',3,'1981-9-01','1982-2-28');

INSERT INTO thingsToDO(title, details, priority, created_at, completed_at)VALUES('Train with Apollo creed','I lost the first match to Clubber Lang, Apollo wants to train me',2,'1982-2-28','1982-5-28');

INSERT INTO thingsToDO(title, details, priority, created_at, completed_at)VALUES('Beat Clubber Lang', 'Out box clubber lang with Apollo''s training',1,'1982-5-28','1982-5-28');

INSERT INTO thingsToDO(title, details, priority, created_at)VALUES('Meet Apoollo Creed in the basement','Apollo requested i bring my gear for somereason',3,'1982-5-28');

INSERT INTO thingsToDO(title, details, priority, created_at, completed_at)VALUES('Go watch Apollo''s fight','Apollo Has A fight against some russian dude should be fun',3,'1984-8-20','1984-8-20');

INSERT INTO thingsToDO(title, details, priority, created_at, completed_at)VALUES('Go to Apollo''s Funeral', 'Apollo left me his shorts, they still smell like him...gross',1,'1984-8-23','1984-8-23');

INSERT INTO thingsToDO(title, details, priority, created_at)VALUES('Train to beat Ivan','Go chop wood on a mountian to prepare for my boxing match',2,'1985-3-01');

INSERT INTO thingsToDO(title, details, priority, created_at, completed_at)VALUES('Beat Ivan','Fly to Russia and beat Ivan in a boxing match',1,'1985-11-21','1985-11-27');


SELECT title, completed_at,priority
FROM thingsToDO
WHERE completed_at IS NULL
AND priority = 3;

SELECT priority, COUNT(*) AS number_of_thingsToDO
FROM thingsToDO
WHERE completed_at IS NULL
GROUP BY priority;

SELECT priority, COUNT(*) AS num_of_thingsToDO_within_30days
FROM thingsToDO
WHERE created_at > (CURRENT_DATE - INTERVAL '30 days')
GROUP BY priority;

SELECT title, priority, created_at
FROM thingsToDO
WHERE completed_at IS NULL
ORDER BY priority, created_at DESC
LIMIT 1;
