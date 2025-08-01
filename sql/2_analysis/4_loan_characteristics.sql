-- 1. Phân tích tổng quan số tiền vay và thời hạn vay trung bình
SELECT 
    COUNT(*) AS total_loans,
    ROUND(AVG(LoanAmount), 2) AS avg_loan_amount,
    ROUND(AVG(LoanTerm), 2) AS avg_loan_term_months,
    ROUND(MIN(LoanAmount), 2) AS min_loan_amount,
    ROUND(MAX(LoanAmount), 2) AS max_loan_amount
FROM loan_data;

-- 2. Phân tích ảnh hưởng của thời hạn vay đến tỷ lệ vỡ nợ
SELECT 
    CASE 
        WHEN LoanTerm <= 12 THEN 'Ngắn hạn (<=12 tháng)'
        WHEN LoanTerm BETWEEN 13 AND 36 THEN 'Trung hạn (13–36 tháng)'
        ELSE 'Dài hạn (>36 tháng)'
    END AS loan_term_group,
    COUNT(*) AS total_loans,
    ROUND(AVG(LoanAmount), 2) AS avg_loan_amount,
    ROUND(AVG(InterestRate), 2) AS avg_interest_rate,
    ROUND(AVG(DTIRatio), 2) AS avg_dti_ratio,
    SUM(CASE WHEN LoanDefault = 1 THEN 1 ELSE 0 END) AS default_count,
    ROUND(AVG(LoanDefault) * 100, 2) AS default_rate_percent
FROM loan_data
GROUP BY loan_term_group
ORDER BY default_rate_percent DESC;

-- 3. Phân tích mức tiền vay và tương quan với tỷ lệ vỡ nợ
SELECT 
    CASE 
        WHEN LoanAmount < 5000 THEN '< 5K'
        WHEN LoanAmount BETWEEN 5000 AND 9999 THEN '5K - 10K'
        WHEN LoanAmount BETWEEN 10000 AND 19999 THEN '10K - 20K'
        ELSE '>= 20K'
    END AS loan_amount_group,
    COUNT(*) AS total_loans,
    ROUND(AVG(InterestRate), 2) AS avg_interest_rate,
    ROUND(AVG(DTIRatio), 2) AS avg_dti_ratio,
    ROUND(AVG(CreditScore), 0) AS avg_credit_score,
    SUM(CASE WHEN LoanDefault = 1 THEN 1 ELSE 0 END) AS default_count,
    ROUND(AVG(LoanDefault) * 100, 2) AS default_rate_percent
FROM loan_data
GROUP BY loan_amount_group
ORDER BY default_rate_percent DESC;

-- 4. Phân tích tỷ lệ vỡ nợ theo nhóm lãi suất
SELECT 
    CASE 
        WHEN InterestRate < 10 THEN '< 10%'
        WHEN InterestRate BETWEEN 10 AND 15 THEN '10% - 15%'
        WHEN InterestRate BETWEEN 15 AND 20 THEN '15% - 20%'
        ELSE '> 20%'
    END AS interest_rate_group,
    COUNT(*) AS total_loans,
    ROUND(AVG(LoanAmount), 2) AS avg_loan_amount,
    ROUND(AVG(DTIRatio), 2) AS avg_dti_ratio,
    ROUND(AVG(CreditScore), 0) AS avg_credit_score,
    SUM(CASE WHEN LoanDefault = 1 THEN 1 ELSE 0 END) AS default_count,
    ROUND(AVG(LoanDefault) * 100, 2) AS default_rate_percent
FROM loan_data
GROUP BY interest_rate_group
ORDER BY default_rate_percent DESC;

-- 5. Phân tích tỷ lệ vỡ nợ theo nhóm DTI (Debt-to-Income Ratio)
SELECT 
    CASE 
        WHEN DTIRatio < 0.2 THEN '< 0.2'
        WHEN DTIRatio BETWEEN 0.2 AND 0.4 THEN '0.2 - 0.4'
        WHEN DTIRatio BETWEEN 0.4 AND 0.6 THEN '0.4 - 0.6'
        ELSE '> 0.6'
    END AS dti_group,
    COUNT(*) AS total_loans,
    ROUND(AVG(LoanAmount), 2) AS avg_loan_amount,
    ROUND(AVG(InterestRate), 2) AS avg_interest_rate,
    ROUND(AVG(CreditScore), 0) AS avg_credit_score,
    SUM(CASE WHEN LoanDefault = 1 THEN 1 ELSE 0 END) AS default_count,
    ROUND(AVG(LoanDefault) * 100, 2) AS default_rate_percent
FROM loan_data
GROUP BY dti_group
ORDER BY default_rate_percent DESC;

