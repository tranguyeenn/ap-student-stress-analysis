-- Academic Stress Analytics — Case Study #1
-- Schema for the cleaned participant-level stress dataset.
-- Load data/cleaned/student_stress.csv after creating this table.

CREATE TABLE IF NOT EXISTS student_stress (
    participant_id INTEGER PRIMARY KEY,
    course_type   TEXT NOT NULL CHECK (course_type IN ('STEM', 'Humanities')),
    pss_score     REAL NOT NULL,
    source        TEXT,
    stress_level  TEXT CHECK (stress_level IN ('Low', 'Moderate', 'High')),
    cohort        TEXT
);
