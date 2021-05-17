-- Cleansed CustomerTable --
SELECT   [CustomerKey]
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      --,[FirstName]
      --,[MiddleName]
      --,[LastName]
	  ,FirstName + ' ' + LastName as FullName,
	  -- Concat first and last name --
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
CASE 
       Gender when 'M' then 'Male' when 'F' then 'Female' END as Gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,[DateFirstPurchase]
      --,[CommuteDistance]
,City as [Customer City]  -- joined customer city column from Geography table
,StateProvinceName as [State]
,EnglishCountryRegionName as [Country Name]
from
dbo.DimCustomer
left join dbo.DimGeography on dbo.DimGeography.GeographyKey = dbo.DimCustomer.GeographyKey
order by 
CustomerKey ASC  -- Order list by Customer key


