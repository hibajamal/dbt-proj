SELECT
_dlt_id as id,
dm_age_mean as mean_age,
 _dlt_parent_id as base_id,
_dlt_list_idx as list_id

FROM {{ source("women_wellness", "wellness__age_related") }}