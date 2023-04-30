CREATE TABLE pokemon (
  name TEXT NOT NULL,
  pokedex_number INTEGER PRIMARY KEY,
  generation INTEGER NOT NULL,
  type1 TEXT NOT NULL,
  type2 TEXT DEFAULT NULL,
  abilities TEXT DEFAULT NULL,
  classification TEXT DEFAULT NULL,
  base_egg_steps INTEGER DEFAULT NULL,
  base_happiness INTEGER DEFAULT NULL,
  base_total INTEGER DEFAULT NULL,
  capture_rate INTEGER DEFAULT NULL,
  is_legendary INTEGER DEFAULT 0,
  height_m REAL DEFAULT NULL,
  weight_kg REAL DEFAULT NULL,
  percentage_male REAL DEFAULT NULL,
  experience_growth INTEGER DEFAULT NULL
);

CREATE TABLE abilities_against (
  pokedex_number INTEGER NOT NULL,
  against_bug INTEGER DEFAULT NULL,
  against_dark INTEGER DEFAULT NULL,
  against_dragon INTEGER DEFAULT NULL,
  against_electric INTEGER DEFAULT NULL,
  against_fairy INTEGER DEFAULT NULL,
  against_fight INTEGER DEFAULT NULL,
  against_fire INTEGER DEFAULT NULL,
  against_flying INTEGER DEFAULT NULL,
  against_ghost INTEGER DEFAULT NULL,
  against_grass INTEGER DEFAULT NULL,
  against_ground INTEGER DEFAULT NULL,
  against_ice INTEGER DEFAULT NULL,
  against_normal INTEGER DEFAULT NULL,
  against_poison INTEGER DEFAULT NULL,
  against_psychic INTEGER DEFAULT NULL,
  against_rock INTEGER DEFAULT NULL,
  against_steel INTEGER DEFAULT NULL,
  against_water INTEGER DEFAULT NULL,
  PRIMARY KEY (pokedex_number),
  FOREIGN KEY (pokedex_number) REFERENCES pokemon(pokedex_number) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE stats (
  pokedex_number INTEGER NOT NULL,
  hp INTEGER DEFAULT NULL,
  attack INTEGER DEFAULT NULL,
  defense INTEGER DEFAULT NULL,
  sp_attack INTEGER DEFAULT NULL,
  sp_defense INTEGER DEFAULT NULL,
  speed INTEGER DEFAULT NULL,
  PRIMARY KEY (pokedex_number),
  FOREIGN KEY (pokedex_number) REFERENCES pokemon(pokedex_number) ON DELETE CASCADE ON UPDATE CASCADE
);
