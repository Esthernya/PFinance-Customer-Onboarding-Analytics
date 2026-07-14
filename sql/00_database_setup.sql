-- =====================================================
-- Project: PFinance Customer Onboarding Analytics
-- File: 00_database_setup.sql
-- Description: Database and table setup instructions.
-- =====================================================

-- Database Name:
-- payflow_onboarding_dataset

-- Table Name:
-- users

-- NOTE:
-- The dataset was imported into PostgreSQL using the Import/Export
-- feature in pgAdmin.

-- Import the CSV file into the "users" table before running
-- the analysis scripts contained in this repository.

-- SQL scripts should be executed in the following order:
--
-- 01_kpi_analysis.sql
-- 02_acquisition_channel_analysis.sql
-- 03_device_analysis.sql
-- 04_app_version_analysis.sql
-- 05_support_ticket_analysis.sql
-- 06_csat_analysis.sql
-- 07_revenue_impact_analysis.sql