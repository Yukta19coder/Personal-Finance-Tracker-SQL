-- 1. Total Income for the User
SELECT SUM(amount) AS total_income
FROM income
WHERE user_id = 1;

-- 2. Total Expenses for the User
SELECT SUM(amount) AS total_expenses
FROM expenses
WHERE user_id = 1;

-- 3. Net Balance = Income - Expenses
SELECT 
    (SELECT SUM(amount) FROM income WHERE user_id = 1) - 
    (SELECT SUM(amount) FROM expenses WHERE user_id = 1) AS net_balance;

-- 4. Top 3 Expense Categories
SELECT category, SUM(amount) AS total_spent
FROM expenses
WHERE user_id = 1
GROUP BY category
ORDER BY total_spent DESC
LIMIT 3;

-- 5. Budget vs Spend Comparison
SELECT 
    b.category,
    b.amount AS budget,
    IFNULL(SUM(e.amount), 0) AS spent,
    (b.amount - IFNULL(SUM(e.amount), 0)) AS remaining
FROM budgets b
LEFT JOIN expenses e 
    ON b.category = e.category AND b.user_id = e.user_id
WHERE b.user_id = 1
GROUP BY b.category, b.amount;

-- 6. Savings Goal Progress
SELECT 
    goal_name,
    target_amount,
    current_savings,
    ROUND((current_savings / target_amount) * 100, 2) AS progress_percent
FROM savings_goals
WHERE user_id = 1;
