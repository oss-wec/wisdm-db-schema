-- 1504126400244-view-animal-footer/up.sql
-- write your new migration here
CREATE OR REPLACE VIEW animal_cards AS 
WITH m AS (
  SELECT mark_id, mark_color, mark_type, mark_location, date_given, date_removed
  FROM marks
),

d AS (
  SELECT serial_num, frequency, type, inservice, outservice
  FROM deployments
),

l AS (
  SELECT event_id, lab_id
  FROM lab_ids
)

SELECT
  elements.id,
  species.common_name as species,
  elements.animal_id as ndow_id,
  events.event_date AS date,
  events.status,
  elements.sex,
  events.age,
  events.comments,
  species.grouping,
  (
    SELECT to_jsonb(array_agg(to_jsonb(m)))
    FROM m
    WHERE element_id = elements.id
  ) AS "marks",
  (
    SELECT to_jsonb(array_agg(to_jsonb(d)))
    FROM d
    WHERE element_id = elements.id
  ) AS "devices",
  (
    SELECT to_jsonb(array_agg(to_jsonb(lab_id)))
    FROM l
    WHERE event_id = events.id
  ) AS "labids"
FROM elements
  INNER JOIN species ON elements.species_id = species.id
  LEFT JOIN events ON elements.id = events.element_id;