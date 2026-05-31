-- Academic Stress Analytics — Case Study #1
-- Analytical queries for student_stress (in this sample only).

-- Average perceived stress (PSS) by AP course category
SELECT
    course_type,
    ROUND(AVG(pss_score), 2) AS avg_pss
FROM student_stress
GROUP BY course_type
ORDER BY course_type;

-- Participant count by AP course category
SELECT
    course_type,
    COUNT(*) AS participant_count
FROM student_stress
GROUP BY course_type
ORDER BY course_type;

-- Descriptive statistics by AP course category
SELECT
    course_type,
    COUNT(*) AS n,
    ROUND(MIN(pss_score), 2) AS min_pss,
    ROUND(MAX(pss_score), 2) AS max_pss,
    ROUND(AVG(pss_score), 2) AS mean_pss,
    ROUND(
        SQRT(
            AVG(pss_score * pss_score) - AVG(pss_score) * AVG(pss_score)
        ),
        2
    ) AS stddev_pss
FROM student_stress
GROUP BY course_type
ORDER BY course_type;

-- Overall sample summary
SELECT
    COUNT(*) AS total_participants,
    ROUND(AVG(pss_score), 2) AS overall_mean_pss,
    ROUND(MIN(pss_score), 2) AS overall_min_pss,
    ROUND(MAX(pss_score), 2) AS overall_max_pss
FROM student_stress;

-- Stress level distribution by course category
SELECT
    course_type,
    stress_level,
    COUNT(*) AS n
FROM student_stress
GROUP BY course_type, stress_level
ORDER BY course_type, stress_level;
