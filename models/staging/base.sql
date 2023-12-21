{{
    config(materialized = "table")
}}

SELECT 
_dlt_id as id, 
survey_id,
country,
 FROM {{ source("women_wellness", "wellness") }}