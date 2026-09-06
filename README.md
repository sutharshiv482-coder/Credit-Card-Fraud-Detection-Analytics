# 💳 Credit Card Fraud Detection Analytics Dashboard

An interactive **Credit Card Fraud Detection Analytics Dashboard** built using **Python (Pandas), SQL, and Power BI** to analyze transaction patterns, identify fraudulent activity, evaluate transaction risk, and support data-driven fraud monitoring decisions.

The project follows an end-to-end analytics workflow, starting from understanding the business problem and auditing raw transaction data to cleaning, validation, SQL analysis, risk scoring, dashboard development, business insights, and recommendations.

---

# 🎯 Project Objective

Develop an end-to-end fraud analytics solution to:

- Detect and analyze fraudulent transactions.
- Identify high-risk transaction patterns.
- Measure fraud rate and financial exposure.
- Analyze fraud across merchant categories and transaction attributes.
- Create a risk-scoring approach for prioritizing suspicious transactions.
- Build an interactive dashboard for fraud monitoring.
- Generate actionable insights for fraud prevention.

---

# 💼 Business Value

Credit card fraud can cause financial losses, operational costs, and customer dissatisfaction. A reliable fraud analytics process helps organizations identify suspicious transaction patterns and prioritize high-risk activity.

This project demonstrates how raw transaction data can be transformed into actionable fraud intelligence using **Pandas, SQL, risk scoring, and Power BI**.

---

# ❓ Business Questions

- What is the overall fraud rate?
- How many fraudulent transactions are present?

---

# 🔄 Project Workflow

The project follows a structured **end-to-end Data Analyst workflow**:

```text
1. Understand Business Problem
          ↓
2. Inspect Raw Dataset
          ↓
3. Perform Data Quality Audit
          ↓
4. Clean Data using Pandas
          ↓
5. Validate Cleaned Data
```

---

# 1️⃣ Understand Business Problem

- Define the credit card fraud detection objective.

---

# 2️⃣ Inspect Raw Dataset

The raw transaction dataset was inspected using **Pandas** to understand its structure and identify potential data-quality problems.

Activities included:

- Loading the dataset.
- Checking dataset dimensions.
- Inspecting column names.
- Reviewing data types.
- Examining categorical values.
- Checking transaction attributes.
- Reviewing fraud/class labels.

---

# 3️⃣ Perform Data Quality Audit

The raw dataset contained several real-world data-quality issues.

| # | Data Quality Issue | Approx. Count |
|---|--------------------|---------------|
| 1 | Missing values | 5–8% across 7 columns |
| 2 | Duplicate rows | 50 exact duplicates |
| 3 | Impossible transaction amounts | 30 rows |
| 4 | Inconsistent fraud/class labels | 40 rows |
| 5 | Inconsistent merchant categories | 50 rows |
| 6 | Inconsistent entry-mode values | 40 rows |
| 7 | Invalid transaction time values | 20 rows |
| 8 | Whitespace in transaction IDs | 25 rows |
| 9 | `is_foreign` stored as inconsistent strings | 35 rows |
| 10 | Completely blank columns | `notes`, `reviewed_by` |

---
