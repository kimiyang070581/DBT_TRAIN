{{
    config(
        materialized = 'view'
    )
}}

select * from raw.tpch_sf1.nation