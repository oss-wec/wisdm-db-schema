-- 1505254325120-marks-devices-constraints/down.sql
-- write how to undo your migration here

ALTER TABLE deployments DROP CONSTRAINT unq_deployment_constraint;