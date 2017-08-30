-- 1504125020086-seed-species/up.sql
-- write your new migration here

COPY species (common_name, species_name, alpha_code, genus, species, gbif_key, t_phylum, t_class, t_order, t_family, grouping, ndow_code) 
FROM '/Users/mitchellgritts/Documents/projects/wisdm-db-schema/data/species-out.csv' DELIMITER ',' CSV HEADER;