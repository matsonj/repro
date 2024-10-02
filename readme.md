## How to repro

1. run these scripts in your montherduck account:
```sql
create database IF NOT EXISTS data_hub_prod_a_fake;
create database IF NOT EXISTS reporting_prod_a_fake;
```
2. run the following command in your terminal:
```bash
dbt build --vars '{"build_env":"PROD","org_prefix":"a_fake"}'
```