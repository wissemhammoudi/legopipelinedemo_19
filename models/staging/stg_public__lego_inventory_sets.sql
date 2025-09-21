MODEL (
  name public.stg_public__lego_inventory_sets,
  dialect postgres,
  kind FULL
);

JINJA_QUERY_BEGIN;
SELECT
  {{ handle_column_transformation('inventory_id', 'public', 'lego_inventory_sets', 'None', '') }} AS inventory_id,
  {{ handle_column_transformation('set_num', 'public', 'lego_inventory_sets', 'None', '') }} AS set_num,
  {{ handle_column_transformation('quantity', 'public', 'lego_inventory_sets', 'None', '') }} AS quantity
FROM public.lego_inventory_sets
JINJA_END;
