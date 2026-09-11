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
- What is the total value of fraudulent transactions?
- Which merchant categories have the highest fraud rate?
- Which transaction types have higher fraud activity?
- Which transaction amount ranges contain more fraudulent transactions?
- Are fraudulent transactions concentrated in specific categories?
- Are duplicate transactions present?
- What data-quality issues exist in the raw dataset?
- Which transactions should be considered high risk?
- Which transaction segments require additional fraud monitoring?

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
          ↓
6. Explore Fraud Patterns
          ↓
7. Write SQL Business Queries
          ↓
8. Define KPIs
          ↓
9. Create Risk Scoring Logic
          ↓
10. Build Dashboard
          ↓
11. Generate Business Insights
          ↓
12. Recommend Actions
```

---

# 1️⃣ Understand Business Problem

- Define the credit card fraud detection objective.
- Identify potential financial and operational risks.
- Understand transaction-level fraud requirements.
- Convert business requirements into analytical questions.
- Determine the KPIs required for fraud monitoring.

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

# 4️⃣ Clean Data using Pandas

Data cleaning was performed using **Python and Pandas**.

Key activities:

- Handled missing values.
- Removed exact duplicate records.
- Standardized `Class` fraud labels.
- Standardized merchant categories.
- Standardized entry-mode values.
- Corrected invalid `amount_inr` values.
- Validated `time_seconds` values within the valid range of **0–86,400 seconds**.
- Trimmed whitespace from `transaction_id`.
- Converted `is_foreign` values into a consistent Boolean format.
- Corrected data types.
- Removed completely blank columns: `notes` and `reviewed_by`.
- Prepared the cleaned dataset for SQL analysis and dashboard development.

> 🧹 **Clean data is the foundation of reliable fraud analysis.**

---

# 5️⃣ Validate Cleaned Data

After cleaning, the dataset was validated using **Pandas** to ensure the transformation process did not introduce new data-quality issues.

Validation included:

- Rechecking missing values.
- Confirming duplicate removal.
- Validating `amount_inr` values.
- Checking `Class` fraud-label consistency.
- Checking `merchant_category` consistency.
- Validating `entry_mode` values.
- Checking `time_seconds` within the valid range of **0–86,400 seconds**.
- Confirming correct data types.
- Verifying `transaction_id` formatting.
- Checking `is_foreign` values for consistency.
- Performing final data-quality checks.

> ✅ **Validation ensures the cleaned dataset is reliable and ready for fraud-pattern analysis.**

---

# 6️⃣ Explore Fraud Patterns

Exploratory analysis was performed to understand fraudulent transaction behavior.

Analysis included:

- Fraud vs non-fraud transactions.
- Fraud rate analysis.
- Merchant-category fraud analysis.
- Entry-mode fraud analysis.
- Transaction amount analysis.
- Foreign vs domestic transaction analysis.
- High-value fraudulent transactions.
- Transaction-level fraud patterns.

---

# 7️⃣ Write SQL Business Queries

SQL was used to answer business-focused questions using the cleaned
credit card transaction dataset.

### Business Questions

1. How many transactions were processed?
2. How many transactions were fraudulent?
3. What is the overall fraud rate?
4. What is the total transaction amount?
5. How much transaction value was associated with fraud?
6. What is the average transaction amount?
7. Which merchant categories have the highest fraud rate?
8. Which card types have the highest fraud rate?
9. Which fraudulent transactions have high monetary value?
10. Which transaction segments represent higher fraud risk?

### SQL Analysis Areas

- Total transaction count.
- Fraudulent transaction count.
- Fraud rate.
- Total transaction amount.
- Fraudulent transaction amount.
- Average transaction amount.
- Fraud rate by merchant category.
- Fraud rate by card type.
- High-value fraudulent transactions.
- High-risk transaction segments.

### Business Outcome

SQL analysis transformed the cleaned transaction data into
business-focused metrics that helped identify fraud patterns,
high-risk transaction segments, and financially significant
fraudulent transactions.

The analysis revealed:

- **9,974** total transactions were processed.
- **222** transactions were identified as fraudulent.
- The overall fraud rate was **2.23%**.
- Total transaction value was **₹59,583,339.97**.
- Fraudulent transaction value was **₹4,181,956.90**.
- The average transaction amount was **₹5,973.87**.
- **ATM Withdrawal** had the highest merchant-category fraud rate at **7.38%**.
- **Online Shopping** had the second-highest fraud rate at **6.39%**.
- **Electronics** had a fraud rate of **4.59%**.
- **Amex** had the highest card-type fraud rate at **3.02%**.
- The highest-value fraudulent transaction was **₹3,413,796.72**.
- High-value fraudulent transactions can create a disproportionately large financial impact compared with the overall fraud rate.

These SQL outputs were used as inputs for **KPI definition, risk scoring, dashboard development, fraud pattern analysis, and business recommendations**.

# 8️⃣ Define KPIs

## 📌 Key Performance Indicators

- 💳 **Total Transactions**
- 🚨 **Total Fraudulent Transactions**
- 📉 **Fraud Rate (%)**
- 💰 **Total Transaction Amount**
- ⚠️ **Fraudulent Transaction Amount**
- 📊 **Average Transaction Amount**

These KPIs provide a high-level view of transaction activity and fraud exposure.

---

# 9️⃣ Create Risk Scoring Logic

---

# 🔟 Build Dashboard

---

# 📊 Dashboard Preview

![Credit Card Fraud Detection Analytics Dashboard](YOUR_DASHBOARD_IMAGE_URL)

---

# ⚙️ Dashboard Features


---

# 1️⃣1️⃣ Generate Business Insights

The analysis converts transaction-level data into business-focused insights.

Key areas include:


---

# 1️⃣2️⃣ Recommend Actions

---
