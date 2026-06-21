# starbucks-global-store-intelligence-dashboard
Interactive Power BI dashboard analyzing 26K Starbucks stores across 74 countries using DAX, SQL, and geographic intelligence to uncover store distribution, ownership patterns, and expansion opportunities.

Project Report-https://gamma.app/docs/Starbucks-Global-Store-Intelligence-epv0izf89lf2xmg

# Starbucks Global Store Intelligence Dashboard

## Project Overview

This project analyzes Starbucks' global store network using Power BI, SQL, and DAX. The objective is to transform raw store location data into actionable business insights regarding global expansion, ownership structure, and geographic distribution.

---

## Business Problem

Starbucks operates thousands of stores worldwide through multiple ownership models. Business stakeholders need visibility into:

* Store distribution across countries
* Market concentration
* Ownership structure
* Geographic expansion opportunities
* City-level store density

This dashboard provides a centralized view of Starbucks' global presence.

---

## Tools & Technologies

* Power BI
* SQL
* DAX
* Power Query
* CSV Dataset

---

## Dataset Information

The dataset contains:

* Store Name
* Country
* City
* Ownership Type
* Latitude
* Longitude
* Address Information

---

## Key KPIs

| KPI                    | Value |
| ---------------------- | ----- |
| Total Stores           | 26K   |
| Total Countries        | 74    |
| Total Cities           | 5K+   |
| Avg Stores per Country | 346   |
| Ownership Types        | 5     |
| Avg Stores per City    | 5     |

---

## DAX Measures

### Total Stores

```DAX
Total Stores = COUNTROWS(Starbucks)
```

### Total Countries

```DAX
Total Countries = DISTINCTCOUNT(Starbucks[Country])
```

### Total Cities

```DAX
Total Cities = DISTINCTCOUNT(Starbucks[City])
```

### Avg Stores per Country

```DAX
Avg Store per Country =
DIVIDE([Total Stores],[Total Countries])
```

### Ownership Types

```DAX
Ownership Types =
DISTINCTCOUNT(Starbucks[Ownership Type])
```

### Avg Stores per City

```DAX
Avg Store per City =
DIVIDE([Total Stores],[Total Cities])
```

---

## Dashboard Pages

### Executive Overview Dashboard

Provides a high-level summary of Starbucks' global presence including:

* Global store count
* Country distribution
* Ownership distribution
* Top cities by store count
* Geographic mapping

### Geographic Intelligence Dashboard

Provides location-based insights:

* Country-wise analysis
* Ownership breakdown
* Geographic clustering
* Detailed drill-down capabilities

---

## Key Insights

### Global Expansion

* Starbucks operates more than 26,000 stores globally.
* The United States remains the largest market.

### International Growth

* China is the second-largest market.
* Strong presence across Asia-Pacific markets.

### Ownership Analysis

* Company-Owned stores represent the largest ownership category.
* Licensed stores contribute significantly to global expansion.

### City Concentration

* Major metropolitan cities show significantly higher store density.
* Store clustering indicates mature and high-demand markets.

---

## Business Recommendations

1. Continue expansion in high-growth Asian markets.
2. Evaluate underpenetrated countries for future growth.
3. Use city-level density analysis for site selection.
4. Monitor saturation in mature markets.
5. Optimize ownership strategy by region.

---

## Author

**Radhika Vishwakarma**

Data Analyst | Power BI | SQL | Data Visualization

---

## Project Report

Detailed project report available inside the repository.
