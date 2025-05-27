SELECT
    *
FROM
    employees AS employee,
    employees AS manager,
    customers AS cust
WHERE
    employee.reportsTo = manager.employeeNumber
    AND employee.employeeNumber = cust.salesRepEmployeeNumber;
