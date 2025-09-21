MODEL (
  name public.stg_public__lego_colors,
  dialect postgres,
  kind FULL
);

JINJA_QUERY_BEGIN;
SELECT
  {{ handle_column_transformation('id', 'public', 'lego_colors', 'None', '') }} AS id,
  {{ handle_column_transformation('name', 'public', 'lego_colors', 'string_transform', 'upper') }} AS name,
  {{ handle_column_transformation('rgb', 'public', 'lego_colors', 'None', '') }} AS rgb,
  {{ handle_column_transformation('is_trans', 'public', 'lego_colors', 'None', '') }} AS is_trans,
  {{ handle_column_transformation('hex_code', 'public', 'lego_colors', 'None', '') }} AS hex_code
FROM public.lego_colors
JINJA_END;
