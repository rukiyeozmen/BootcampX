SELECT cohorts.name as cohort_name, count(assignment_submissions.id) as total_submissions
FROM cohorts
JOIN students ON cohorts.id = cohort_id
JOIN assignments ON cohorts.id = cohort_id
LEFT JOIN assignment_submissions ON students.id = student_id AND assignments.id = assignment_submissions.assignment_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;
