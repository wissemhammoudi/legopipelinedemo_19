MODEL (
  name public.demojoin,
  dialect postgres,
  kind FULL
);

JINJA_QUERY_BEGIN;
SELECT
  lego_inventories.id
  ,lego_inventories.version
  ,lego_inventories.set_num
  ,lego_inventory_parts.inventory_id
  ,lego_inventory_parts.part_num
  ,lego_inventory_parts.quantity
FROM public.stg_public__lego_inventories AS lego_inventories
  INNER JOIN public.stg_public__lego_inventory_parts AS lego_inventory_parts ON lego_inventories.id = lego_inventory_parts.inventory_id
JINJA_END;
