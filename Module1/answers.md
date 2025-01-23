# Module 1 Homework: Docker & SQL

## Question 1. Understanding docker first run 
The correct pip version is 24.3.1

## Question 2. Understanding Docker networking and docker-compose

To connect pgAdmin to the PostgreSQL database, you need to use the following information:

* Hostname: Since both containers are in the same Docker network, you can use the name of the PostgreSQL service, which is db.
* Port: The port that PostgreSQL is exposing to the host is 5433 (as defined by the ports section of the db service).

Thus, the hostname and port for pgAdmin to connect to PostgreSQL are:

Hostname: db
Port: 5433

## Question 3. Trip Segmentation Count

During the period of October 1st 2019 (inclusive) and November 1st 2019 (exclusive), how many trips, **respectively**, happened:
1. Up to 1 mile
2. In between 1 (exclusive) and 3 miles (inclusive),
3. In between 3 (exclusive) and 7 miles (inclusive),
4. In between 7 (exclusive) and 10 miles (inclusive),
5. Over 10 miles 

Answers:
up_to_1_mile | between_1_and_3_miles | between_3_and_7_miles | between_7_and_10_miles | over_10_miles |
|--------------+-----------------------+-----------------------+------------------------+---------------|
| 104830       | 198995                | 109642                | 27686                  | 35201      

Closest option to the result is:
- 104,838;  199,013;  109,645;  27,688;  35,202


## Question 4. Longest trip for each day

Which was the pick up day with the longest trip distance?
Use the pick up time for your calculations.

Tip: For every day, we only care about one single trip with the longest distance. 

+-------------+--------------+
| pickup_date | max_distance |
|-------------+--------------|
| 2019-10-31  | 515.89       |
+-------------+--------------+

The answer is:

- 2019-10-31

## Question 5. Three biggest pickup zones

Which were the top pickup locations with over 13,000 in
`total_amount` (across all trips) for 2019-10-18?

Consider only `lpep_pickup_datetime` when filtering by date.
 
+---------------------+--------------------+
| zone                | total_amount       |
|---------------------+--------------------|
| East Harlem North   | 18686.680000000026 |
| East Harlem South   | 16797.26000000004  |
| Morningside Heights | 13029.790000000046 |
+---------------------+--------------------+

The answer is:

- East Harlem North, East Harlem South, Morningside Heights


## Question 6. Largest tip

For the passengers picked up in October 2019 in the zone
named "East Harlem North" which was the drop off zone that had
the largest tip?

Note: it's `tip` , not `trip`

We need the name of the zone, not the ID.

+-------------+-------------+
| zone        | largest_tip |
|-------------+-------------|
| JFK Airport | 87.3        |
+-------------+-------------+

The answer is:

- JFK Airport

## Terraform

## Question 7. Terraform Workflow

Which of the following sequences, **respectively**, describes the workflow for: 
1. Downloading the provider plugins and setting up backend,
2. Generating proposed changes and auto-executing the plan
3. Remove all resources managed by terraform`

The answer is:

- terraform init, terraform apply -auto-approve, terraform destroy

