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

A rule-based **transaction risk scoring approach** was developed to prioritize suspicious transactions.

Potential risk factors include:

- 💰 Transaction amount
- 🏷️ Merchant category
- 💳 Entry mode
- 🌍 Foreign transaction indicator
- 🚨 Historical fraud-related patterns
- 📊 Other available transaction attributes

Transactions can then be grouped into risk levels such as:

```text
Low Risk
   ↓
Medium Risk
   ↓
High Risk
```

The purpose of the risk score is to help prioritize transactions for further investigation rather than automatically classify every transaction as fraudulent.

---

# 🔟 Build Dashboard

---

# 📊 Dashboard Preview

![Credit Card Fraud Detection Analytics Dashboard](https://github.com/sutharshiv482-coder/Credit-Card-Fraud-Detection-Analytics/blob/main/Power%20BI%20Desktop%2014-09-2026%2022_12_39.png)

---

# ⚙️ Dashboard Features

- 💳 **KPI Cards** – Monitor total transactions, fraudulent transactions, fraud rate, total transaction amount, and fraud amount.
- 🚨 **Fraud Analysis** – Analyze fraudulent transaction activity and identify major fraud patterns.
- 📉 **Fraud Rate Analysis** – Compare fraud rates across merchant categories, customer age groups, and card types.
- 🏷️ **Merchant Category Analysis** – Identify merchant categories with higher fraud rates.
- 💰 **Fraud Amount Analysis** – Analyze fraud amount distribution across different card types.
- 🔄 **Fraud vs Non-Fraud Comparison** – Compare transaction volume and transaction amount between genuine and fraudulent transactions.
- 👥 **Customer Segment Analysis** – Analyze fraud rates across different customer age groups.
- 💳 **Card Type Analysis** – Compare fraud rates and fraud amounts across different card types.
- ⚠️ **High-Risk Segment Analysis** – Identify transaction segments with higher fraud rates and financial exposure.
- 🎛️ **Interactive Filters** – Dynamically filter dashboard analysis by card type, merchant category, customer age group, city tier, and foreign transaction.
- 💡 **Business Insights** – Present key fraud patterns, risk areas, and actionable findings in a business-friendly format.

---

# 1️⃣1️⃣ Generate Business Insights

The analysis converts transaction-level data into actionable business insights by identifying where fraud is concentrated, which customer and transaction segments carry higher risk, and where financial exposure is greatest.

### Key Business Insights

- **Fraud rate is approximately 2.22%**, with **222 fraudulent transactions** identified out of 9,994 total transactions.
- **Fraudulent transactions represent approximately ₹4.18M**, indicating significant financial exposure despite the relatively low transaction-level fraud rate.
- **ATM withdrawals have the highest fraud rate at 7.38%**, making them a key segment for enhanced monitoring.
- **Online shopping has a 6.39% fraud rate**, indicating elevated risk in digital transactions.
- **Electronics has a 4.59% fraud rate**, making it another high-risk merchant category.
- **RuPay accounts for the highest fraud amount**, indicating greater financial exposure within this card type.
- The **60+ customer age group shows the highest fraud rate**, followed by the 46–60 age group.
- **High-value fraudulent transactions require additional attention** because a relatively small number of transactions can create substantial financial losses.
- Fraud patterns vary across **merchant categories, card types, customer age groups, and transaction segments**, highlighting the need for segment-specific monitoring.

### Business Implications

These findings suggest that fraud prevention should focus on **high-risk merchant categories, digital transactions, high-value transactions, and customer segments with elevated fraud rates** rather than relying only on the overall fraud rate.

> **The goal is not only to detect fraudulent transactions, but to identify where fraud risk and financial exposure are concentrated so that monitoring and prevention efforts can be targeted effectively.**

---

# 1️⃣2️⃣ Recommend Actions

Based on the identified fraud patterns and high-risk segments, the following actions can help reduce fraud exposure and strengthen transaction monitoring.

### Recommended Business Actions

- **Strengthen monitoring for ATM withdrawals** due to their high fraud rate.
- **Apply enhanced monitoring to online shopping transactions** where fraud risk is elevated.
- **Implement additional verification for high-value transactions** to reduce potential financial losses.
- **Monitor high-risk merchant categories**, particularly ATM withdrawal and electronics transactions.
- **Review fraud exposure across card types**, especially where fraud amounts are comparatively high.
- **Introduce segment-based fraud rules** using customer age group, merchant category, card type, transaction amount, and foreign transaction status.
- **Use risk-based transaction alerts** to prioritize suspicious transactions for manual review.
- **Regularly monitor fraud KPIs** such as fraud rate, fraud amount, high-value fraud, and fraud rate by merchant category.
- **Improve data-quality controls** to ensure missing, inconsistent, or incorrect values do not affect fraud detection and reporting.
- **Continuously update fraud detection rules** as new transaction patterns and fraud behaviors emerge.

### Expected Business Impact

These actions can help financial institutions:

- Reduce fraudulent transaction losses.
- Improve early detection of suspicious activity.
- Prioritize investigation resources toward higher-risk transactions.
- Strengthen transaction monitoring and fraud prevention.
- Support more data-driven risk management decisions.

> **The recommended approach is to combine risk-based monitoring, transaction-level controls, and continuous analysis of emerging fraud patterns.**

---

# 🛠️ Technology Stack

| Tool | Purpose |
|------|---------|
| **Python (Pandas)** | Data cleaning, preprocessing, validation, and analysis |
| **SQL** | Business analysis and KPI calculations |
| **Power BI** | Interactive dashboard development and visualization |
| **Jupyter Notebook** | Data exploration and analytical workflow |

---

# 🧠 Skills Demonstrated

- Data Cleaning & Preprocessing
- Data Quality Auditing
- Data Validation
- Exploratory Data Analysis
- Python
- Pandas
- SQL
- Fraud Analytics
- Transaction Analysis
- Risk Scoring
- KPI Development
- Power BI
- Dashboard Development
- Data Visualization
- Business Intelligence
- Financial Risk Analysis
- Business Problem Solving

---
