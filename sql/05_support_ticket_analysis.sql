-- =====================================================
-- Project: PFinance Customer Onboarding Analytics
-- File: 05_support_ticket_analysis.sql
-- Description: Evaluate the relationship between support tickets
-- and onboarding completion.
-- =====================================================

-- Business Question:
-- Does raising a support ticket affect onboarding completion?

SELECT
    support_ticket,
    COUNT(*) AS total_users,
    COUNT(*) FILTER (WHERE completed_onboarding = 'Yes') AS completed_users,
    ROUND(
        COUNT(*) FILTER (WHERE completed_onboarding = 'Yes') * 100.0 /
        COUNT(*),
        2
    ) AS completion_rate
FROM users
GROUP BY support_ticket
ORDER BY support_ticket;