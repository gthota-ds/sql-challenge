-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Employee" (
    "Emp_no" INTEGER   NOT NULL,
    "First_name" VARCHAR   NOT NULL,
    "Last_name" VARCHAR   NOT NULL,
    "Gender" VARCHAR   NOT NULL,
    "Birth_date" DATE   NOT NULL,
    "Hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_Employee" PRIMARY KEY (
        "Emp_no"
     )
);

CREATE TABLE "Departments" (
    "Dept_no" INTEGER   NOT NULL,
    "Dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "Dept_no"
     )
);

CREATE TABLE "Titles" (
    "Emp_no" INTEGER   NOT NULL,
    "First_name" VARCHAR   NOT NULL,
    "Last_name" VARCHAR   NOT NULL,
    "Gender" VARCHAR   NOT NULL,
    "Birth_date" DATE   NOT NULL,
    "Hire_date" DATE   NOT NULL
);

CREATE TABLE "Salaries" (
    "Emp_no" INTEGER   NOT NULL,
    "Salary" VARCHAR   NOT NULL,
    "From_date" DATE   NOT NULL,
    "TO_date" DATE   NOT NULL
);

CREATE TABLE "Dept_Employee" (
    "Dept_no" INTEGER   NOT NULL,
    "Emp_no" INTEGER   NOT NULL,
    "From_date" DATE   NOT NULL,
    "To_date" DATE   NOT NULL
);

CREATE TABLE "Dept_Manager" (
    "Dept_no" INTEGER   NOT NULL,
    "Emp_no" INTEGER   NOT NULL,
    "From_date" DATE   NOT NULL,
    "To_date" DATE   NOT NULL
);

ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_Emp_no" FOREIGN KEY("Emp_no")
REFERENCES "Employee" ("Emp_no");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_Emp_no" FOREIGN KEY("Emp_no")
REFERENCES "Employee" ("Emp_no");

ALTER TABLE "Dept_Employee" ADD CONSTRAINT "fk_Dept_Employee_Dept_no" FOREIGN KEY("Dept_no")
REFERENCES "Departments" ("Dept_no");

ALTER TABLE "Dept_Employee" ADD CONSTRAINT "fk_Dept_Employee_Emp_no" FOREIGN KEY("Emp_no")
REFERENCES "Employee" ("Emp_no");

ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_Dept_no" FOREIGN KEY("Dept_no")
REFERENCES "Departments" ("Dept_no");

ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_Emp_no" FOREIGN KEY("Emp_no")
REFERENCES "Employee" ("Emp_no");

