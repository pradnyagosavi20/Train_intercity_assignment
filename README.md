TRAIN INTERCITY ASSIGNMENT

create statment :

1. create table train(train_id varchar(10), train_name varchar(20), primary key(train_id));
2. create table staff(staff_id varchar(10), staff_name varchar(20), contact_no varchar(10), city_of_residence varchar(30),
3. primary key(staff_id));
4. create table route(route_id varchar(10), origin varchar(20), destination varchar(10), distance varchar(30), time_taken
5. varchar(30), operating_days varchar(50), primary key(route_id));
6. create table station(station_id varchar(10), station_name varchar(20), primary key(station_id));
7. create table schedule(train_id varchar(10), route_id varchar(20), date date, departure_time time, arrival_time time,
8. primary key(train_id, route_id, station_id));
9. alter table schedule add foreign key(train_id) references train(train_id);
10. alter table schedule add foreign key(route_id) references route(route_id);
11. create table maintainance(maint_id varchar(15), maintainance_date date, last_maint_date date, coach_id varchar(20), primary
12. key(maint_id));

9.create table coach(coach_id varchar(10), standby_coach varchar(10), mileage varchar(20), primary key(coach_id));

10.alter table maintainance add foreign key(coach_id) references coach(coach_id);

11.create table has(coach_id varchar(10), train_id varchar(15), date date);

12.alter table has add foreign key(coach_id) references coach(coach_id);

13.alter table has add foreign key(train_id) references train(train_id);

14.create table staff_schedule(staff_id varchar(10), route_id varchar(20), train_id varchar(10), remark varchar(20), date
date, time time);

15.alter table staff_schedule add foreign key(train_id) references train(train_id);

16.alter table staff_schedule add foreign key(route_id) references route(route_id);

17.alter table staff_schedule add foreign key(staff_id) references staff(staff_id);

18.create table accommodation(room_id varchar(20), staff_id varchar(20), date date, primary key(room_id));

19.alter table accommodation add foreign key(staff_id) references staff(staff_id);

20.create table travel_agent(agent_id varchar(20), agent_name varchar(30), contact_no varchar(10), commission_rate
varchar(20), primary key(agent_id));

21.create table seat(seat_id varchar(40), seat_status varchar(20), primary key(seat_id));

22.create table passenger(pass_id varchar(20), pass_name varchar(30), contact_no varchar(10), age int, discount_eligibility
varchar(20), primary key(pass_id));

23.create table reaches_to(train_id varchar(20), station_id varchar(20), date date, departure_time time, expected_arr_time 
time, actual_arr_time time);

24.alter table reaches_to add foreign key(train_id) references train(train_id);

25.alter table reaches_to add foreign key(station_id) references station(station_id);

26.create table ticket(ticket_id varchar(20), pass_id varchar(20), pass_name varchar(30), agent_id varchar(20), seat_id 
varchar(20), seat_status varchar(30), route_id varchar(20), age int, date date, price int, discount varchar(20), primary 
key(ticket_id));

27.alter table ticket add foreign key(pass_id) references passenger(pass_id);

28.alter table ticket add foreign key(agent_id) references travel_agent(agent_id);

29. alter table ticket add foreign key(seat_id) references seat(seat_id);

30.alter table ticket add foreign key(route_id) references route(route_id); 

Load Statment :

1.LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/accommodation.csv" INTO TABLE accommodation FIELDS 
TERMINATED BY ',' LINES TERMINATED BY '\r\n' IGNORE 1 ROWS;
2.LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/coach-1.csv" INTO TABLE coach FIELDS TERMINATED BY ',' LINES 
TERMINATED BY '\r\n' IGNORE 1 ROWS;
3.LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/passenger.csv" INTO TABLE passenger FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n' IGNORE 1 ROWS;
4.LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/travel_agent.csv" INTO TABLE travel_agent FIELDS TERMINATED 
BY ',' LINES TERMINATED BY '\r\n' IGNORE 1 ROWS;
5.LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/train-1" INTO TABLE train FIELDS TERMINATED BY ',' LINES 
TERMINATED BY '\r\n' IGNORE 1 ROWS;
6.LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/station.csv" INTO TABLE station FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n' IGNORE 1 ROWS;
7.LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Staff-1.csv" INTO TABLE staff FIELDS TERMINATED BY ',' LINES 
TERMINATED BY '\r\n' IGNORE 1 ROWS;
8.LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/route.csv" INTO TABLE  route FIELDS TERMINATED BY ',' LINES 
TERMINATED BY '\r\n' IGNORE 1 ROWS;
9.LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Seat.csv" INTO TABLE seat FIELDS TERMINATED BY ',' LINES 
TERMINATED BY '\r\n' IGNORE 1 ROWS;
10.LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/has.csv" INTO TABLE has FIELDS TERMINATED BY ',' LINES 
TERMINATED BY '\r\n' IGNORE 1 ROWS;
11.LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/reaches2.csv" INTO TABLE reaches_to FIELDS TERMINATED BY 
',' LINES TERMINATED BY '\r\n' IGNORE 1 ROWS;
12.LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/schedule-1.csv" INTO TABLE schedule FIELDS TERMINATED BY 
',' LINES TERMINATED BY '\r\n' IGNORE 1 ROWS;
13.LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/maintainance-1.csv" INTO TABLE maintainance FIELDS 
TERMINATED BY ',' LINES TERMINATED BY '\r\n' IGNORE 1 ROWS;
14.LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/staff_schedule-1.csv" INTO TABLE staff_schedule FIELDS 
TERMINATED BY ',' LINES TERMINATED BY '\r\n' IGNORE 1 ROWS;
15.LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/TicketMain.csv" INTO TABLE ticket FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n' IGNORE 1 ROWS;

 ------------------------------------------------------------------------------------------------------------------------------
For the output of the part 2  we have submitted final_assign.txt file
PART 2 : 

SET A :

Name : Gosavi Pradnya Mahesh 
Roll No. : 23112011

1.Show all trains information travelling between Goa Mumbai and Ajmer-Lonavala where at least half the coaches are due for 
maintenance on or before 30 November this year.
Query :
	select t.* from train t join has h on h.train_id=t.train_id join coach c on c.coach_id=h.coach_id join maintainance m 
 on m.coach_id=c.coach_id join schedule s on s.train_id=t.train_id join route r on r.route_id=s.route_id
    -> where (r.origin="Goa" and r.destination="Mumbai" or r.origin="Ajmer" and r.destination="Lonavala") group by h.train_id 
    having sum(case when m.maintainance_date<="2023-11-30" then 1 else 0 end)>=count(*)/2;


2.List all the routes in descending order of seats sold, including route information and distribution of seats sold (Children, 
Adult, Senior Citizen) in the month of October this year.
Query : 
	select r.*, count(case when t.age < 12 then 1 end) as children_tickets, count(case when t.age >=12 and t.age<65 then 1 
 end) as aldult_tickets, count(case when t.age >=65 then 1 end) as senior_tickets, count(ticket_id) as total_seats_sold from 
 route r join ticket t on r.route_id = t.route_id where month(t.date)=10 and year(t.date)=2023 group by r.route_id, r.origin, 
 r.destination, r.distance, r.time_taken, r.operating_days order by total_seats_sold desc;
Output :

3.List all agents’ information with more than 10 confirmed bookings in the month of September this year.
Query :
	select t.*, count(t1.ticket_id)as total_seat_booking from travel_agent t join ticket t1 on t.agent_id = t1.agent_id 
 where t1.seat_status="Confirmed" and month(t1.date)=9 and year(t1.date)=2023 group by t.agent_id, t.agent_name, t.contact_no, 
 t.commission_rate having total_seat_booking > 10;

4.Display the details of the route most travelled by Senior Citizens
Query : 
	select r.*, count(t.ticket_id) as senior_booking from route r join ticket t on t.route_id = r.route_id where t.age>=65 
 group by route_id order by senior_booking desc limit 1;

5.Display the details of the route where a train was always on time.
Query :
	select r.* from route r join schedule s on s.route_id=r.route_id join train t on s.train_id=t.train_id join reaches_to 
 rt on rt.train_id=t.train_id where s.arrival_time=rt.actual_arr_time;

-------------------------------------------------------------------------------------------------------------------------------
SET B :
NAME:- Snehal Jitendra Patil
Roll No.:-23112027

1)Show schedule of all trips including main driver information for 10 th October this year.

mysql> select s1.train_id, s1.route_id,s1.departure_time ,s1.arrival_time,s1.date,s2.remark,s3.staff_id,
    -> s3.staff_name,s3.contact_no,s3.city_of_residence from schedule s1 join staff_schedule s2 on s1.train_id=s2.train_id
    -> join staff s3 on s2.staff_id=s3.staff_id where s1.date='2023-10-10' and s2.remark='Main Driver';

2) List all coaches with mileage between 4000 and 4999 km covered for September this
year; include information on the coach, its last service date and total number of
scheduled trips.

    SELECT c.coach_id, c.standby_coach, c.mileage, m.last_maint_date, COUNT(s.train_id) AS total_trips
    -> FROM coach c
    -> JOIN maintainance m ON c.coach_id = m.coach_id
    -> JOIN has h ON c.coach_id = h.coach_id
    -> LEFT JOIN schedule s ON h.train_id = s.train_id
    -> WHERE c.mileage BETWEEN 4000 AND 4999
    -> AND EXTRACT(MONTH FROM h.date) = 09
    -> AND EXTRACT(YEAR FROM h.date) = EXTRACT(YEAR FROM CURRENT_DATE)
    -> GROUP BY c.coach_id, c.standby_coach, c.mileage, m.last_maint_date;


3)List all agents, in descending order of percentage of confirmed booking each trip in the
month of October this year. Include agent and route information in your result.

   mysql> select a.agent_id, a.agent_name, r.route_id, count(t.ticket_id)as total_booking, sum(case when 
   t.seat_status="Confirmed" then 1 else 0 end)as confirmes_booking, (sum(case when t.seat_status="Confirmed" then 1 else 0 
   end)/ count(t.ticket_id)*100)as confirmed_percent from travel_agent a join ticket t on a.agent_id=t.agent_id join route r 
   on r.route_id=t.route_id where month(t.date)=10 and year(t.date)=2023 group by a.agent_id, r.route_id, t.ticket_id order by 
   confirmed_percent desc;

4) Display the details of the routes where majority of bookings are not made by agents.

           mysql> SELECT
    ->     t.route_id,
    ->     COUNT(CASE WHEN t.agent_id IS NULL THEN 1 ELSE NULL END) AS bookings_without_agent,
    ->     COUNT(*) AS total_bookings,
    ->     r.origin,
    ->     r.destination
    -> FROM
    ->     ticket t
    -> JOIN
    ->     route r ON t.route_id = r.route_id
    -> GROUP BY
    ->     t.route_id, r.origin, r.destination
    -> HAVING
    ->     COUNT(CASE WHEN t.agent_id IS NULL THEN 1 ELSE NULL END) > COUNT(t.agent_id) / 2;


5)Display the details of the agents who have made maximum commission in the Month
of September.


SELECT a.agent_id, sum(t.price) as b
    -> FROM travel_agent a
    -> JOIN ticket t ON t.agent_id = a.agent_id
    -> WHERE MONTH(t.date) = 9
    -> GROUP BY agent_id
    -> ORDER BY b desc
    -> LIMIT 1;
-------------------------------------------------------------------------------------------------------------------------------

SET C : 
Name : Atul Avinash Wanve
ROLL NO.: 23112043

1)List all trains not scheduled on 10th October this year.

select * from train where train_id not in (select train_id from schedule where (date)='2023-10-10');

2)List all fleets from Dharwad to Bengaluru, in ascending order of their monthly seats sold for the month of October this year.

select t.train_id,t.train_name, coalesce(sum(case when month(tkt.date) = 10 then 1 else 0 end), 0) as seats_sold_in_october 
from train t join schedule sch on t.train_id = sch.train_id join route r on sch.route_id = r.route_id join ticket tkt on 
sch.route_id = tkt.route_id where r.origin = 'dharwad' and r.destination = 'bengaluru' group by t.train_id, t.train_name order 
by seats_sold_in_october;

3)List the details of most popular route of InterCity Express Trains.

select b.* from (select route_id, count(1) as cnt from ticket group by route_id order by cnt desc limit 1) a join route b on 
a.route_id=b.route_id;

4)Display the details of the passengers who are frequent travellers with InterCity Express Trains. [Frequent traveller can be 
defined as the one who has travelled at least three times, irrespective of the route]

select p.* from (select pass_id, count(1) from ticket group by pass_id having count(1)>=3) a join passenger p on 
a.pass_id=p.pass_id;

5)Display the details of trains which arrived late at their destination, more than once in this year; Include the driver and 
co-driver information in the output. 

select distinct 
train_id,a.train_name,a.station_id,a.date,a.departure_time,a.expected_arr_time,a.actual_arr_time,a.driver_name,a.co_driver_name
from (select t.train_id, t.train_name, ri.station_id, ri.date, ri.departure_time, ri.expected_arr_time, ri.actual_arr_time, 
max(d.staff_name) as driver_name, cd.staff_name as co_driver_name from train t join reaches_to ri on t.train_id = ri.train_id 
join staff_schedule s on t.train_id = s.train_id join staff d on s.staff_id = d.staff_id and s.remark = 'main driver' join 
staff_schedule s2 on t.train_id = s2.train_id join staff cd on s2.staff_id = cd.staff_id and s2.remark = 'co-driver' where 
ri.actual_arr_time > ri.expected_arr_time and year(ri.date) = year(curdate()) group by t.train_id, ri.station_id, ri.date, 
ri.departure_time, ri.expected_arr_time, ri.actual_arr_time, co_driver_name having count(ri.train_id) >= 1) a where 
a.driver_name!=a.co_driver_name;

