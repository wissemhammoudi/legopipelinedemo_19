MODEL (
  name public.stg_public__lego_part_categories,
  dialect postgres,
  kind FULL
);

JINJA_QUERY_BEGIN;
SELECT
  {{ handle_column_transformation('id', 'public', 'lego_part_categories', 'None', '') }} AS id,
  {{ handle_column_transformation('name', 'public', 'lego_part_categories', 'None', '') }} AS name
FROM public.lego_part_categories
JINJA_END;
