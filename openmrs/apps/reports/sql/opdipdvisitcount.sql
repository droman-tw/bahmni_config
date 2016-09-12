select vt.name ,count(v.patient_id) as Count from visit v inner join visit_type vt on vt.visit_type_id=v.visit_type_id
 where vt.visit_type_id in(4,5) and (v.date_started BETWEEN '#startDate#' and '#endDate#') group by vt.name;

