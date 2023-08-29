# Customer Lifetime Value (CLV) 
CLV is a crucial metric in the realm of business and marketing that quantifies the total value a customer brings to a company over the course of their entire relationship. 
It encompasses all the purchases a customer makes, the revenue they generate, and the potential future value they hold.

Factors influencing CLV include the frequency of purchases, the average transaction value, the duration of the customer relationship, and the associated costs of serving 
that customer. Businesses can use CLV to segment customers based on their value, offering tailored experiences and rewards to high-value customers while also identifying 
strategies to enhance the value of low-value customers.

For the hotel industry, Customer Lifetime Value (CLV) holds significant importance due to its ability to guide strategic decisions and enhance overall business performance. 
Here's how CLV is crucial for the hotel business.

#### Guides Investments 
Helps allocate resources to retain valuable guests and enhance their experiences.

#### Tailors Marketing 
Segments customers for targeted marketing, boosting engagement and bookings.

#### Prevents Churn
Identifies potential churn, enabling proactive measures to retain customers.

#### Boosts Revenue
Cultivates loyalty for repeat bookings and increased on-site spending.

#### Drives Competition
Offers a unique edge with personalized experiences and rewards.

#### Aids Planning 
Supports long-term strategies and growth forecasting.

In the dynamic hospitality landscape, I present a pioneering CLV calculation approach. This method, tailored to the intricacies of hotels, promises to revolutionize how we 
measure guest value and refine strategies. Join me in exploring this cutting-edge avenue to elevate the guest experience and business outcomes.

## Create New Loyalty Program based on CLV
### Business Overview
D Hotel Group is a prominent hospitality firm in Southeast Asia that operates within five interconnected business sectors. These include Hotels & Resorts, Hospitality Education, Foods, Property Development, and Services related to the hospitality industry.

### Current Loyalty Program
D membership tiers are determined based on the number of stays/nights at eligible rates per year.

| Member Tiers | Qualifying stay or nights* |
|--------------|----------------------------|
|Premier	     | Upon sign-up               |
|Executive     | 5 Stays or 10 Nights       |
|Elite	       | 15 Stays or 30 Nights      |

**Membership tiers are determined based on the number of stays/nights at eligible rates per year.*

***To qualify and maintain a consecutive year of a Membership account leveled in the same tier, minimum nights and stays at any Participating Hotels are required based on
Membership tier level within 12 months after sign-up or tier promotion.*

### Current Loyalty Program Pain Points
1.	Loss of opportunity in selling high-tiers hotels due to the current calculation of customer loyalty programs.
2.	Customers with a higher lifespan may be overlooked by the program.

### Introducing the New CLV Approach
•	CLV Scoring Features

| Current            |	New                 |
|--------------------|----------------------|
| Number of stays	   | Number of nights     |
| Number of nights   | Number of nights     |
|                    | Spending             |
|                    | Lifespan (Year)      |

•	Scorecard Metrics

| Metrics	         | Existing	     | New                                              |
|------------------|---------------|--------------------------------------------------|
| Member Tiers     | 3             | 9                                                |
| Retention (Year) | 1	           | 1                                                |
| Factors          |Rooms , Nights |Hotel Tiers (Based on star), Spent, Rooms, Nights |

•	Hotel Tiers Rating

|                    | Silver(3-star)	       | Gold (4-star)	       | Platinum (5-star)      |
|--------------------|-----------------------|-----------------------|------------------------|
| Room Rate (THB)    | 1,500 – 3,500         | 2,500 – 10,000        | 7,000 – 100,000        |
| Scores             | 5                     | 10                    | 20                     |

•	Loyalty Score Assumption (Unit: Year)

  #### LT Score = 0.1(Lifespan)+0.9  

**Lifespan will reset if the customer doesn't have any transactions with D Group within a year*
  
| Lifespan      | Loyalty Score (LT Score)     |
|---------------|------------------------------|
| 2	            | 1.1                          |
| 3	            | 1.2                          |
| 4		          | 1.3                          |


•	Scorecard formula

  #### Scoring = LT Score x Hotel Score x Frequency


•	Customer Profile Score by Segments

| Customer Profile Score |             |              |                |
|------------------------|-------------|--------------|----------------|
| 5-star hotels          |      60     |     350      |      >450      |
| 4-star hotels          |      40     |     250      |      >400      |
| 3-star hotels          |      25     |     150      |      >350      |
| Avg.(room x night)     |    < 25     |   25-225     |      >225      |

•	CLV Calculation

  #### CLV = Avg. Transaction Amount Per Year x Avg. Transaction Per Year x Lifespan (Year)

Example

Customer A's stay information:

1st year: Total amount spent 50,000 THB/ 2 times

2nd year: Total amount spent 55,000 THB/ 2 times

3rd year: Total amount spent 50,000 THB/ 2 times

He visited our hotel for 3 years consecutively.

Avg. transaction amount per year = 25,833 THB

Avg. transaction per year = 2

Lifespan = 3

##### CLV = 155,000 THB

