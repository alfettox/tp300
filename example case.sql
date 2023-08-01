-- EXAMPLE

select
Issue,
SubIssue,
ComplaintNarrative,
CASE WHEN ComplaintNarrative is NULL THEN 'Anomaly' ELSE ComplaintNarrative
END as MynewColumn
from
Complaint
where SubIssue is not null;
select
ComplaintId,
DateReceived,
CASE WHEN ComplaintId='105' THEN 'Specific case 105' ELSE 'N/A'
END as MynewColumn
from
Complaint
where ComplaintId='105';