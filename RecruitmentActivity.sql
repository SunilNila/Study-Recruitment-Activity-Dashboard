USE StudiesDashboard1;

SELECT
CONCAT([URL], + [Project ID]) as 'EDGE Link',
[R&I Number],
[Short Title],
CASE 
	WHEN [Clinical Service Unit] = '' THEN '*Not Known*'
	else [Clinical Service Unit]
	end as [Clinical Service Unit CASED],
CASE 
	WHEN [Main Speciality] = '' THEN '*Not Known*'
	else [Main Speciality]
	end as [Speciality CASED],
CASE 
	WHEN [Name of Department] = '' THEN '*Not Recorded*'
	else [Name of Department]
	end as [Name of Department CASED],
[Date Site Invited],
[Date Site Selected],
[Date Open to Recruitment],
[Planned Recruitment End Date],
CASE 
	WHEN [Site Status] = '' THEN '*Not Known*'
	else [Site Status]
	end as [Site Status CASED],
CASE 
	WHEN [Principal Investigator] = '' THEN '*Not Known*'
	WHEN [Principal Investigator] = ',' THEN '*Not Known*'
	else [Principal Investigator]
	end as [Principal Investigator CASED],
--[Study Type],
CASE 
	WHEN [Study Type] = '' THEN '*Not Known*'
	else [Study Type]
	end as [Study Type CASED],
[Target Participants(Local Sum)] AS [Target Participants],
[Actual Participants Recruited],

CASE 
	WHEN [Sponsors] = '' THEN '*Not Known*'
	else [Sponsors]
	end as [Sponsors CASED],


CASE 
	WHEN [NIHR Organisation] = '' THEN '*Not Known*'
	else [NIHR Organisation]
	end as [NIHR Organisation CASED],

CASE 
	WHEN [IRAS Categories] = 'Clinical trial of an investigational medicinal product' THEN '01. CTIMP'
	WHEN [IRAS Categories] =  'Clinical investigation or other study of a medical device' THEN '02. Medical Device'
	WHEN [IRAS Categories] = 'Combined trial of an investigational medicinal product and an investigational medical device' THEN '03. CTIMP and Medical Device Combined'
	WHEN [IRAS Categories] = 'Other clinical trial to study a novel intervention or randomised clinical trial to compare interventions in clinical practice' THEN '04. Other Clinical Trial'
	WHEN [IRAS Categories] = 'Basic science study involving procedures with human participants' THEN '05. Basic Science'
	WHEN [IRAS Categories] = 'Study administering questionnaires/interviews for quantitative analysis, or using mixed quantitative/qualitative methodology' THEN '06. Questionnaire'
	WHEN [IRAS Categories] = 'Study involving qualitative methods only' THEN '07. Qualitative'
	WHEN [IRAS Categories] = 'Study limited to working with human tissue samples (or other human biological samples) and data (specific project only)' THEN '08. Human Tissue Samples'
	WHEN [IRAS Categories] = 'Study limited to working with data (specific project only)' THEN '09. Study Limited to Data'
	WHEN [IRAS Categories] = 'Research tissue bank' THEN '10. Research Tissue Bank'
	WHEN [IRAS Categories] = 'Research database' THEN '11. Research Database'
    WHEN [IRAS Categories] = 'Other research' THEN '12. Other'
	WHEN [IRAS Categories] = 'Other Study' THEN 'Other Study'	
	ELSE '*Not Known*'
	END AS [IRAS Categories CASED],

CASE
	WHEN [R&I NUMBER] LIKE '%AE%' THEN 'Accident & Emergency'
	WHEN [R&I NUMBER] LIKE '%CO%' THEN 'Clinical Oncology'
	WHEN [R&I NUMBER] LIKE '%AN%' THEN 'Anaesthesia'
	WHEN [R&I NUMBER] LIKE '%CD%' THEN 'Cardiology'
	WHEN [R&I NUMBER] LIKE '%CS%' THEN 'Chaplaincy Services'
	WHEN [R&I NUMBER] LIKE '%CP%' THEN 'Chemical Pathology & Immunology'
	WHEN [R&I NUMBER] LIKE '%CG%' THEN 'Clinical Genetics'
	WHEN [R&I NUMBER] LIKE '%CR%' THEN 'Corporate'
	WHEN [R&I NUMBER] LIKE '%UI%' THEN 'Corporate'
	WHEN [R&I NUMBER] LIKE '%CT%' THEN 'Cardiothoracic Surgery'
	WHEN [R&I NUMBER] LIKE '%DT%' THEN 'Dentistry'
	WHEN [R&I NUMBER] LIKE '%DM%' THEN 'Dermatology'
	WHEN [R&I NUMBER] LIKE '%DI%' THEN 'Dietetics'
	WHEN [R&I NUMBER] LIKE '%ED%' THEN 'Endocrinology & Diabetes'
	WHEN [R&I NUMBER] LIKE '%EN%' THEN 'ENT'
	WHEN [R&I NUMBER] LIKE '%EP%' THEN 'Epidemiology'
	WHEN [R&I NUMBER] LIKE '%EX%' THEN 'External'
	WHEN [R&I NUMBER] LIKE '%GA%' THEN 'Gastroenterology'
	WHEN [R&I NUMBER] LIKE '%GM%' THEN 'General Medicine'
	WHEN [R&I NUMBER] LIKE '%GS%' THEN 'General Medicine'
	WHEN [R&I NUMBER] LIKE '%GU%' THEN 'Genito-Urinary Medicine'
	WHEN [R&I NUMBER] LIKE '%HM%' THEN 'Haematology'
	WHEN [R&I NUMBER] LIKE '%HP%' THEN 'Histopathology'
	WHEN [R&I NUMBER] LIKE '%IM%' THEN 'Immunology'
	WHEN [R&I NUMBER] LIKE '%ID%' THEN 'Infectious Diseases'
	WHEN [R&I NUMBER] LIKE '%IC%' THEN 'Intensive Care Unit'
	WHEN [R&I NUMBER] LIKE '%LP%' THEN 'Liaison Psychiatry'
	WHEN [R&I NUMBER] LIKE '%MO%' THEN 'Medical Oncology'
	WHEN [R&I NUMBER] LIKE '%MP%' THEN 'Medical Physics'
	WHEN [R&I NUMBER] LIKE '%ME%' THEN 'Medicine for the Elderly'
	WHEN [R&I NUMBER] LIKE '%MB%' THEN 'Microbiology'
	WHEN [R&I NUMBER] LIKE '%MW%' THEN 'Midwifery'
	WHEN [R&I NUMBER] LIKE '%MM%' THEN 'Molecular Medicine'
	WHEN [R&I NUMBER] LIKE '%NE%' THEN 'Neurology'
	WHEN [R&I NUMBER] LIKE '%NS%' THEN 'Neurology'
	WHEN [R&I NUMBER] LIKE '%NP%' THEN 'Neurophysiology'
	WHEN [R&I NUMBER] LIKE '%NU%' THEN 'Nursing'
	WHEN [R&I NUMBER] LIKE '%OG%' THEN 'Obstetrics & Gynaecology'
	WHEN [R&I NUMBER] LIKE '%OH%' THEN 'Occupational Health'
	WHEN [R&I NUMBER] LIKE '%OP%' THEN 'Opthalmology'
	WHEN [R&I NUMBER] LIKE '%OS%' THEN 'Oral Surgery'
	WHEN [R&I NUMBER] LIKE '%OR%' THEN 'Orthopaedic Surgery'
	WHEN [R&I NUMBER] LIKE '%OT%' THEN 'Occupational Therapy'
	WHEN [R&I NUMBER] LIKE '%PN%' THEN 'Paediatric Neurology'
	WHEN [R&I NUMBER] LIKE '%PO%' THEN 'Paediatric Oncology'
	WHEN [R&I NUMBER] LIKE '%PS%' THEN 'Paediatric Surgery'
	WHEN [R&I NUMBER] LIKE '%PA%' THEN 'Paediatric & Child Health'
	WHEN [R&I NUMBER] LIKE '%PM%' THEN 'Pain Management Services'
	WHEN [R&I NUMBER] LIKE '%PC%' THEN 'Palliative Care'
	WHEN [R&I NUMBER] LIKE '%PH%' THEN 'Pharmacy'
	WHEN [R&I NUMBER] LIKE '%PT%' THEN 'Physiotherapy'
	WHEN [R&I NUMBER] LIKE '%PL%' THEN 'Plastic Surgery'
	WHEN [R&I NUMBER] LIKE '%PD%' THEN 'Podiatry'
	WHEN [R&I NUMBER] LIKE '%PR%' THEN 'Prosthetics'
	WHEN [R&I NUMBER] LIKE '%PY%' THEN 'Psycology'
	WHEN [R&I NUMBER] LIKE '%RD%' THEN 'Radiology'
	WHEN [R&I NUMBER] LIKE '%RL%' THEN 'Renal & Liver Services'
	WHEN [R&I NUMBER] LIKE '%RI%' THEN 'Renal & Liver Services'
	WHEN [R&I NUMBER] LIKE '%AC%' THEN 'Reproductive Medicine Unit'
	WHEN [R&I NUMBER] LIKE '%RM%' THEN 'Respiratory Medicine'
	WHEN [R&I NUMBER] LIKE '%RR%' THEN 'Rheumatology & Rehabilitation'
	WHEN [R&I NUMBER] LIKE '%RT%' THEN 'Radiotherapy'
	WHEN [R&I NUMBER] LIKE '%SP%' THEN 'Speech Therapy'
	WHEN [R&I NUMBER] LIKE '%UR%' THEN 'Urology'
	WHEN [R&I NUMBER] LIKE '%VS%' THEN 'Vascular Surgery'
END AS [23rd Nov 2022 - Revamped Specialities&Departments],

CASE
	WHEN [Date Open to Recruitment] >='2016-04-01 00:00:00.000' AND [Date Open to Recruitment] <= '2017-03-31 00:00:00.000'
	THEN '2016/2017'
	WHEN [Date Open to Recruitment] >='2017-04-01 00:00:00.000' AND [Date Open to Recruitment] <= '2018-03-31 00:00:00.000'
	THEN '2017/2018'
	WHEN [Date Open to Recruitment] >='2018-04-01 00:00:00.000' AND [Date Open to Recruitment] <= '2019-03-31 00:00:00.000'
	THEN '2018/2019'
	WHEN [Date Open to Recruitment] >='2019-04-01 00:00:00.000' AND [Date Open to Recruitment] <= '2020-03-31 00:00:00.000'
	THEN '2019/2020'
	WHEN [Date Open to Recruitment] >='2020-04-01 00:00:00.000' AND [Date Open to Recruitment] <= '2021-03-31 00:00:00.000'
	THEN '2020/2021'
	WHEN [Date Open to Recruitment] >='2021-04-01 00:00:00.000' AND [Date Open to Recruitment] <= '2022-03-31 00:00:00.000'
	THEN '2021/2022'
	WHEN [Date Open to Recruitment] >='2022-04-01 00:00:00.000' AND [Date Open to Recruitment] <= '2023-03-31 00:00:00.000'
	THEN '2022/2023'
END AS 'Financial Year'

FROM dbo.AllStudies_2022
WHERE CONCAT([URL], + [Project ID]) != ''
AND [Date Open to Recruitment] >= '2016-01-01 00:00:00.000' -- Filter for recruitment activity from 2016 onwards
--AND [Revamped Specialities&Departments] = NULL

--AND [IRAS Categories] = 'Research database'
--AND [R&I Number] = 'RR18/109549'

--CASE
--1.CSU x
--2. Name of Department x
--3. Speciality x
--4. Study Type x
--5. Iras Category x
--6. Site Status x
--7. Principle Investigator x
--8. NIHR Orginastion x
--9. Sponsor x
--10. 23rd Nov 22 - Specialities/Departments revamp X
