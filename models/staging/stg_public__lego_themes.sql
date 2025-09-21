MODEL (
  name public.stg_public__lego_themes,
  dialect postgres,
  kind FULL
);

JINJA_QUERY_BEGIN;
SELECT
  {{ handle_column_transformation('id', 'public', 'lego_themes', 'None', '') }} AS id,
  {{ handle_column_transformation('name', 'public', 'lego_themes', 'None', '') }} AS name,
  {{ handle_column_transformation('parent_id', 'public', 'lego_themes', 'None', '') }} AS parent_id
FROM public.lego_themes
JINJA_END;
