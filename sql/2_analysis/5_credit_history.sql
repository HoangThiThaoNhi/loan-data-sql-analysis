-- 1. Phân tích theo nhóm điểm tín dụng để xem tác động đến lãi suất, tỷ lệ nợ và số dòng tín dụng

SELECT 
    CASE 
        WHEN CreditScore < 580 THEN 'Rất kém (<580)'
        WHEN CreditScore BETWEEN 580 AND 669 THEN 'Trung bình (580–669)'
        WHEN CreditScore BETWEEN 670 AND 739 THEN 'Tốt (670–739)'
        WHEN CreditScore BETWEEN 740 AND 799 THEN 'Rất tốt (740–799)'
        ELSE 'Xuất sắc (>=800)'
    END AS credit_score_group,
    COUNT(*) AS total_customers,
    ROUND(AVG(InterestRate), 2) AS avg_interest_rate,
    ROUND(AVG(DTIRatio), 2) AS avg_dti,
    ROUND(AVG(NumCreditLines), 2) AS avg_num_credit_lines,
    ROUND(AVG(LoanAmount), 2) AS avg_loan_amount
FROM loan_data
GROUP BY credit_score_group
ORDER BY credit_score_group;

-- 🔍 Insight mong muốn:
-- - Điểm tín dụng càng cao, lãi suất có thực sự giảm không?
-- - Tỷ lệ DTI và số dòng tín dụng có thay đổi theo mức điểm tín dụng?

------------------------------------------------------------------

-- 2. Phân tích số dòng tín dụng ảnh hưởng như nào đến lãi suất và điểm tín dụng

SELECT 
    CASE 
        WHEN NumCreditLines <= 2 THEN 'Ít dòng tín dụng (≤2)'
        WHEN NumCreditLines BETWEEN 3 AND 5 THEN 'Trung bình (3–5)'
        ELSE 'Nhiều dòng tín dụng (>5)'
    END AS credit_line_group,
    COUNT(*) AS total_customers,
    ROUND(AVG(CreditScore), 0) AS avg_credit_score,
    ROUND(AVG(InterestRate), 2) AS avg_interest_rate,
    ROUND(AVG(DTIRatio), 2) AS avg_dti,
    ROUND(AVG(LoanAmount), 2) AS avg_loan_amount
FROM loan_data
GROUP BY credit_line_group
ORDER BY credit_line_group;

-- 🔍 Insight:
-- - Nhiều dòng tín dụng có giúp tăng điểm tín dụng?
-- - Có rủi ro bị tăng DTI không?

------------------------------------------------------------------

-- 3. Xem mối quan hệ giữa thời gian đi làm và điểm tín dụng, số dòng tín dụng

SELECT 
    CASE 
        WHEN MonthsEmployed < 12 THEN 'Dưới 1 năm'
        WHEN MonthsEmployed BETWEEN 12 AND 36 THEN '1–3 năm'
        WHEN MonthsEmployed BETWEEN 37 AND 60 THEN '3–5 năm'
        ELSE 'Trên 5 năm'
    END AS employment_group,
    COUNT(*) AS total_customers,
    ROUND(AVG(CreditScore), 0) AS avg_credit_score,
    ROUND(AVG(NumCreditLines), 2) AS avg_credit_lines,
    ROUND(AVG(DTIRatio), 2) AS avg_dti,
    ROUND(AVG(InterestRate), 2) AS avg_interest_rate
FROM loan_data
GROUP BY employment_group
ORDER BY employment_group;

-- 🔍 Insight:
-- - Làm lâu năm có giúp tăng điểm tín dụng không?
-- - Có được ưu đãi về lãi suất và DTI không?

------------------------------------------------------------------

-- 4. Phân tích tương quan điểm tín dụng và thời hạn vay

SELECT 
    LoanTerm,
    ROUND(AVG(CreditScore), 0) AS avg_credit_score,
    ROUND(AVG(InterestRate), 2) AS avg_interest_rate,
    ROUND(AVG(DTIRatio), 2) AS avg_dti
FROM loan_data
GROUP BY LoanTerm
ORDER BY LoanTerm;

-- 🔍 Insight:
-- - Người có điểm tín dụng cao có vay dài hạn không?
-- - Ngân hàng có áp dụng mức lãi suất thấp hơn cho họ không?

------------------------------------------------------------------

-- 5. Phân tích top 10 khách hàng có lãi suất cao nhất

SELECT 
    *
FROM loan_data
ORDER BY InterestRate DESC
LIMIT 10;

-- 🔍 Mục tiêu:
-- - Xem đặc điểm của những người có lãi suất cao nhất: điểm tín dụng thấp? nhiều nợ? ít kinh nghiệm?

