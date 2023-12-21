with base as (
    select
        distinct id, country
    from {{ ref("base") }}
)

select 
    country, avg(mean_age) as country_mean_age 
from {{ ref("age_data") }} a
left join base b on b.id = a.base_id
group by 1