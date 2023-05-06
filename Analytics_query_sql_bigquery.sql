CREATE OR REPLACE TABLE `sqlproject-379113.big_mart.analytics_query` as (

SELECT 
    h.Item_Id,
    i.Item_Identifier,
    j.Item_Fat_Content,
    j.Item_Type,
    j.Item_Visibility,
    k.Outlet_Identifier,
    k.Outlet_Establishment_Year,
    l.Outlet_Location_Type,
    l.Outlet_Type,
    l.Outlet_Size,
    m.Item_Weight,
    m.Item_MRP,
    m.Item_Outlet_Sales
FROM `sqlproject-379113.big_mart.fact_table`  h
join `sqlproject-379113.big_mart.Item_dim` i on h.Item_Id=i.Item_count_id
join `sqlproject-379113.big_mart.Item_detail_dim` j on j.Item_detail_Id=h.Item_Id
join `sqlproject-379113.big_mart.outlet_dim` k on k.outlet_Id=h.Item_Id
join `sqlproject-379113.big_mart.outlet_detail_dim` l on l.outlet_detail_Id=h.Item_Id
join `sqlproject-379113.big_mart.Item_sales_dim` m on m.Item_sales_Id=h.Item_Id
);

select count(*) from `sqlproject-379113.big_mart.analytics_query`