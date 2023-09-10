CREATE TABLE madt8101-svoc.supermarket.svoc_supermarket AS
SELECT
	cust.cust_code,
	first_shop_date, last_shop_date,
	previous_shop_date,
	dur_from_last_date,
	weekday_count, holiday_count,
	shop_morning_count, shop_afternoon_count, shop_evening_count, shop_night_count,
	no_of_visit, mtbp,
	no_visit_week, avg_weekly_visit, percent_active_weeks,
	total_spend, avg_weekly_spend,avg_spend, std_spend,
	spend_last_1_mth, spend_last_3_mth, spend_last_6_mth,
	arpu,
	avg_prod40_d1_spend, avg_prod40_d2_spend, avg_prod40_d3_spend,
	avg_prod40_d4_spend, avg_prod40_d5_spend, avg_prod40_d6_spend,
	avg_prod40_d7_spend, avg_prod40_d8_spend, avg_prod40_d9_spend,
	prop_basket_s, prop_basket_m, prop_basket_l,
	prop_small_shop, prop_full_shop, prop_top_up,
	avg_dom_fresh_spend, avg_dom_mixed_spend,
	avg_dom_grocery_spend, avg_dom_nonfood_spend,
	cust_lifestage

FROM
	(
  SELECT
    CUST_CODE AS cust_code,
    MAX(CUST_LIFESTAGE) AS cust_lifestage,
    MIN(SHOP_DATE) AS first_shop_date, MAX(SHOP_DATE) AS last_shop_date,
    DATE_DIFF(CAST('2008-07-06'AS DATE), CAST(MAX(SHOP_DATE) AS DATE), DAY) AS dur_from_last_date,
    ROUND(SAFE_DIVIDE((DATE_DIFF(CAST(MAX(SHOP_DATE) AS DATE), CAST(MIN(SHOP_DATE) AS DATE), DAY)),COUNT(DISTINCT SHOP_DATE)),2) AS mtbp,
    COUNT(DISTINCT SHOP_DATE) AS no_of_visit,
    ROUND(COUNT(DISTINCT BASKET_ID)/COUNT(DISTINCT SHOP_WEEK),2) AS avg_weekly_visit,
    ROUND(SUM(SPEND),2) AS total_spend,
    ROUND(SUM(SPEND)/COUNT(DISTINCT SHOP_WEEK),2) AS avg_weekly_spend,
    ROUND(SAFE_DIVIDE(SUM(SPEND),COUNT(DISTINCT BASKET_ID)),2) AS avg_spend,
    ROUND(COALESCE(STDDEV(SPEND),0),2) AS std_spend,
    ROUND(SAFE_DIVIDE(SUM(SPEND),COUNT(DISTINCT CUST_CODE)),2) AS arpu,
    
    -- Calculate sum spending for each time windows --
    (
      SELECT ROUND(COALESCE(SUM(SPEND),0),2)
      FROM supermarket.supermarket_table s1
      WHERE s1.CUST_CODE = s0.CUST_CODE
            AND SHOP_DATE >= DATE_SUB('2008-07-06', INTERVAL 1 MONTH)
    ) AS spend_last_1_mth,
    (
      SELECT ROUND(COALESCE(SUM(SPEND),0),2)
      FROM supermarket.supermarket_table s2
      WHERE s2.CUST_CODE = s0.CUST_CODE
            AND SHOP_DATE >= DATE_SUB('2008-07-06', INTERVAL 3 MONTH)
    ) AS spend_last_3_mth,
    (
      SELECT ROUND(COALESCE(SUM(SPEND),0),2)
      FROM supermarket.supermarket_table s3
      WHERE s3.CUST_CODE = s0.CUST_CODE
            AND SHOP_DATE >= DATE_SUB('2008-07-06', INTERVAL 6 MONTH)
    ) AS spend_last_6_mth,

    -- Calculate avergae spend of each product dept. purchased by an individual customer --
    ROUND(COALESCE(SAFE_DIVIDE(SUM(CASE WHEN PROD_CODE_40 = 'D00001' THEN SPEND ELSE 0 END),
    COUNT(DISTINCT CASE WHEN PROD_CODE_40 = 'D00001' THEN BASKET_ID END)),0),2) AS avg_prod40_d1_spend,

    ROUND(COALESCE(SAFE_DIVIDE(SUM(CASE WHEN PROD_CODE_40 = 'D00002' THEN SPEND ELSE 0 END),
    COUNT(DISTINCT CASE WHEN PROD_CODE_40 = 'D00002' THEN BASKET_ID END)),0),2) AS avg_prod40_d2_spend,

    ROUND(COALESCE(SAFE_DIVIDE(SUM(CASE WHEN PROD_CODE_40 = 'D00003' THEN SPEND ELSE 0 END),
    COUNT(DISTINCT CASE WHEN PROD_CODE_40 = 'D00003' THEN BASKET_ID END)),0),2) AS avg_prod40_d3_spend,

    ROUND(COALESCE(SAFE_DIVIDE(SUM(CASE WHEN PROD_CODE_40 = 'D00004' THEN SPEND ELSE 0 END),
    COUNT(DISTINCT CASE WHEN PROD_CODE_40 = 'D00004' THEN BASKET_ID END)),0),2) AS avg_prod40_d4_spend,

    ROUND(COALESCE(SAFE_DIVIDE(SUM(CASE WHEN PROD_CODE_40 = 'D00005' THEN SPEND ELSE 0 END),
    COUNT(DISTINCT CASE WHEN PROD_CODE_40 = 'D00005' THEN BASKET_ID END)),0),2) AS avg_prod40_d5_spend,

    ROUND(COALESCE(SAFE_DIVIDE(SUM(CASE WHEN PROD_CODE_40 = 'D00006' THEN SPEND ELSE 0 END),
    COUNT(DISTINCT CASE WHEN PROD_CODE_40 = 'D00006' THEN BASKET_ID END)),0),2) AS avg_prod40_d6_spend,

    ROUND(COALESCE(SAFE_DIVIDE(SUM(CASE WHEN PROD_CODE_40 = 'D00007' THEN SPEND ELSE 0 END),
    COUNT(DISTINCT CASE WHEN PROD_CODE_40 = 'D00007' THEN BASKET_ID END)),0),2) AS avg_prod40_d7_spend,

    ROUND(COALESCE(SAFE_DIVIDE(SUM(CASE WHEN PROD_CODE_40 = 'D00008' THEN SPEND ELSE 0 END),
    COUNT(DISTINCT CASE WHEN PROD_CODE_40 = 'D00008' THEN BASKET_ID END)),0),2) AS avg_prod40_d8_spend,

    ROUND(COALESCE(SAFE_DIVIDE(SUM(CASE WHEN PROD_CODE_40 = 'D00009' THEN SPEND ELSE 0 END),
    COUNT(DISTINCT CASE WHEN PROD_CODE_40 = 'D00009' THEN BASKET_ID END)),0),2) AS avg_prod40_d9_spend,
  
    -- Calculate propotion of each bastket size purchased by an individual customer --
    ROUND(COALESCE(SAFE_DIVIDE(SUM(CASE WHEN BASKET_SIZE = 'S' THEN 1 ELSE 0 END),
    COUNT(DISTINCT BASKET_ID)),0),2) AS prop_basket_s,
    ROUND(COALESCE(SAFE_DIVIDE(SUM(CASE WHEN BASKET_SIZE = 'M' THEN 1 ELSE 0 END),
    COUNT(DISTINCT BASKET_ID)),0),2) AS prop_basket_m,
    ROUND(COALESCE(SAFE_DIVIDE(SUM(CASE WHEN BASKET_SIZE = 'L' THEN 1 ELSE 0 END),
    COUNT(DISTINCT BASKET_ID)),0),2) AS prop_basket_l,
  
    -- Calculate propotion of each basket type purchased by an individual customer --
    ROUND(COALESCE(SAFE_DIVIDE(SUM(CASE WHEN BASKET_TYPE = 'Small Shop' THEN 1 ELSE 0 END),
    COUNT(DISTINCT BASKET_ID)),0),2) AS prop_small_shop,

    ROUND(COALESCE(SAFE_DIVIDE(SUM(CASE WHEN BASKET_TYPE = 'Full Shop' THEN 1 ELSE 0 END),
    COUNT(DISTINCT BASKET_ID)),0),2) AS prop_full_shop,

    ROUND(COALESCE(SAFE_DIVIDE(SUM(CASE WHEN BASKET_TYPE = 'Top Up' THEN 1 ELSE 0 END),
    COUNT(DISTINCT BASKET_ID)),0),2) AS prop_top_up,
  
    -- Calculate average spend of each basket dominance of an individual customer --
    ROUND(COALESCE(SAFE_DIVIDE(SUM(CASE WHEN BASKET_DOMINANT_MISSION = 'Fresh' THEN SPEND ELSE 0 END),
    COUNT(DISTINCT CASE WHEN BASKET_DOMINANT_MISSION = 'Fresh' THEN BASKET_ID END)),0),2) AS avg_dom_fresh_spend,

    ROUND(COALESCE(SAFE_DIVIDE(SUM(CASE WHEN BASKET_DOMINANT_MISSION = 'Mixed' THEN SPEND ELSE 0 END),
    COUNT(DISTINCT CASE WHEN BASKET_DOMINANT_MISSION = 'Mixed' THEN BASKET_ID END)),0),2) AS avg_dom_mixed_spend,

    ROUND(COALESCE(SAFE_DIVIDE(SUM(CASE WHEN BASKET_DOMINANT_MISSION = 'Grocery' THEN SPEND ELSE 0 END),
    COUNT(DISTINCT CASE WHEN BASKET_DOMINANT_MISSION = 'Grocery' THEN BASKET_ID END)),0),2) AS avg_dom_grocery_spend,

    ROUND(COALESCE(SAFE_DIVIDE(SUM(CASE WHEN BASKET_DOMINANT_MISSION = 'Nonfood' THEN SPEND ELSE 0 END),
    COUNT(DISTINCT CASE WHEN BASKET_DOMINANT_MISSION = 'Nonfood' THEN BASKET_ID END)),0),2) AS avg_dom_nonfood_spend

  FROM `madt8101-svoc.supermarket.supermarket_table` s0
  WHERE CUST_CODE IS NOT NULL
  GROUP BY s0.CUST_CODE
)cust

-- Calcualte previous shop date
LEFT JOIN(
SELECT
  CUST_CODE,
  prev_shop AS previous_shop_date
FROM
  (
    SELECT
        CUST_CODE,
          MAX(SHOP_DATE) AS last_shop_date,
          LAG(SHOP_DATE) OVER (PARTITION BY CUST_CODE ORDER BY SHOP_DATE) AS prev_shop,
          ROW_NUMBER() OVER (PARTITION BY CUST_CODE ORDER BY SHOP_DATE DESC) AS row_num
    FROM `madt8101-svoc.supermarket.supermarket_table` s4
    GROUP BY s4.CUST_CODE, s4.SHOP_DATE
  )
WHERE row_num = 1) ps
ON cust.CUST_CODE = ps.CUST_CODE

-- Count shop weekday/holiday and shop time
LEFT JOIN(
SELECT
  CUST_CODE,
  SUM(holiday) AS holiday_count,
  SUM(weekday) AS weekday_count,
  SUM(shop_morning) AS shop_morning_count,
  SUM(shop_afternoon) AS shop_afternoon_count,
  SUM(shop_evening) AS shop_evening_count,
  SUM(shop_night) AS shop_night_count
FROM
  (
    SELECT
      CUST_CODE,
      SUM(DISTINCT(CASE WHEN SHOP_WEEKDAY IN(1,7) THEN 1 ELSE 0 END)) AS holiday,
      SUM(DISTINCT(CASE WHEN SHOP_WEEKDAY IN(2,3,4,5,6) THEN 1 ELSE 0 END)) AS weekday,
      SUM(DISTINCT(CASE WHEN SHOP_HOUR BETWEEN 8 AND 11 THEN 1 ELSE 0 END)) AS shop_morning,
      SUM(DISTINCT(CASE WHEN SHOP_HOUR BETWEEN 12 AND 15 THEN 1 ELSE 0 END)) AS shop_afternoon,
      SUM(DISTINCT(CASE WHEN SHOP_HOUR BETWEEN 16 AND 18 THEN 1 ELSE 0 END)) AS shop_evening,
      SUM(DISTINCT(CASE WHEN SHOP_HOUR BETWEEN 19 AND 21 THEN 1 ELSE 0 END)) AS shop_night
    FROM `madt8101-svoc.supermarket.supermarket_table` s5
    GROUP BY s5.SHOP_DATE, s5.CUST_CODE
  )
GROUP BY CUST_CODE
  ) sc ON cust.CUST_CODE = sc.CUST_CODE

-- Calculate percent_active_week
LEFT JOIN(
SELECT
  CUST_CODE,
  no_visit_week,
  ROUND((SAFE_DIVIDE(no_visit_week, total_weeks)*100),2) AS percent_active_weeks
FROM
  (
    SELECT
      s7.CUST_CODE,
      COUNT(DISTINCT SHOP_WEEK) AS no_visit_week,
      (SELECT COUNT(DISTINCT SHOP_WEEK) AS weeks
        FROM`madt8101-svoc.supermarket.supermarket_table` s6) AS total_weeks
    FROM `madt8101-svoc.supermarket.supermarket_table` s7
    GROUP BY s7.CUST_CODE
  )
GROUP BY CUST_CODE, no_visit_week, total_weeks
  )aw ON cust.CUST_CODE = aw.CUST_CODE;