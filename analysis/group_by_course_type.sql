SELECT Course_Type AS course_type, ROUND(AVG(PSS), 2) AS avg_stress
FROM stress_data
WHERE Course_Type IS NOT NULL
GROUP BY Course_Type;
