{% macro group_by(n) %}
    GROUP by
    {% for i in range(1,n+1) %}
      {{ i }} 
      {% if not loop.last %} , {% endif %}
    {% endfor %}

{% endmacro %}