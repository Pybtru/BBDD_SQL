--First of all we have to clean data, "Price_Euro" column has to be transform into numeric
select* from dbo.laptop

alter table dbo.laptop alter column Price_Euro NUMERIC



--SCREEN RESOLUTION

--Order by price-quality (IPS Panel 4K Ultra HD 3840x2160)
select distinct ScreenResolution, Price_Euro from dbo.laptop
order by Price_Euro desc

--Which company sells the best screens? (Razer)
select distinct ScreenResolution,Company, Price_Euro from dbo.laptop
order by Price_Euro desc

--Relation between OpSystem and Screen Resolution (Windows 10)
select distinct ScreenResolution,OpSys, Price_Euro from dbo.laptop
order by Price_Euro desc

--Relation between GPU and Screen Resolution (GeForce GTX 1080) (Nvidia)
select distinct ScreenResolution,GPU_Type,GPU_Company,Price_Euro from dbo.laptop
order by Price_Euro desc



--FINDING SPECIFIC LAPTOPS

--Lets try to find an economic laptop with good features
select * from dbo.laptop_price
where 
GPU_Company = 'Nvidia'
AND
Company = 'Razer'
order by Price_Euro

--Now we take into consideration the OpSystem instead of the company, we select "Windows 10" since we saw that is the best
select * from dbo.laptop_price
where 
GPU_Company = 'Nvidia'
AND
OpSys = 'Windows 10'
order by Price_Euro

--Now we look for the best laptop without taking into consideration if the price is high
select * from dbo.laptop_price
where 
GPU_Company = 'Nvidia'
AND
OpSys = 'Windows 10'
AND
GPU_Type = 'GeForce GTX 1080'
order by Price_Euro desc

