{%- set order_status = ['returned', 'completed', 'return_pending', 'shipped', 'placed'] -%}

with orders as (
    select  *
    from    {{ source('jaffle_shop', 'orders') }}
),

daily as (
    select  order_date
            ,count(*) as num_orders
            ,
            {%- for order_status in order_status -%}
            sum(case when status = '{{ order_status }}' then 1 else 0 end) as {{ order_status }}_total
            {% if not loop.last %},{%- endif -%}
            {%- endfor %}
    from    orders
    group by order_date
),

compared as (
    select  *,
    lag(num_orders) over (order by order_date) as previous_day_orders
    from    daily
)

select  *
from    compared
order by 1