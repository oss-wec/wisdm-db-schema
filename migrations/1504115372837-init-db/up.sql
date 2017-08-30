-- 1504115372837-init-db/up.sql
-- write your new migration here

-- create species
CREATE TABLE species (
  id serial PRIMARY KEY,
  common_name text NOT NULL,
  species_name text,
  alpha_code text,
  genus text,
  species text,
  gbif_key integer,
  t_phylum text,
  t_class text,
  t_order text,
  t_family text,
  grouping text,
  ndow_code integer,
  attributes jsonb,
  created_at timestamp with time zone DEFAULT now(),
  updated_at timestamp with time zone DEFAULT now()
);
-- comment species
COMMENT ON TABLE species IS 'All the species that occur in the state.';

-- create table users
CREATE TABLE users (
  id serial PRIMARY KEY,
  first_name text NOT NULL,
  last_name text NOT NULL,
  email text NOT NULL,
  agency text NOT NULL,
  created_at timestamp with time zone DEFAULT now(),
  updated_at timestamp with time zone DEFAULT now()
);
-- comment users
COMMENT ON TABLE users IS 'Human users of the database.';

-- create projects table
CREATE TABLE projects (
  id serial PRIMARY KEY,
  parent_id integer REFERENCES projects(id),
  type text,
  proj_name text,
  proj_desc text,
  proj_loc text,
  proj_start date,
  proj_duration integer,
  attributes jsonb,
  created_at timestamp with time zone DEFAULT now(),
  updated_at timestamp with time zone DEFAULT now()
);
-- comment projects
COMMENT ON TABLE projects IS 'Projects and Sub Projects that animals belong to.';

-- create table project_users
CREATE TABLE project_users (
  id serial PRIMARY KEY,
  user_id integer REFERENCES users(id),
  project_id integer REFERENCES projects(id),
  type text,
  created_at timestamp with time zone DEFAULT now(),
  updated_at timestamp with time zone DEFAULT now()
);
-- comment project users
COMMENT ON TABLE project_users IS 'Associative table between projects and users to resolve many-many relationships.';

-- create table project_species
CREATE TABLE project_species (
  id serial PRIMARY KEY,
  species_id integer REFERENCES species(id),
  project_id integer REFERENCES projects(id),
  created_at timestamp with time zone DEFAULT now(),
  updated_at timestamp with time zone DEFAULT now()
);
COMMENT ON TABLE project_species IS 'Associative table between projects and species to resolve many-many relationships.';

-- create table project_locations
CREATE TABLE project_locations (
  id serial PRIMARY KEY,
  project_id integer REFERENCES projects(id),
  hunt_unit text NOT NULL,
  created_at timestamp with time zone DEFAULT now(),
  updated_at timestamp with time zone DEFAULT now()
);
-- comment project_locations
COMMENT ON TABLE project_locations IS 'Associative table between projects and units to resolve many-many relationships. IN-DEV';

-- create element table
CREATE TABLE elements (
  id serial PRIMARY KEY,
  animal_id integer UNIQUE,
  species_id integer REFERENCES species(id),
  sex text NOT NULL DEFAULT 'unk',
  animal_key_whdb integer,
  ndow_species_code integer,
  alpha_code text,
  created_at timestamp with time zone DEFAULT now(),
  updated_at timestamp with time zone DEFAULT now()
);

-- create events
CREATE TABLE events (
  id serial PRIMARY KEY,
  element_id integer REFERENCES elements(id),
  project_id integer REFERENCES projects(id),
  x real NOT NULL,
  y real NOT NULL,
  status text NOT NULL DEFAULT 'unk',
  age text NOT NULL DEFAULT 'unk',
  event_date date NOT NULL,
  enc_method text NOT NULL,
  enc_reason text NOT NULL,
  reencounter boolean DEFAULT false,
  relocated boolean DEFAULT false,
  tag_number text,
  folder_url text,
  qaqc_flag boolean DEFAULT false,
  enc_id_tmp integer,
  animal_id_temp integer,
  created_at timestamp with time zone DEFAULT now(),
  updated_at timestamp with time zone DEFAULT now()
);

-- creat marks
CREATE TABLE marks (
  id serial PRIMARY KEY,
  element_id integer REFERENCES elements(id),
  mark_type text NOT NULL,
  mark_id text NOT NULL,
  mark_color text NOT NULL,
  mark_location text,
  date_given date,
  date_removed date,
  notes text,
  created_at timestamp with time zone DEFAULT now(),
  updated_at timestamp with time zone DEFAULT now()
);
-- unique constraint in marks for upsert support
ALTER TABLE marks
ADD CONSTRAINT unq_mark_constraint
UNIQUE (element_id, mark_id, mark_location);

-- create deployments
CREATE TABLE deployments (
  id serial PRIMARY KEY,
  element_id integer REFERENCES elements(id),
  frequency real,
  serial_num text,
  type text,
  inservice date,
  outservice date,
  -- attributes jsonb,
  created_at timestamp with time zone DEFAULT now(),
  updated_at timestamp with time zone DEFAULT now()
);

CREATE TABLE biometrics (
  id serial PRIMARY KEY,
  event_id integer REFERENCES events(id),
  measurement text,
  value numeric,
  units text,
  description text,
  notes text,
  created_at timestamp with time zone DEFAULT now(),
  updated_at timestamp with time zone DEFAULT now()
);

CREATE TABLE injuries (
  id serial PRIMARY KEY,
  element_id integer REFERENCES elements(id),
  injury_side text,
  injury_location text,
  injury_type text,
  injury_description text,
  injury_treatment text,
  created_at timestamp with time zone DEFAULT now(),
  updated_at timestamp with time zone DEFAULT now()
);

CREATE TABLE lab_ids (
  id serial PRIMARY KEY,
  event_id integer REFERENCES events(id),
  lab_id text UNIQUE,
  created_at timestamp with time zone DEFAULT now(),
  updated_at timestamp with time zone DEFAULT now()
);

CREATE TABLE medications (
  id serial PRIMARY KEY,
  event_id integer REFERENCES events(id),
  medication text,
  med_time time,
  med_dose numeric,
  med_unit text,
  med_method text,
  med_notes text,
  created_at timestamp with time zone DEFAULT now(),
  updated_at timestamp with time zone DEFAULT now()
);

CREATE TABLE mortalities (
  id serial PRIMARY KEY,
  event_id integer REFERENCES events(id),
  investigator text,
  cause_of_death text,
  sub_cause text,
  certainty_of_cause integer,
  carcass_age integer,
  femur_index integer,
  gross_diagnoses text,
  histological_diagnoses text,
  description text,
  attributes jsonb,
  created_at timestamp with time zone DEFAULT now(),
  updated_at timestamp with time zone DEFAULT now()
);

CREATE TABLE necropsies (
  id serial PRIMARY KEY,
  event_id integer REFERENCES events(id),
  necropsy_date date,
  general_condition text,
  integument text,
  musculoskeletal text,
  body_cavities text,
  hemolymphatic text,
  respiratory text,
  cardiovascular text,
  digestive text,
  urinary text,
  reproductive text,
  endocrine text,
  nervous text,
  sensory text,
  studies text,
  created_at timestamp with time zone DEFAULT now(),
  updated_at timestamp with time zone DEFAULT now()
);

CREATE TABLE samples (
  id serial PRIMARY KEY,
  event_id integer REFERENCES events(id),
  sample text,
  destination text,
  test text,
  notes text,
  created_at timestamp with time zone DEFAULT now(),
  updated_at timestamp with time zone DEFAULT now()
);


CREATE TABLE vitals (
  id serial PRIMARY KEY,
  event_id integer REFERENCES events(id),
  time_rec time,
  measurement text,
  value numeric,
  interval integer,
  notes text,
  created_at timestamp with time zone DEFAULT now(),
  updated_at timestamp with time zone DEFAULT now()
);
