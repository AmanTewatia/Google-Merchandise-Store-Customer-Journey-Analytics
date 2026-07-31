# Data Dictionary

| Column Name | Business Description | Data Type |
|-------------|----------------------|-----------|
| Path ID | Unique identifier representing a complete customer journey from the first interaction to the final conversion event. | Integer |
| Path Step | Sequential step within a customer's journey, indicating the order of interactions before conversion. | Integer |
| #TP | Total number of touchpoints encountered by the customer before completing the key event or conversion. | Integer |
| Campaign | Marketing campaign responsible for driving customer engagement and traffic to the Google Merchandise Store. | Text |
| Total Revenue | Total revenue generated from the completed customer journey or conversion event. | Decimal |
| Days till Key Event | Number of days taken by the customer to complete the desired business event after the initial interaction. | Integer |
| Touchpoints | Marketing channels or interactions experienced by the customer throughout the journey (e.g., Paid Search, Organic Search, Direct, Email, Social Media). | Text |
| Conversion Rate | Percentage representing the likelihood of a customer completing the desired business action after following the recorded journey. | Decimal (%) |
| Date of Key Event | Date on which the customer completed the final conversion or purchase event. | Date |
