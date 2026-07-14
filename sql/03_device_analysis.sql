-- =====================================================
-- Project: PFinance Customer Onboarding Analytics
-- File: 03_device_analysis.sql
-- Description: Compare onboarding completion across devices.
-- =====================================================

-- Business Question:
-- Does device type influence onboarding completion?

SELECT
    device_type,
    COUNT(*) AS total_users,
    COUNT(*) FILTER (WHERE completed_onboarding = 'Yes') AS completed_users,
    ROUND(
        COUNT(*) FILTER (WHERE completed_onboarding = 'Yes') * 100.0 /
        COUNT(*),
        2
    ) AS completion_rate
FROM users
GROUP BY device_type
ORDER BY completion_rate DESC;