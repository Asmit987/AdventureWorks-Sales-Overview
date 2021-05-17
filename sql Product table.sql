 -- Cleansed Product table --
SELECT [ProductKey]
      ,[ProductAlternateKey] as ProductItemCode
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,[EnglishProductName] as ProductName,
	   ps.EnglishProductSubcategoryName as [Sub Category], -- Joined in from sub Category table
	   pc.EnglishProductCategoryName as [Product Category] -- Joined in from Category table
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,[Color] as [Product Color]
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,[Size] as [Product Size]
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,[ProductLine] as [Product Line]
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,[ModelName] as [Product Model Name]
     --,[LargePhoto]
      ,[EnglishDescription] as [Product Description]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      ,ISNULL ([Status], 'Outdated') as [Product Status]
  FROM [dbo].[DimProduct]
  LEFT JOIN dbo.DimProductSubcategory as ps on ps.ProductSubcategoryKey = dbo.DimProduct.ProductSubcategoryKey
  LEFT JOIN dbo.DimProductCategory as pc on pc.ProductCategoryKey = dbo.DimProduct.ProductSubcategoryKey
  order by
  dbo.DimProduct.ProductKey ASC