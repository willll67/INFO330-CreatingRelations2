CREATE TABLE pokemon_abilities AS
WITH split(name, abilities, nextability) AS (
	SELECT name, '' AS abilities, abilities|| ',' AS nextability
	FROM imported_pokemon_data
	UNION ALL
		SELECT name,
			substr(nextability, 0, instr(nextability, ',')) AS abilities,
			substr(nextability, instr(nextability, ',')+1) AS nextability
			FROM split
			WHERE nextability != '')
		SELECT name, abilities
		FROM split
		WHERE abilities != ''
		ORDER BY name;
ALTER TABLE imported_pokemon_data DROP COLUMN abilities;



