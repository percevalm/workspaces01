
# sql query
Create View student_supervisor_msc_phd_report AS
 select student_supervisor_msc.person_id, student_supervisor_msc.firstnames,student_supervisor_msc.surname,student_supervisor_msc.degree AS MSc_Degree,student_supervisor_msc.institution AS MSc_Institution,student_supervisor_msc.supervisor AS Msc_Supervisor,student_supervisor_msc.thesis_title AS MSc_Thesis_Title,student_supervisor_msc.start_date AS MSc_StartDate,student_supervisor_msc.currently_registered AS MSc_Currently_Registered,student_supervisor_msc.graduation_date AS MSc_Graduation_Date,student_supervisor_phd.degree AS PhD_Degree,student_supervisor_phd.institution AS PhD_Institution,student_supervisor_phd.supervisor AS PhD_Supervisor,student_supervisor_phd.thesis_title AS PhD_Thesis, student_supervisor_phd.start_date AS PhD_Start_Date, student_supervisor_phd.currently_registered AS PhD_Currently_Registered,student_supervisor_phd.graduation_date AS PhD_Graduation_Date
 from student_supervisor_msc 
 LEFT JOIN student_supervisor_phd 
 ON student_supervisor_msc.person_id=student_supervisor_phd.person_id
