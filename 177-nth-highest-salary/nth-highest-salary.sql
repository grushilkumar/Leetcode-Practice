CREATE OR REPLACE FUNCTION NthHighestSalary(N INT) RETURNS TABLE (Salary INT) AS $$
BEGIN
  RETURN QUERY (
    -- Write your PostgreSQL query statement below.
    SELECT subquery.Salary
    FROM (
      SELECT DISTINCT employee.Salary
      FROM employee
      ORDER BY employee.Salary DESC
      offset N-1
      LIMIT 1
    ) AS subquery where N>0
    ORDER BY subquery.Salary
    LIMIT 1
      
  );
END;
$$ LANGUAGE plpgsql;