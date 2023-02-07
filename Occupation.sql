SELECT Doctor, Professor, Singer, Actor FROM (SELECT Name,Occupation,ROW_NUMBER()
over (partition by Occupation order by Name) AS row_number FROM
Occupations) PIVOT (
MAX(Name) FOR occupation IN ('Doctor' AS Doctor,'Professor' AS Professor,'Singer' AS
Singer,'Actor' AS Actor) ) 
ORDER BY row_number;