-- =====================================================
-- Project: PFinance Customer Onboarding Analytics
-- File: 04_app_version_analysis.sql
-- Description: Analyze onboarding completion by app version.
-- =====================================================

-- Business Question:
-- Which app version has the highest onboarding success?

SELECT
    app_version,
    COUNT(*) AS total_users,
    COUNT(*) FILTER (WHERE completed_onboarding = 'Yes') AS completed_users,
    ROUND(
        COUNT(*) FILTER (WHERE completed_onboarding = 'Yes') * 100.0 /
        COUNT(*),
        2
    ) AS completion_rate
FROM users
GROUP BY app_version
ORDER BY completion_rate DESC;