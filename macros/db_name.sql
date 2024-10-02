{% macro generate_database_name(custom_database_name=none, node=none) -%}

    {%- set default_database = target.database -%}

    {%- if (custom_database_name is not none) and (var('build_env').upper() != 'DEV') -%}

        {{ custom_database_name | trim }}_{{ var("build_env") | trim }}_{{ var("org_prefix") | trim }}

    {%- elif target.name == 'user' -%}

        {{ default_database }}

    {%- else -%}

        {{ custom_database_name }}

    {%- endif -%}

{%- endmacro %}