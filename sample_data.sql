-- Insert users FIRST
INSERT INTO users (name, email) VALUES 
('Yukta', 'yukta@email.com');

-- Insert income SECOND
INSERT INTO income (user_id, source, amount, date) VALUES 
(1, 'Internship', 15000.00, '2025-03-01'),
(1, 'Freelance Project', 8000.00, '2025-03-15');

-- Insert expenses THIRD
INSERT INTO expenses (user_id, category, amount, payment_mode, date) VALUES 
(1, 'Food', 2500.00, 'UPI', '2025-03-05'),
(1, 'Transport', 1000.00, 'Cash', '2025-03-07'),
(1, 'Entertainment', 1500.00, 'Card', '2025-03-10');

-- Insert budgets FOURTH
INSERT INTO budgets (user_id, category, amount, month) VALUES 
(1, 'Food', 4000.00, 'March'),
(1, 'Transport', 2000.00, 'March'),
(1, 'Entertainment', 2500.00, 'March');

-- Insert savings goals LAST
INSERT INTO savings_goals (user_id, goal_name, target_amount, current_savings, deadline) VALUES 
(1, 'Laptop Upgrade', 60000.00, 10000.00, '2025-06-01'),
(1, 'Goa Trip', 20000.00, 5000.00, '2025-05-15');
