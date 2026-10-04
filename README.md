# 💳 Credit Card Fraud Detection Analytics Dashboard

An interactive **Credit Card Fraud Detection Analytics Dashboard** built using **Python (Pandas), SQL, and Power BI** to analyze transaction patterns, identify fraudulent activity, evaluate transaction risk, and support data-driven fraud monitoring decisions.

This project follows an end-to-end **Data Analyst workflow**, from understanding the business problem and auditing raw transaction data to data cleaning, validation, SQL analysis, risk scoring, dashboard development, business insights, and recommendations.

---

## 🎯 Project Objective

The objective of this project is to develop an end-to-end fraud analytics solution to:

* Detect and analyze fraudulent transactions.
* Identify high-risk transaction patterns.
* Measure fraud rate and financial exposure.
* Analyze fraud across merchant categories and transaction attributes.
* Apply a risk-scoring approach to prioritize suspicious transactions.
* Build an interactive dashboard for fraud monitoring.
* Generate actionable insights for fraud prevention and monitoring.

---

## 💼 Business Problem

Credit card fraud can result in financial losses, operational costs, and customer dissatisfaction.

Fraud monitoring teams need to understand:

* Where fraudulent transactions are concentrated.
* Which transaction segments have higher fraud rates.
* How much financial exposure is associated with fraudulent activity.
* Which transactions may require additional investigation.
* Which transaction attributes can help prioritize suspicious activity.

This project transforms raw transaction data into structured fraud analytics using **Pandas, SQL, risk scoring, and Power BI**.

---

## 💡 Business Value

The analysis provides a structured approach to:

* Monitor fraudulent transaction activity.
* Quantify fraud rate and financial exposure.
* Identify high-risk merchant and transaction segments.
* Prioritize suspicious transactions for further investigation.
* Compare fraud patterns across transaction attributes.
* Support data-driven fraud monitoring decisions.

> **The focus is not only on identifying fraudulent transactions, but also on understanding where fraud risk and financial exposure are concentrated.**

---

## ❓ Business Questions

1. What is the overall fraud rate?
2. How many fraudulent transactions are present?
3. What is the total value of fraudulent transactions?
4. Which merchant categories have the highest fraud rate?
5. Which transaction types have higher fraud activity?
6. Which transaction amount ranges contain more fraudulent transactions?
7. Are fraudulent transactions concentrated in specific categories?
8. Are duplicate transactions present?
9. What data-quality issues exist in the raw dataset?
10. Which transactions should be considered high risk?
11. Which transaction segments require additional fraud monitoring?

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
7. Perform SQL Business Analysis
          ↓
8. Define KPIs
          ↓
9. Create Risk Scoring Logic
          ↓
10. Build Power BI Dashboard
          ↓
11. Generate Business Insights
          ↓
12. Recommend Actions
```

---

# 1️⃣ Understand Business Problem

The first step was to translate the fraud-monitoring requirement into analytical questions.

Key objectives included:

* Define the credit card fraud detection objective.
* Identify potential financial and operational risks.
* Understand transaction-level fraud requirements.
* Translate business requirements into analytical questions.
* Determine the KPIs required for fraud monitoring.
* Identify transaction segments that may require additional monitoring.

---

# 2️⃣ Inspect Raw Dataset

The raw transaction dataset was inspected using **Python (Pandas)** to understand its structure and identify potential data-quality issues.

Activities included:

* Loading the dataset.
* Checking dataset dimensions.
* Inspecting column names.
* Reviewing data types.
* Examining categorical values.
* Reviewing transaction attributes.
* Reviewing fraud/class labels.
* Checking the structure of transaction identifiers.

---

# 3️⃣ Perform Data Quality Audit

The raw dataset contained several real-world data-quality issues.

| #  | Data Quality Issue                          | Approx. Count          |
| -- | ------------------------------------------- | ---------------------- |
| 1  | Missing values                              | 5–8% across 7 columns  |
| 2  | Duplicate rows                              | 50 exact duplicates    |
| 3  | Impossible transaction amounts              | 30 rows                |
| 4  | Inconsistent fraud/class labels             | 40 rows                |
| 5  | Inconsistent merchant categories            | 50 rows                |
| 6  | Inconsistent entry-mode values              | 40 rows                |
| 7  | Invalid transaction time values             | 20 rows                |
| 8  | Whitespace in transaction IDs               | 25 rows                |
| 9  | `is_foreign` stored as inconsistent strings | 35 rows                |
| 10 | Completely blank columns                    | `notes`, `reviewed_by` |

---

# 4️⃣ Clean Data using Pandas

Data cleaning and preprocessing were performed using **Python (Pandas)**.

Key activities included:

* Handling missing values.
* Removing exact duplicate records.
* Standardizing `Class` fraud labels.
* Standardizing merchant categories.
* Standardizing entry-mode values.
* Correcting invalid `amount_inr` values.
* Validating `time_seconds` values within the valid range of **0–86,400 seconds**.
* Trimming whitespace from `transaction_id`.
* Converting `is_foreign` values into a consistent Boolean format.
* Correcting data types.
* Removing completely blank columns: `notes` and `reviewed_by`.
* Preparing the cleaned dataset for SQL analysis and Power BI dashboard development.

> 🧹 **Clean data is the foundation of reliable fraud analysis.**

---

# 5️⃣ Validate Cleaned Data

After cleaning, the dataset was validated using **Pandas** to ensure that the transformation process did not introduce new data-quality issues.

Validation included:

* Rechecking missing values.
* Confirming duplicate removal.
* Validating `amount_inr` values.
* Checking `Class` fraud-label consistency.
* Checking `merchant_category` consistency.
* Validating `entry_mode` values.
* Checking `time_seconds` within the valid range of **0–86,400 seconds**.
* Confirming correct data types.
* Verifying `transaction_id` formatting.
* Checking `is_foreign` values for consistency.
* Performing final data-quality checks.

> ✅ **Validation ensures the cleaned dataset is reliable and ready for fraud-pattern analysis.**

---

# 6️⃣ Explore Fraud Patterns

Exploratory analysis was performed to understand fraudulent transaction behavior.

Analysis included:

* Fraud vs non-fraud transactions.
* Overall fraud rate.
* Fraud rate by merchant category.
* Fraud rate by entry mode.
* Transaction amount analysis.
* Foreign vs domestic transaction analysis.
* High-value fraudulent transactions.
* Transaction-level fraud patterns.

---

# 7️⃣ Perform SQL Business Analysis

SQL was used to perform business-focused analysis on the cleaned credit card transaction dataset.

## Business Questions

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

## SQL Analysis Areas

* Total transaction count.
* Fraudulent transaction count.
* Fraud rate.
* Total transaction amount.
* Fraudulent transaction amount.
* Average transaction amount.
* Fraud rate by merchant category.
* Fraud rate by card type.
* High-value fraudulent transactions.
* High-risk transaction segments.

## Key SQL Results

| Metric                                      |                      Result |
| ------------------------------------------- | --------------------------: |
| Total Transactions                          |                   **9,974** |
| Fraudulent Transactions                     |                     **222** |
| Fraud Rate                                  |                   **2.22%** |
| Total Transaction Value                     |          **₹59,583,339.97** |
| Fraudulent Transaction Value                |           **₹4,181,956.90** |
| Average Transaction Amount                  |               **₹5,973.87** |
| Highest Merchant-Category Fraud Rate        |  **ATM Withdrawal — 7.38%** |
| Second-Highest Merchant-Category Fraud Rate | **Online Shopping — 6.39%** |
| Electronics Fraud Rate                      |                   **4.59%** |
| Highest Card-Type Fraud Rate                |            **Amex — 3.02%** |
| Highest-Value Fraudulent Transaction        |           **₹3,413,796.72** |

### Key Findings

* **222 fraudulent transactions** were identified out of **9,974 transactions**.
* The overall fraud rate was approximately **2.22%**.
* Total transaction value was approximately **₹59.58M**.
* Fraudulent transaction value was approximately **₹4.18M**.
* **ATM Withdrawal** had the highest merchant-category fraud rate at **7.38%**.
* **Online Shopping** had the second-highest fraud rate at **6.39%**.
* **Electronics** had a fraud rate of **4.59%**.
* **Amex** had the highest card-type fraud rate at **3.02%**.
* The highest-value fraudulent transaction was **₹3,413,796.72**.
* High-value fraudulent transactions can create substantial financial exposure even when the overall fraud rate is relatively low.

---

# 8️⃣ Define KPIs

## 📌 Key Performance Indicators

| KPI                                  | Purpose                                                                |
| ------------------------------------ | ---------------------------------------------------------------------- |
| 💳 **Total Transactions**            | Measures overall transaction volume                                    |
| 🚨 **Fraudulent Transactions**       | Measures identified fraudulent transaction count                       |
| 📉 **Fraud Rate (%)**                | Measures fraudulent transactions as a percentage of total transactions |
| 💰 **Total Transaction Amount**      | Measures total transaction value                                       |
| ⚠️ **Fraudulent Transaction Amount** | Measures financial value associated with fraudulent transactions       |
| 📊 **Average Transaction Amount**    | Measures average transaction value                                     |

These KPIs provide a high-level view of transaction activity and fraud exposure.

---

# 9️⃣ Create Risk Scoring Logic

A rule-based **transaction risk-scoring approach** was developed to help prioritize suspicious transactions for further review.

Potential risk factors include:

* 💰 Transaction amount.
* 🏷️ Merchant category.
* 💳 Entry mode.
* 🌍 Foreign transaction indicator.
* 🚨 Historical fraud-related patterns.
* 📊 Other available transaction attributes.

Transactions can be grouped into:

```text
Low Risk
    ↓
Medium Risk
    ↓
High Risk
```

The purpose of the risk score is to **prioritize transactions for investigation**, not to automatically classify every transaction as fraudulent.

> **Risk scoring should be treated as an analytical prioritization mechanism rather than a production fraud-detection model.**

---

# 🔟 Build Power BI Dashboard

The cleaned transaction data, SQL analysis, KPIs, and risk-related analysis were used to build an interactive **Power BI fraud analytics dashboard**.

---

# 📊 Dashboard Preview

![Credit Card Fraud Detection Analytics Dashboard](https://github.com/sutharshiv482-coder/Credit-Card-Fraud-Detection-Analytics/blob/main/Power%20BI%20Desktop%2014-09-2026%2022_12_39.png)

---

# ⚙️ Dashboard Features

### 💳 KPI Cards

Monitor:

* Total transactions.
* Fraudulent transactions.
* Fraud rate.
* Total transaction amount.
* Fraudulent transaction amount.

### 🚨 Fraud Analysis

Analyze fraudulent transaction activity and identify major fraud patterns.

### 📉 Fraud Rate Analysis

Compare fraud rates across:

* Merchant categories.
* Customer age groups.
* Card types.

### 🏷️ Merchant Category Analysis

Identify merchant categories with comparatively higher fraud rates.

### 💰 Fraud Amount Analysis

Analyze fraudulent transaction value across different card types and transaction segments.

### 🔄 Fraud vs Non-Fraud Comparison

Compare transaction volume and transaction value between genuine and fraudulent transactions.

### 👥 Customer Age Analysis

Analyze fraud rates across different customer age groups.

### 💳 Card Type Analysis

Compare fraud rates and fraud amounts across different card types.

### ⚠️ High-Risk Segment Analysis

Identify transaction segments with higher fraud rates and financial exposure.

### 🎛️ Interactive Filters

The dashboard supports filtering by:

* Card type.
* Merchant category.
* Customer age group.
* City tier.
* Foreign transaction status.

### 💡 Business Insights

Present key fraud patterns, risk areas, and actionable findings in a business-friendly format.

---

# 1️⃣1️⃣ Generate Business Insights

The analysis converts transaction-level data into business insights by identifying where fraud is concentrated, which segments have elevated risk, and where financial exposure is greatest.

## Key Business Insights

### 🚨 Overall Fraud Activity

**222 fraudulent transactions** were identified out of **9,974 total transactions**, resulting in an overall fraud rate of approximately **2.22%**.

### 💰 Financial Exposure

Fraudulent transactions represented approximately **₹4.18M** in transaction value.

### 🏧 ATM Withdrawal Risk

**ATM Withdrawal** had the highest merchant-category fraud rate at **7.38%**, making it an important segment for enhanced monitoring.

### 🛒 Online Shopping Risk

**Online Shopping** had a fraud rate of **6.39%**, indicating elevated fraud activity within this transaction category.

### 📱 Electronics Risk

**Electronics** had a fraud rate of **4.59%**, making it another category requiring attention.

### 💳 Card-Type Exposure

**Amex** had the highest card-type fraud rate at **3.02%**.

**RuPay** accounted for the highest fraud amount, indicating comparatively higher financial exposure within this card type.

### 👥 Customer Age Groups

The **60+ customer age group** showed the highest fraud rate, followed by the **46–60** age group.

### 💸 High-Value Fraud

The highest-value fraudulent transaction was **₹3,413,796.72**.

High-value fraudulent transactions require particular attention because a relatively small number of transactions can create substantial financial exposure.

### 📊 Segment-Level Risk

Fraud patterns vary across merchant categories, card types, customer age groups, and transaction attributes.

This supports segment-based fraud monitoring rather than relying only on the overall fraud rate.

> **The goal is not only to identify fraudulent transactions, but to understand where fraud risk and financial exposure are concentrated so that monitoring efforts can be targeted effectively.**

---

# 1️⃣2️⃣ Recommend Actions

Based on the identified fraud patterns and high-risk segments:

### 🏧 Strengthen ATM Monitoring

Increase monitoring attention for ATM withdrawals because this category has the highest identified fraud rate.

### 🛒 Monitor Online Shopping Transactions

Apply enhanced monitoring to online shopping transactions due to their elevated fraud rate.

### 💰 Review High-Value Transactions

Apply additional verification or review to unusually high-value transactions because of their potential financial exposure.

### 🏷️ Monitor High-Risk Merchant Categories

Prioritize monitoring of merchant categories with comparatively higher fraud rates, particularly ATM Withdrawal and Electronics.

### 💳 Review Card-Type Exposure

Monitor fraud rate and fraud amount across card types to identify areas with higher transaction risk or financial exposure.

### 👥 Apply Segment-Based Monitoring

Use customer age group, merchant category, card type, transaction amount, and foreign transaction status as analytical dimensions when reviewing suspicious activity.

### ⚠️ Prioritize Risk-Based Alerts

Use the risk-scoring approach to prioritize transactions for manual investigation rather than treating every transaction equally.

### 📊 Monitor Fraud KPIs

Regularly monitor:

* Fraud rate.
* Fraudulent transaction count.
* Fraudulent transaction amount.
* High-value fraudulent transactions.
* Fraud rate by merchant category.
* Fraud rate by card type.

### 🧹 Maintain Data-Quality Controls

Continue monitoring missing, inconsistent, duplicate, and invalid transaction data because data-quality problems can affect fraud reporting and analysis.

> **The recommended approach is to combine risk-based monitoring, transaction-level analysis, and continuous review of emerging fraud patterns.**

---

# 🛠️ Technology Stack

| Tool                 | Purpose                                                            |
| -------------------- | ------------------------------------------------------------------ |
| **Python (Pandas)**  | Data cleaning, preprocessing, validation, and exploratory analysis |
| **SQL**              | Business analysis, fraud metrics, and KPI calculations             |
| **Power BI**         | Interactive dashboard development and visualization                |
| **Jupyter Notebook** | Data exploration and analytical workflow                           |

---

# 🧠 Skills Demonstrated

* Data Cleaning & Preprocessing
* Data Quality Auditing
* Data Validation
* Exploratory Data Analysis
* Python
* Pandas
* SQL
* Fraud Analytics
* Transaction Analysis
* Risk Scoring
* KPI Development
* Power BI
* Dashboard Development
* Data Visualization
* Business Intelligence
* Financial Risk Analysis
* Business Problem Solving

---

# 📈 Business Impact

This project demonstrates how transaction-level data can be transformed into structured fraud intelligence for monitoring and decision support.

The analytics solution helps teams:

* 🚨 Monitor fraudulent transaction activity.
* 💰 Quantify financial exposure associated with fraud.
* 📊 Track key fraud-monitoring KPIs.
* 🔍 Identify high-risk transaction patterns.
* 🏷️ Detect merchant categories with elevated fraud rates.
* ⚠️ Prioritize high-risk and high-value transactions for investigation.
* 🎯 Support risk-based transaction monitoring.
* 🧹 Improve awareness of data-quality issues affecting fraud analysis.
* 📈 Support data-driven fraud-management decisions.

> **Business Value:** The dashboard moves fraud analysis beyond simply counting fraudulent transactions by showing **where fraud risk is concentrated, how much financial exposure it represents, and which areas should receive greater monitoring attention.**

---

# 🚀 Project Outcome

The project transformed a **raw and inconsistent credit card transaction dataset** into an end-to-end fraud analytics solution using **Pandas, SQL, risk scoring, and Power BI**.

The completed workflow demonstrates:

```text
Business Problem
      ↓
Raw Transaction Data
      ↓
Data Quality Audit
      ↓
Pandas Data Cleaning
      ↓
Data Validation
      ↓
Fraud Pattern Analysis
      ↓
SQL Business Analysis
      ↓
KPI Development
      ↓
Risk Scoring
      ↓
Power BI Dashboard
      ↓
Business Insights
      ↓
Business Recommendations
```

The final solution provides a structured framework for analyzing transaction fraud, identifying high-risk segments, evaluating financial exposure, and supporting data-driven fraud monitoring decisions.

---

# 👨‍💻 Author

**Shiv Suthar**

---

⭐ **If you found this project useful, consider giving it a Star on GitHub!**
