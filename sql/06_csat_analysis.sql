-- =====================================================
-- Project: PFinance Customer Onboarding Analytics
-- File: 06_csat_analysis.sql
-- Description: Analyze customer satisfaction and onboarding.
-- =====================================================

-- Business Question:
-- Are satisfied users more likely to complete onboarding?

SELECT
    csat,
    COUNT(*) AS total_users,
    COUNT(*) FILTER (WHERE completed_onboarding = 'Yes') AS completed_users,
    ROUND(
        COUNT(*) FILTER (WHERE completed_onboarding = 'Yes') * 100.0 /
        COUNT(*),
        2
    ) AS completion_rate
FROM users
GROUP BY csat
ORDER BY csat;