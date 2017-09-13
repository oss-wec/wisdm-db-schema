-- 1505254325120-marks-devices-constraints/up.sql
-- write your new migration here

ALTER TABLE deployments
ADD CONSTRAINT unq_deployment_constraint
UNIQUE (element_id, serial_num, frequency);