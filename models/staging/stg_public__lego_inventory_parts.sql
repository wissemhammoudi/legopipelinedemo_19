MODEL (
  name public.stg_public__lego_inventory_parts,
  dialect postgres,
  kind FULL
);

JINJA_QUERY_BEGIN;
SELECT
  {{ handle_column_transformation('inventory_id', 'public', 'lego_inventory_parts', 'None', '') }} AS inventory_id,
  {{ handle_column_transformation('part_num', 'public', 'lego_inventory_parts', 'None', '') }} AS part_num,
  {{ handle_column_transformation('color_id', 'public', 'lego_inventory_parts', 'None', '') }} AS color_id,
  {{ handle_column_transformation('quantity', 'public', 'lego_inventory_parts', 'None', '') }} AS quantity,
  {{ handle_column_transformation('is_spare', 'public', 'lego_inventory_parts', 'None', '') }} AS is_spare
FROM public.lego_inventory_parts
JINJA_END;
