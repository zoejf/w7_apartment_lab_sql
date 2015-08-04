--Show all the psql users. (Hint: Look for a command to show roles)
\du

-- Show all the tables in your apartmentlab database.
\dt

-- Show all the data in the owners table.
SELECT * FROM owners;

-- Add three owners: Donald (age 56), Elaine (age 24), and Emma (age 36).
INSERT INTO owners (name, age) VALUES ('Donald', 56), ('Elaine', 24), ('Emma', 36);

-- Show the names of all owners.
SELECT name FROM owners;

-- Show the ages of all of the owners in ascending order.
SELECT age FROM owners ORDER BY age ASC;

-- Show the name of an owner whose name is Donald.
SELECT NAME FROM owners WHERE name = 'Donald';

-- Show the age of all owners who are older than 30.
SELECT age FROM owners WHERE age > 30;

-- Show the name of all owners whose name starts with an "E".
SELECT name FROM owners WHERE name LIKE 'E%';

-- Add an owner named John who is 33 years old.
-- Add an owner named Jane who is 43 years old.
INSERT INTO owners (name, age) VALUES ('John', 33), ('Jane', 43);

-- Change Jane's age to 30.
UPDATE owners SET age = '30' WHERE name = 'Jane';

-- Change Jane's name to Janet.
UPDATE owners SET name = 'Janet' WHERE name = 'Jane';

-- Delete the owner named Janet.
DELETE FROM owners WHERE name = 'Janet' RETURNING *;

-- Add a property named Archstone that has 20 units.
INSERT INTO properties (name, num_units) VALUES ('Archstone', 20);

-- Add two more properties with names and number of units of your choice.
INSERT INTO properties (name, num_units) VALUES ('Bearclaw', 3), ('Wilshire', 15);

-- Show all of the properties in alphabetical order that are not named Archstone.
SELECT * FROM properties WHERE name <> 'Archstone' ORDER BY name DESC;

-- Count the total number of rows in the properties table.
SELECT COUNT(name) FROM properties;

-- Show the highest age of all the owners.
SELECT MAX(age) FROM owners;

-- Show the names of the first three owners in your owners table.
SELECT name FROM owners LIMIT 3;

-- Use a FULL OUTER JOIN to show all of the information from the owners table and the properties table.
SELECT * FROM owners FULL OUTER JOIN properties ON owners.id = properties.owner_id;

-- Update at least one of your properties to belong to the owner with id 1.
UPDATE properties SET owner_id = 1 WHERE name = 'Bearclaw';

-- Use an INNER JOIN to show all of the owners with associated properties.
SELECT * FROM owners INNER JOIN properties ON owners.id = properties.owner_id;

-- Use a CROSS JOIN to show all possible combinations of owners and properties.
SELECT * FROM owners CROSS JOIN properties;

-- In the properties table, change the name of the column name to property_name.
ALTER TABLE properties RENAME COLUMN name to property_name;

-- Count the total number of properties where the owner_id is between 1 and 3.
SELECT count(properties) FROM properties WHERE owner_id < 4;


