# 🚗 SAS Risk Classification Project

A basic SAS 4GL data analysis project using the `sashelp.cars` dataset. The goal is to classify vehicles as **high-risk** based on profit margin and fuel efficiency.

---

## 🔧 What It Does

- Creates a new `ProfitMargin` feature
- Classifies cars as high-risk if:
  - ProfitMargin > $5000 **or**
  - MPG in city < 15
- Analyzes risk distribution by vehicle type and origin
- Summarizes key metrics with `PROC FREQ` and `PROC MEANS`

---

## 🧠 Technologies

- SAS Base / SAS 4GL
- Built-in dataset: `sashelp.cars`
- No external libraries required
