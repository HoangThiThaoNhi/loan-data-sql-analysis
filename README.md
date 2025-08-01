# Loan Default Prediction Project (SQL & Data Analysis)

## 🎯 Mục tiêu dự án

Mục tiêu của dự án này là phân tích dữ liệu vay vốn để tìm hiểu các yếu tố có ảnh hưởng đến việc **khách hàng có khả năng không trả được nợ (default)**. Từ đó, đưa ra các **đề xuất dữ liệu** giúp ngân hàng cải thiện quy trình xét duyệt hồ sơ vay và quản lý rủi ro.

### ❓ Câu hỏi phân tích chính

#### 1. Tổng quan hồ sơ khách hàng
- Tổng số khách hàng vay là bao nhiêu?
- Tỷ lệ khách hàng bị default là bao nhiêu?
- Tỷ lệ hoàn thành trả nợ là bao nhiêu?

#### 2. Ảnh hưởng của nhân khẩu học
- Tỷ lệ default theo giới tính như thế nào?
- Độ tuổi nào có tỷ lệ default cao nhất?
- Trình độ học vấn và tình trạng hôn nhân có ảnh hưởng đến khả năng trả nợ không?

#### 3. Vai trò của thu nhập và điều kiện tài chính
- Khách hàng có thu nhập cao có khả năng trả nợ tốt hơn không?
- Có mức thu nhập tối thiểu nào giúp giảm rõ rệt nguy cơ default không?

#### 4. Ảnh hưởng của khoản vay
- Mức vay lớn hơn có dẫn đến tỷ lệ default cao hơn không?
- Mục đích vay (mua xe, học hành, tiêu dùng…) ảnh hưởng thế nào đến rủi ro?
- Sở hữu nhiều khoản vay có làm tăng khả năng default?

#### 5. Lịch sử tín dụng và hành vi tài chính
- Các chỉ số tín dụng như số lần thanh toán trễ, số tài khoản hiện có,… có liên quan gì đến default không?
- Có thể phát hiện nhóm khách hàng có lịch sử xấu thông qua dữ liệu nào?

#### 6. Nhóm khách hàng rủi ro
- Có thể phân nhóm khách hàng theo mức độ rủi ro không?
- Các yếu tố nào quan trọng nhất trong việc phân nhóm này?

#### 7. Gợi ý cho ngân hàng
- Ngân hàng nên điều chỉnh chính sách xét duyệt như thế nào để giảm rủi ro?
- Có thể xây dựng hệ thống cảnh báo hoặc chấm điểm tín dụng đơn giản từ dữ liệu?

---

### 📌 Kết quả mong đợi

- Phân tích dữ liệu bằng SQL để trả lời các câu hỏi trên.
- Trực quan hóa các kết quả để tìm insight.
- Viết báo cáo tổng hợp giúp hỗ trợ ra quyết định kinh doanh.
- Đưa toàn bộ project lên GitHub như một sản phẩm phân tích dữ liệu thực tế.

## 📊 Insights từ phân tích dữ liệu

Dựa trên việc khám phá dữ liệu và truy vấn SQL, nhóm đã rút ra được các insight quan trọng giúp ngân hàng xác định và quản lý rủi ro tín dụng hiệu quả hơn:

### 1. Điểm tín dụng thấp là yếu tố rủi ro lớn
- Nhóm khách hàng có điểm tín dụng dưới **600** có tỷ lệ vỡ nợ cao nhất.
- Tỷ lệ vỡ nợ **giảm dần** khi điểm tín dụng **tăng lên**.

### 2. Tỷ lệ nợ trên thu nhập (DTI Ratio) càng cao, nguy cơ vỡ nợ càng lớn
- Khách hàng có **DTI Ratio > 40%** có nguy cơ vỡ nợ **gấp đôi** nhóm dưới 20%.

### 3. Thời hạn vay dài làm tăng rủi ro vỡ nợ
- Các khoản vay dài hạn (**> 36 tháng**) có tỷ lệ vỡ nợ **cao hơn** so với vay ngắn hạn hoặc trung hạn.

### 4. Khoản vay càng lớn, rủi ro càng cao
- Nhóm vay từ **20.000 USD trở lên** có tỷ lệ vỡ nợ cao nhất trong các phân khúc khoản vay.

### 5. Thiếu người đồng vay (co-signer) dẫn đến tỷ lệ vỡ nợ cao hơn
- Khách hàng vay mà **không có người đồng vay** có xu hướng vỡ nợ **cao hơn đáng kể**.

### 6. Tình trạng hôn nhân ảnh hưởng đến khả năng trả nợ
- **Người đã ly hôn** có tỷ lệ vỡ nợ **cao hơn** so với người **độc thân** hoặc **đã kết hôn**.



## 🛠️ Công cụ sử dụng

- **SQL**: để phân tích dữ liệu
- **Excel hoặc Power BI** : để trực quan hóa
- **VSCode / GitHub**: để tổ chức project
- **Dataset**: Loan Default Prediction Dataset (Kaggle)

## 🗂️ Cấu trúc thư mục

#### 1. README.md
Tổng quan dự án:

Mục tiêu phân tích

Giới thiệu dataset

Cách chạy file SQL

#### 2. data/
Dữ liệu sử dụng trong dự án:

loan_data.csv: Dữ liệu gốc từ Kaggle

loan_data_cleaned.csv: Dữ liệu sau xử lý (nếu có)

README.md: Mô tả các cột, format dữ liệu

#### 3. notebooks/
Ghi chú, kế hoạch thực hiện:

project_plan.md: Các bước thực hiện dự án

data_exploration.md: Ghi chú quá trình khám phá dữ liệu

README.md: Mô tả mục tiêu thư mục

#### 4. sql/
Các câu truy vấn SQL chia theo module:

0_raw_data/: Kiểm tra cấu trúc bảng, schema

1_data_cleaning/: Xử lý thiếu dữ liệu, kiểm tra định dạng

2_analysis/:

1_overview.sql: Tổng quan khách hàng và tỷ lệ vỡ nợ

2_demographics.sql: Phân tích nhân khẩu học

3_income_financial.sql: Phân tích thu nhập, tài chính

4_loan_characteristics.sql: Phân tích đặc điểm khoản vay

5_credit_history.sql: Lịch sử tín dụng, chậm trả

6_risk_segmentation.sql: Phân nhóm khách hàng theo rủi ro

3_insights_summary.sql: Tổng hợp insight chính

#### 5. output/ (tuỳ chọn)
Kết quả xuất ra từ phân tích:

dashboard_screenshots/: Hình chụp dashboard nếu có

charts/: Biểu đồ phân tích từ Excel hoặc Python


## 📌 Dataset

- Dataset gốc từ: **Kaggle - Loan Default Prediction**
- Gồm các cột: `Income`, `LoanAmount`, `CreditScore`, `Age`, `EmploymentType`, `LoanPurpose`, `Default`, v.v.


