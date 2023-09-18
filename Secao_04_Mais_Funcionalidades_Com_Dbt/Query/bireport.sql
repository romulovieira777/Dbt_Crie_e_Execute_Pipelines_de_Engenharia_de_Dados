{{
    config(
        materialized='table',
        pre_hook=["
            begin; lock table {{ target.schema }}.teste;
        "],
        post_hook=["
            COMMIT;
            GRANT USAGE ON SCHEMA {{ target.schema }} TO GROUP teste;
            GRANT SELECT ON TABLE {{ target.schema }}.bireport TO GROUP teste;
        "]
    )
}}


SELECT
    *
FROM
    {{ ref('joins')}}
