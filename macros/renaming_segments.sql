{% macro rename_segments(column_name) %}
    CASE
        WHEN {{ column_name }} IN ('AUTOMOBILE', 'MACHINERY') THEN 'segment_2'
        WHEN {{ column_name }} IN ('BUILDING', 'HOUSEHOLD', 'FURNITURE') THEN 'segment_1'
        ELSE 'OTHER'
    END
{% endmacro %}