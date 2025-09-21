MODEL (
  name public.stg_public__lego_inventories,
  dialect postgres,
  kind FULL
);

JINJA_QUERY_BEGIN;
SELECT
  {{ handle_column_transformation('id', 'public', 'lego_inventories', 'None', '') }} AS id,
  {{ handle_column_transformation('version', 'public', 'lego_inventories', 'None', '') }} AS version,
  {{ handle_column_transformation('set_num', 'public', 'lego_inventories', 'None', '') }} AS set_num
FROM public.lego_inventories
JINJA_END;
