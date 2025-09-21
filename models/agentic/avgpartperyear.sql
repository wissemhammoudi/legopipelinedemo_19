MODEL (
  name public.avgpartperyear,
  dialect postgres,
  kind FULL
);

JINJA_QUERY_BEGIN;
WITH part_counts_per_set AS (
    SELECT
        s.year,
        COUNT(DISTINCT ip.part_num) AS unique_parts
    FROM
        public.lego_sets s
    JOIN
        public.lego_inventories i ON s.set_num = i.set_num
    JOIN
        public.lego_inventory_parts ip ON i.id = ip.inventory_id
    GROUP BY
        s.year
),
average_parts_per_year AS (
    SELECT
        year,
        AVG(unique_parts) AS average_unique_parts
    FROM
        part_counts_per_set
    GROUP BY
        year
)
SELECT
    year,
    average_unique_parts
FROM
    average_parts_per_year
ORDER BY
    year;
JINJA_END;
