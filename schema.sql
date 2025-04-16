CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE income (
    income_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    source VARCHAR(100),
    amount DECIMAL(10,2),
    date DATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE expenses (
    expense_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    category VARCHAR(100),
    amount DECIMAL(10,2),
    payment_mode VARCHAR(50),
    date DATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE budgets (
    budget_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    category VARCHAR(100),
    amount DECIMAL(10,2),
    month VARCHAR(20),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE savings_goals (
    goal_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    goal_name VARCHAR(100),
    target_amount DECIMAL(10,2),
    current_savings DECIMAL(10,2),
    deadline DATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
