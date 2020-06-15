# search problem Ai final
 


test cases ->
 
test 1>>

	travel("Cairo", "San Francisco", ["tue", "wed"]).

	result:
	Step1: Use Flight MS017 from Cairo to New York. Departure time 19:30 and arrival time 7:35 
	Step2: Use Flight DL031 from New York to San Francisco. Departure time 10:00 and arrival time 16:32 

test 2>>

	travel("Cairo", "Miami", ["sat", "sun", "mon"]). 

	result:
	Step1: Use Flight MS016 from Cairo to New York. Departure time 3:00 and arrival time 15:05 
	Step2: Use Flight DL034 from New York to Miami. Departure time 12:00 and arrival time 14:55 

test 3>>

	travel("Liverpool", "Nice", ["sat", "sun", "mon"]). 

	result:
	Step1: Use Flight BA123 from Liverpool to London. Departure time 10:00 and arrival time 11:00 
	Step2: Use Flight BA135 from London to Edinburgh. Departure time 17:00 and arrival time 8:15
	Step3: Use Flight BA130 from Edinburgh to Paris. Departure time 14:00 and arrival time 15:50 
	Step4: Use Flight AF113 from Paris to Nice. Departure time 16:00 and arrival time 17:20

test 4>>

	travel("Tokyo", "Chicago", ["mon", "tue", "thu"]). 
	
	result:
	Step1: Use Flight JL066 from Tokyo to San Francisco. Departure time 12:00 and arrival time 21:05 
	Step2: Use Flight DL059 from San Francisco to Chicago. Departure time 7:00 and arrival time 13:10 

test 5>>

	travel("Manchester", "Lyon", ["sat", "sun", "mon"]). 

	result:
	Step1: Use Flight BA126 from Manchester to London. Departure time 11:30 and arrival time 12:30 
	Step2: Use Flight BA139 from London to Paris. Departure time 16:00 and arrival time 17:10 
	Step3: Use Flight AF114 from Paris to Lyon. Departure time 7:00 and arrival time 8:10 

test 6>>

	travel("Port Said", "Cairo", ["tue", "wed"]). 

	result:
	Step1: Use Flight MS025 from Port Said to Cairo. Departure time 14:10 and arrival time 14:30 

test 7>>

	travel("Alexandria", "Venice", ["sat", "sun"]). 

	result:
	Step 1: Use Flight MS001 from Alexandria to Cairo. Departure time 12:30 and arrival time 13:15 
	Step 2: Use Flight MS014 from Cairo to London. Departure time 10:00 and arrival time 15:10 
	Step 3: Use Flight BA141 from London to Rome. Departure time 17:00 and arrival time 19:20 
	Step 4: Use Flight AZ092 from Rome to Venice. Departure time 11:00 and arrival time 12:00 

test 8>>

	travel("Edinburgh", "Milan", ["sat", "sun", "fri"]). 

	result:
	Step 1: Use Flight BA128 from Edinburgh to London. Departure time 7:00 and arrival time 8:15 
	Step 2: Use Flight BA141 from London to Rome. Departure time 17:00 and arrival time 19:20 
	Step 3: Use Flight AZ094 from Rome to Milan. Departure time 8:00 and arrival time 9:05 	

test 9>>

	travel("Rome", "Nice", ["sat", "sun"]). 

	result:
	Step 1: Use Flight AZ086 from Rome to Paris. Departure time 8:00 and arrival time 10:00 
	Step 2: Use Flight AF112 from Paris to Nice. Departure time 11:00 and arrival time 12:20 