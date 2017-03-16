select name, statecode from states;

select name, statecode, population_1950 as populate_1950, population_2010 from counties where name like 'Prince%' order by statecode;

select population_2010 as populate_2010 from senators inner join states on senators.statecode=states.statecode where senators.name like 'Richard Lugar';

select count(*) as 'Number of Counties in Maryland' from states inner join counties on states.statecode=counties.statecode where states.name like 'Maryland';

select name as 'Last State Admidded to Union' from states order by admitted_to_union desc limit 1;

select senators.name as 'Democratic Senators in no Committees' from senators left join committees on senators.name=committees.chairman where senators.affiliation='D' and committees.id is NULL order by senators.name;