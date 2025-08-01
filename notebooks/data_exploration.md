📊 Data Exploration Notes – Loan Default Prediction
✅ Mục tiêu
Khám phá dữ liệu để hiểu rõ đặc điểm khách hàng, khoản vay, và các yếu tố liên quan đến khả năng vỡ nợ. Quá trình này nhằm phục vụ phân tích chuyên sâu, tìm kiếm insight và hỗ trợ xây dựng chiến lược đánh giá rủi ro tín dụng.

1. 🔍 Các bước khám phá dữ liệu
1.1. Kiểm tra thiếu dữ liệu & định dạng dữ liệu
✅ Không có giá trị thiếu (NULL) trong bộ dữ liệu.

✅ Các cột định dạng chuẩn, không cần xử lý dữ liệu kiểu ngày hay text rối rắm.

📌 Một số cột dạng nhị phân (HasMortgage, HasDependents, HasCoSigner) được mã hóa đúng (0/1).

1.2. Thống kê mô tả ban đầu
Age: Tuổi trung bình ~35–45, có khách hàng từ dưới 20 đến hơn 60 tuổi.

Income: Thu nhập dao động mạnh, phân phối lệch phải. Một số khách có thu nhập cao bất thường.

LoanAmount: Đa phần các khoản vay < $15K, một số ít trên $20K.

LoanTerm: Nhiều khoản vay ngắn hạn (dưới 36 tháng).

CreditScore: Phân bố chủ yếu trong khoảng 600–750.

DTIRatio: Có sự khác biệt rõ giữa nhóm khách có DTI cao và thấp — đây có thể là yếu tố rủi ro.

2. 📌 Ghi chú ban đầu về dữ liệu
LoanPurpose có nhiều mục đích khác nhau: cá nhân, mua xe, sửa nhà, kinh doanh,...

Một số khách hàng có số dòng tín dụng (NumCreditLines) cao bất thường.

Có sự khác biệt rõ trong điểm tín dụng và tỷ lệ vỡ nợ giữa các nhóm nghề nghiệp và tình trạng hôn nhân.

HasCoSigner: Có thể đóng vai trò giảm rủi ro vỡ nợ đáng kể.

LoanDefault: Có thể làm biến mục tiêu cho mô hình phân loại sau này.

3. 🧠 Các hướng phân tích tiếp theo
Phân tích mối quan hệ giữa từng yếu tố với biến Default.

Tạo các nhóm rủi ro theo điểm tín dụng, DTI, thời hạn vay, số tiền vay.

Xem xét nhóm khách hàng có HasDependents = 1, HasMortgage = 1, LoanPurpose = Personal — có thể là nhóm rủi ro cao.

Trực quan hóa dữ liệu với biểu đồ cột, boxplot, scatter plot để hỗ trợ tìm insight.