-- 1504115372837-init-db/down.sql
-- write how to undo your migration here

DROP TABLE species CASCADE;
DROP TABLE users CASCADE;
DROP TABLE projects CASCADE;
DROP TABLE project_users CASCADE;
DROP TABLE project_species CASCADE;
DROP TABLE project_locations CASCADE;
DROP TABLE elements CASCADE;
DROP TABLE events CASCADE;
DROP TABLE marks CASCADE;
DROP TABLE deployments CASCADE;
DROP TABLE biometrics CASCADE;
DROP TABLE injuries CASCADE;
DROP TABLE lab_ids CASCADE;
DROP TABLE medications CASCADE;
DROP TABLE mortalities CASCADE;
DROP TABLE necropsies CASCADE;
DROP TABLE samples CASCADE;
DROP TABLE vitals CASCADE;