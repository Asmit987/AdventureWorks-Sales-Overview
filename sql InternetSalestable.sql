/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [ProductKey]
      ,[OrderDateKey]
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]
      --,[PromotionKey]
      --,[CurrencyKey]
      --,[SalesTerritoryKey]
      ,[SalesOrderNumber]
      --,[SalesOrderLineNumber]
      --,[RevisionNumber]
      --,[OrderQuantity]
      --,[UnitPrice]
      --,[ExtendedAmount]
      --,[UnitPriceDiscountPct]
      --,[DiscountAmount]
      --,[ProductStandardCost]
      --,[TotalProductCost]
      ,[SalesAmount] 
      --,[TaxAmt]
      --,[Freight]
      --,[CarrierTrackingNumber]
      --,[CustomerPONumber]
      --,[OrderDate]
      --,[DueDate]
      --,[ShipDate]
  FROM 
  [dbo].[FactInternetSales]
  WHERE
  LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) -2  -- I used YEAR(GETDATE()) this function to extract todays date and -2 means from todays 2 years back
                                                -- insted of this i can simply write 2019 by this will work automatically in future
                                                -- Ensures we always bring two years of date from extraction
  ORDER BY
  OrderDateKey ASC

