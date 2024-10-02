create database IF NOT EXISTS data_hub_prod_a_fake;
create database IF NOT EXISTS reporting_prod_a_fake;

create schema if not exists data_hub_prod_a_fake.transient;
create schema if not exists data_hub_prod_a_fake.export;
create schema if not exists reporting_prod_a_fake.reporting;
