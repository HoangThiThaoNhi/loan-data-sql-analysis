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

## 🛠️ Công cụ sử dụng

- **SQL**: để phân tích dữ liệu
- **Excel hoặc Power BI** : để trực quan hóa
- **VSCode / GitHub**: để tổ chức project
- **Dataset**: Loan Default Prediction Dataset (Kaggle)

## 🗂️ Cấu trúc thư mục

loan-default-sql-project/
│
├── README.md # Tổng quan dự án
├── data/ # Chứa dataset gốc và file đã xử lý
│ └── README.md
├── notebooks/ # Ghi chú, phân tích, xử lý dữ liệu
│ └── README.md
└── sql/ # Câu lệnh SQL truy vấn
└── README.md

# loan-data-sql-analysis
