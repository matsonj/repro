## How to repro

1. Open a github codespace (choose 4 cores unless you want to wait for a long time).
2. run the following command in your terminal:
```bash
pip install -r requirements.txt
```
3. run these scripts in your montherduck account:
```sql
create database IF NOT EXISTS data_hub_prod_a_fake;
create database IF NOT EXISTS reporting_prod_a_fake;
```
4. run the following command in your terminal:
```bash
dbt build --vars '{"build_env":"PROD","org_prefix":"a_fake"}'
```
5. run it again.