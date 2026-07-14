-- =====================================================
-- Project: PFinance Customer Onboarding Analytics
-- File: 01_kpi_analysis.sql
-- Description: Calculate overall onboarding KPIs.
-- =====================================================

-- Business Question:
-- How many users completed onboarding?

SELECT COUNT(*) AS completed_users
FROM users
WHERE completed_onboarding = 'Yes';

---------------------------------------------------------

-- Business Question:
-- How many users abandoned onboarding?

SELECT COUNT(*) AS abandoned_users
FROM users
WHERE completed_onboarding = 'No';

---------------------------------------------------------

-- Business Question:
-- What is the onboarding completion rate?

SELECT
    COUNT(*) AS total_users,
    COUNT(*) FILTER (WHERE completed_onboarding = 'Yes') AS completed_users,
    ROUND(
        COUNT(*) FILTER (WHERE completed_onboarding = 'Yes') * 100.0 /
        COUNT(*),
        2
    ) AS completion_rate
FROM users;