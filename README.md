# 🏥 Hospital Management System Database

A production-grade relational database blueprint designed in Microsoft SQL Server (T-SQL) to manage comprehensive healthcare workflows. The architecture incorporates 16 core entities tracking patient admissions, medical diagnostics, operational staff scheduling, clinical financial transactions, pharmaceutical inventories, and basic hospitality services.

---

## 🗺️ Database Architecture

The schema relies heavily on primary-to-foreign key relational pairs, establishing explicit referential safety boundaries across modules. 

### Core Schema Modules

* **Patient Care:** `Patient`, `Patient_Records`, `Medical_History`
* **Scheduling & Coordination:** `Doctor`, `Assign_Doctor`, `Appointment`, `Book_Appointment`, `Cancel_Appointment`
* **Hospital Operations:** `Staff`, `Room`, `Lab_Test_Management`
* **Financial Ledger & Supply Chain:** `Treatment`, `Billing`, `Payment_Records`, `Pharmacy`
* **Hospitality Services:** `Cafeteria`

---

## 🛠️ Relational Schema Diagram Overview

```text
[ Patient ] ───1:1───> [ Patient_Records ]
    │
    ├───1:M───> [ Medical_History ]
    ├───1:M───> [ Appointment ] <───M:1─── [ Doctor ]
    ├───1:M───> [ Assign_Doctor ]
    ├───1:M───> [ Book_Appointment ]
    ├───1:M───> [ Treatment ]
    ├───1:M───> [ Billing ] ───1:1───> [ Payment_Records ]
    ├───1:M───> [ Lab_Test_Management ]
