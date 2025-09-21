MODEL (
  name public.stg_public__lego_sets,
  dialect postgres,
  kind FULL
);

JINJA_QUERY_BEGIN;
SELECT
  {{ handle_column_transformation('set_num', 'public', 'lego_sets', 'None', '') }} AS set_num,
  {{ handle_column_transformation('name', 'public', 'lego_sets', 'None', '') }} AS name,
  {{ handle_column_transformation('year', 'public', 'lego_sets', 'None', '') }} AS year,
  {{ handle_column_transformation('theme_id', 'public', 'lego_sets', 'None', '') }} AS theme_id,
  {{ handle_column_transformation('num_parts', 'public', 'lego_sets', 'None', '') }} AS num_parts
FROM public.lego_sets
JINJA_END;
