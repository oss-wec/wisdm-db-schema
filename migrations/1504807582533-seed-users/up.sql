-- 1504807582533-seed-users/up.sql
-- write your new migration here

INSERT INTO users (
  first_name, last_name, email, agency
)
VALUES 
  ('mitchell', 'gritts', 'mgritts@ndow.org', 'NDOW'),
  ('cody', 'mcKee', '', 'NDOW'),
  ('mike', 'cox', '', 'NDOW'),
  ('peri', 'wolff', '', 'NDOW'),
  ('chris', 'morris', '', 'NDOW'),
  ('cody', 'schroeder', '', 'NDOW'),
  ('pat', 'cumming', '', 'NDOW'),
  ('joe', 'bennet', '', 'NDOW'),
  ('shawn', 'espinoza', '', 'NDOW'),
  ('caleb', 'mcAdoo', '', 'NDOW'),
  ('kelley', 'stewart', '', 'UNR'),
  ('kathy', 'longshore', '', 'USGS'),
  ('bryan', 'hamilton', '', 'NPS')