-- =====================================================
-- Project: PFinance Customer Onboarding Analytics
-- File: 02_acquisition_channel_analysis.sql
-- Description: Analyze onboarding completion by acquisition channel.
-- =====================================================

-- Business Question:
-- Which acquisition channels attract users who successfully complete onboarding?

SELECT
    acquisition_channel,
    COUNT(*) AS total_users,
    COUNT(*) FILTER (WHERE completed_onboarding = 'Yes') AS completed_users,
    ROUND(
        COUNT(*) FILTER (WHERE completed_onboarding = 'Yes') * 100.0 /
        COUNT(*),
        2
    ) AS completion_rate
FROM users
GROUP BY acquisition_channel
ORDER BY completion_rate DESC;