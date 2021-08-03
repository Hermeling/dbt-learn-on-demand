{% macro limit_data_in_dev(column_name, dev_days_of_data=3) %}
{% if target.name != 'DEV' %}
--where {{ column_name }} >= date_add(day, -{{ dev_days_of_data  }}, current_date)
where date_diff(current_date, {{ column_name }}, day) < {{ dev_days_of_data }}
{% endif %}
{% endmacro %}