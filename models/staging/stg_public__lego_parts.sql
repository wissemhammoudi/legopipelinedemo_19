MODEL (
  name public.stg_public__lego_parts,
  dialect postgres,
  kind FULL
);

JINJA_QUERY_BEGIN;
SELECT
  {{ handle_column_transformation('part_num', 'public', 'lego_parts', 'None', '') }} AS part_num,
  {{ handle_column_transformation('name', 'public', 'lego_parts', 'None', '') }} AS name,
  {{ handle_column_transformation('part_cat_id', 'public', 'lego_parts', 'None', '') }} AS part_cat_id
FROM public.lego_parts
JINJA_END;
