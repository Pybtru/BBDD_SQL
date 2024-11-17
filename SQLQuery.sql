----First of all we have to clean data, several columns need to be transform into numeric
select * from dbo.bank
alter table dbo.bank alter column GDP_USD NUMERIC
alter table dbo.bank alter column Population NUMERIC
alter table dbo.bank alter column Life_Expectancy NUMERIC
alter table dbo.bank alter column Unemployment_Rate NUMERIC
alter table dbo.bank alter column CO2_Emissions_metric_tons_per_capita NUMERIC
alter table dbo.bank alter column Access_to_Electricity NUMERIC

--Average of countries with the largest population with access to electricity (Russia, South Africa, Indonesia)
SELECT Country, AVG(Access_to_Electricity) as Electricity_Access_average from dbo.bank
group by Country
order by Electricity_Access_average DESC

--Average of the countries that pollute the most (France, Italy, USA)
SELECT Country, AVG(CO2_Emissions_metric_tons_per_capita) as Most_polluting_average from dbo.bank
group by Country
order by Most_polluting_average DESC

--Average of the countries with the highest unemployment rate (Russia, UK, Mexico)
SELECT Country, AVG(Unemployment_Rate) as Unemployed_average from dbo.bank
group by Country
order by Unemployed_average DESC

--The conclussion is that the information is not good, some countries don´t whow their real data


