SELECT *
FROM public.Science_curriculum
--1.	Update the marks of student 'Alice Johnson' to 90.
UPDATE public.Science_curriculum
SET science_marks=90
WHERE name='Alice Johnson';

--2.	Delete the row containing details of student named ‘Robb’
DELETE FROM public.Science_curriculum
WHERE name='Robb';

--3.	Rename the column ‘science_marks’ to ‘marks_obtained’.
ALTER TABLE public.Science_curriculum
RENAME science_marks TO marks_obtained


--4.	Update the marks of student 'Brian' to 65.
UPDATE public.Science_curriculum
SET marks_obtained=65
WHERE name='Brian';
