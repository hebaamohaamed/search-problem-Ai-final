% Step 1 ->(if it was the first iteration)
%            then -> we start with our departure city and we get all the
%                    flights from this city and eliminate some of them
%                    according to the required days in the query and
%                    store their names in "Flights" list .
%          (if it wasn't the first iteration)
%            then -> we get all the flight from this city and eliminate
%                    them if the arrival city was visited before or it's
%                    the departure city so we won't go back to it

% Step 2 -> (if the "flights" List wasn't empty)
%             then -> we expand each flight, and calculate heuristic
%             functions, set the current time and date, calculate
%             waiting time so far, append this city "arrival city" to
%             "cities" and list store them in "ExpandedFlights" list
%             with this format
%             [Step,HF,Wait,[flights],[cities],Date[Time,Day]]. (if the
%             "flights" List wasn empty) then -> we don't expand
%             anything.

% Step 3 -> we delete the flight that was expaneded (if it wasn't the
%          first iteration).
%          (if the "Flights" List was empty) "it means there are no
%          going flights from this point it's a dead end"
%             then -> we delete this flight from the
%             "ExpandedFlights" list.
%

% Step 4 -> we choose the shotest path according to the heuristic
%           function in the "NewExpandedFlights" list and return the
%           flight name and arrival city.
%

% Step 5 -> we send this new data to recursion function to start with
%           the new city till we get to the destination city with the
%           shortest expanded flight.


% Project Knowledge
% ------------------------------------------------------------------------

%------------------Cities Lat&Lon------------------

%city(city name,lat,lon)

city("Alexandria",31.2017593,29.9158192).

city("Aswan",24.0908203,32.8994217).

city("Cairo",30.0626297,31.24967).

city("London",51.509865,-0.118092).

city("New York",40.730610,-73.935242).

city("Port Said",31.2565403,32.284111).

city("Paris",48.8534088,2.3487999).

city("Rome",41.902782,12.496366).

city("Shanghai",31.224361,121.469170).

city("Chicago",41.850029,-87.6500473).

city("Miami",25.761681,-80.191788).

city("Milan",45.464664,9.188540).

city("San Francisco",37.773972,-122.431297).

city("Edinburgh",55.9520607,-3.19648).

city("Liverpool",53.4105797,-2.9779401).

city("Lyon",45.7484589,4.8467102).

city("Manchester",53.483959,-2.244644).

city("Tokyo",35.652832,139.839478).

city("Nice",43.70313,7.26608).

city("Venice",45.438759,12.327145).

%--------------------------------------------------

%----------------Flights Timetable-----------------

%timetable(new_york, san_francisco, [12:10 / 5:00 / nw610 / [mon, tue, wed, thu, fri], 5:30 / 10:15 / united440 / [mon , tue, fri] ]).

flight_timetable("Alexandria", "Aswan","11:00","12:15","MS005",["mon", "tue", "wed"]).
flight_timetable("Alexandria", "Aswan","15:15","16:30","MS004",["sat", "fri"]).

flight_timetable("Alexandria", "Cairo","9:15","10:00","MS003",["mon", "tue", "wed"]).
flight_timetable("Alexandria", "Cairo","12:30","13:15","MS001",["sat", "sun"]).
flight_timetable("Alexandria", "Cairo","17:00","17:45","MS002",["sat", "mon", "thu", "fri"]).

flight_timetable("Alexandria", "London","19:30", "0:32","MS006",["sat", "sun", "thu", "fri"]).

flight_timetable("Alexandria", "New York","2:00", "15:14","MS007",["sun", "tue", "thu"]).


flight_timetable("Aswan","Cairo" ,"10:20","11:40","MS022",["sat", "sun", "mon", "wed"]).

flight_timetable("Aswan","Port Said","7:05" ,"8:18" ,"MS023",["tue", "thu", "fri"]).


flight_timetable("Cairo","Alexandria","13:00", "13:45", "MS008",["sun", "mon", "wed"]).
flight_timetable("Cairo","Alexandria","20:15", "21:00" ,"MS009",["thu", "fri"]).

flight_timetable("Cairo","Aswan","8:00" ,"9:20" ,"MS010",["sun", "wed"]).
flight_timetable("Cairo","Aswan","17:15", "18:35" ,"MS011",["sat", "tue", "thu"]).

flight_timetable("Cairo","London","10:00", "15:10","MS014",["sun", "mon","tue"]).
flight_timetable("Cairo","London","15:15", "20:25" ,"MS015",["sat", "wed", "thu"]).

flight_timetable("Cairo","New York","3:00", "15:05","MS016",["sat","sun","wed"]).
flight_timetable("Cairo","New York","19:30","7:35","MS017",["mon","tue","fri"]).

flight_timetable("Cairo", "Paris" ,"2:00","6:55","MS018",["wed", "thu", "fri"]).
flight_timetable("Cairo", "Paris" ,"5:00","9:55","MS019",["sat", "mon"]).

flight_timetable("Cairo","Port Said","11:00","11:20","MS013",["mon"]).
flight_timetable("Cairo","Port Said","19:30","19:50","MS012",["sat", "sun", "wed", "thu"]).

flight_timetable("Cairo","Rome","6:00","9:30","MS021",["sat","sun","tue","thu"]).

flight_timetable("Cairo","Shanghai","5:30","19:00","MS020",["sat", "sun", "mon", "wed"]).


flight_timetable("Chicago","London","8:00","18:32","DL050",["sun", "tue", "thu", "fri"]).
flight_timetable("Chicago","London","12:10","22:42","DL051",["sat", "mon","wed"]).

flight_timetable("Chicago","Miami","10:00","14:20","DL046",["sat", "sun", "mon" ,"fri"]).
flight_timetable("Chicago","Miami","17:20","21:40","DL047",["sun", "tue"]).

flight_timetable("Chicago","New York","9:00" ,"11:18","DL044",["sat", "mon", "wed", "fri"]).
flight_timetable("Chicago","New York","15:00","17:18","DL045",["sun", "tue"]).

flight_timetable("Chicago","Paris","5:00","16:55","DL052",["sat", "sun", "tue", "thu"]).

flight_timetable("Chicago","San Francisco","16:00","22:10","DL048",["thu", "fri"]).
flight_timetable("Chicago","San Francisco","20:00","2:10","DL049",["sun", "mon", "tue"]).


flight_timetable("Edinburgh","London","7:00","8:15","BA128",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).
flight_timetable("Edinburgh","London","19:15","20:30","BA129",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).

flight_timetable("Edinburgh","Paris","14:00","15:50","BA130",["sat","mon", "tue", "wed", "fri"]).

flight_timetable("Edinburgh","San Francisco","3:00","15:10","BA131",["sat", "sun", "mon", "thu"]).


flight_timetable("Liverpool","London","4:30","5:30","BA125",["wed", "thu", "fri"]).
flight_timetable("Liverpool","London","10:00","11:00","BA123",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).
flight_timetable("Liverpool","London","16:00","17:00","BA124",["sat", "sun", "mon"]).


flight_timetable("London","Alexandria","6:00","11:20","BA149",["sun", "mon", "wed"]).

flight_timetable("London","Cairo","10:00","14:40","BA143",["sat", "sun", "tue", "fri"]).
flight_timetable("London","Cairo","20:00","0:40","BA144",["tue", "thu"]).

flight_timetable("London","Chicago","4:00","12:50","BA147",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).

flight_timetable("London","Edinburgh","5:00","6:15","BA134",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).
flight_timetable("London","Edinburgh","17:00","8:15","BA135",["sun", "wed", "fri"]).

flight_timetable("London","Liverpool","8:40","9:40","BA132",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).
flight_timetable("London","Liverpool","21:00","22:00","BA133",["sun", "mon", "thu", "fri"]).

flight_timetable("London","Lyon","15:00","16:35","BA150",["tue", "wed", "thu", "fri"]).

flight_timetable("London","Manchester","10:00","11:00","BA136",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).

flight_timetable("London","New York","5:00","13:00","BA138",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).
flight_timetable("London","New York","14:00","22:00","BA145",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).

flight_timetable("London","Paris","6:30","7:40","BA140",["mon", "tue", "thu", "fri"]).
flight_timetable("London","Paris","16:00","17:10","BA139",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).

flight_timetable("London","Rome","17:00","19:20","BA141",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).

flight_timetable("London","San Francisco","15:30","2:30","BA146",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).

flight_timetable("London","Shanghai","4:30","15:30","BA142",["mon", "tue", "fri"]).
flight_timetable("London","Shanghai","11:00","22:00","BA137",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).

flight_timetable("London","Tokyo","14:00","1:40","BA148",["sat", "sun", "wed", "thu"]).


flight_timetable("Lyon","Nice","2:10","3:00","AF122",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).
flight_timetable("Lyon","Nice","3:30","14:20","AF121",["sat", "tue", "wed", "thu", "fri"]).

flight_timetable("Lyon","Paris","9:00","10:05","AF119",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).
flight_timetable("Lyon","Paris","18:00","19:05","AF120",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).


flight_timetable("Manchester","London","11:30","12:30","BA126",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).
flight_timetable("Manchester","London","18:30","19:30","BA127",["sat", "sun", "mon", "tue", "wed"]).


flight_timetable("Miami","Chicago","8:00","12:20","DL056",["mon", "wed", "fri"]).

flight_timetable("Miami","New York","0:00","12:55","DL053",["sun", "mon" ,"tue"]).
flight_timetable("Miami","New York","16:00","18:55","DL054",["wed", "thu", "fri"]).

flight_timetable("Miami","San Francisco","10:00","16:25","DL055",["sat", "sun", "mon", "wed"]).


flight_timetable("Milan","London","14:00","15:50","AZ103",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).

flight_timetable("Milan","Paris","10:00","11:20","AZ101",["sat", "sun", "tue", "wed"]).
flight_timetable("Milan","Paris","16:00","17:20","AZ102",["mon", "fri"]).

flight_timetable("Milan","Rome","1:00","2:05","AZ104",["mon", "thu", "fri"]).
flight_timetable("Milan","Rome","7:00","8:05","AZ099",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).
flight_timetable("Milan","Rome","17:00","18:05","AZ100",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).


flight_timetable("New York","Chicago","7:00","9:18","DL028",["sat", "mon", "tue"]).
flight_timetable("New York","Chicago","13:20","15:38","DL029",["sat", "sun", "thu"]).

flight_timetable("New York","Edinburgh","6:00","15:05","DL038",["sun", "wed", "fri"]).

flight_timetable("New York","London","4:00","10:50","DL037",["sat", "mon", "tue", "thu"]).

flight_timetable("New York","Lyon","13:00","22:12","DL041",["sat", "mon", "tue"]).

flight_timetable("New York","Miami","1:00","3:55","DL036",["tue"]).
flight_timetable("New York","Miami","7:15","10:10","DL035",["wed", "thu", "fri"]).
flight_timetable("New York","Miami","12:00","14:55","DL034",["sat", "sun", "mon"]).

flight_timetable("New York","Paris","11:00","17:50","DL040",["sun", "wed", "thu", "fri"]).

flight_timetable("New York","Rome","10:15","18:30","DL039",["sat", "mon", "tue", "thu"]).

flight_timetable("New York","San Francisco","8:00","14:32","DL030",["sun", "mon"]).
flight_timetable("New York","San Francisco","10:00","16:32","DL031",["wed", "fri"]).
flight_timetable("New York","San Francisco","18:00","0:32","DL032",["thu"]).
flight_timetable("New York","San Francisco","23:30","6:02","DL033",["sat", "tue"]).

flight_timetable("New York","Shanghai","5:00","19:50","DL043",["sat", "mon", "wed", "fri"]).

flight_timetable("New York","Tokyo","0:00","3:45","DL042",["sat", "sun", "tue", "thu"]).


flight_timetable("Nice","Lyon","20:00","20:50","AF118",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).

flight_timetable("Nice","Paris","5:00","6:20","AF117",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).
flight_timetable("Nice","Paris","14:30","15:50","AF116",["sat", "sun", "fri"]).


flight_timetable("Paris","London","9:00","10:05","AF105",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).
flight_timetable("Paris","London","22:00","23:05","AF106",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).

flight_timetable("Paris","Lyon","7:00","8:10","AF114",["mon", "tue", "wed", "thu"]).
flight_timetable("Paris","Lyon","14:00","15:10","AF115",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).

flight_timetable("Paris","New York","12:00","20:30","AF107",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).
flight_timetable("Paris","New York","17:30","2:00","AF108",["sat", "sun", "fri"]).

flight_timetable("Paris","Nice","11:00","12:20","AF112",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).
flight_timetable("Paris","Nice","16:00","17:20","AF113",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).

flight_timetable("Paris","Rome","10:00","12:00","AF110",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).
flight_timetable("Paris","Rome","18:00","20:00","AF109",["sun", "tue", "wed", "fri"]).

flight_timetable("Paris","Shanghai","4:00","15:55","AF111",["sat", "mon"]).


flight_timetable("Port Said","Alexandria","12:00","12:30","MS026",["sun", "mon", "wed"]).
flight_timetable("Port Said","Alexandria","14:45","15:15","MS027",["sat", "tue", "thu"]).

flight_timetable("Port Said","Cairo","11:00","11:20","MS024",["sat", "mon"]).
flight_timetable("Port Said","Cairo","14:10","14:30","MS025",["wed", "fri"]).


flight_timetable("Rome","London","1:00","3:30","AZ091",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).
flight_timetable("Rome","London","11:30","14:00","AZ090",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).

flight_timetable("Rome","Milan","8:00","9:05","AZ094",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).
flight_timetable("Rome","Milan","22:00","23:05","AZ095",["mon", "wed", "thu", "fri"]).

flight_timetable("Rome","New York","4:00","13:48","AZ088",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).
flight_timetable("Rome","New York","17:00","2:48","AZ089",["tue", "wed", "fri"]).

flight_timetable("Rome","Paris","8:00","10:00","AZ086",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).
flight_timetable("Rome","Paris","20:00","22:00","AZ087",["mon", "tue", "thu", "fri"]).

flight_timetable("Rome","Venice","11:00","12:00","AZ092",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).
flight_timetable("Rome","Venice","18:00","19:00","AZ093",["sat", "mon", "wed", "fri"]).


flight_timetable("San Francisco","Chicago","7:00","13:10","DL059",["tue", "wed", "thu"]).
flight_timetable("San Francisco","Chicago","14:00","20:10","DL060",["sat", "sun", "fri"]).

flight_timetable("San Francisco","Miami","11:00","17:25","DL061",["sun", "mon" ,"wed", "thu"]).

flight_timetable("San Francisco","New York","6:00","12:32","DL057",["wed", "thu", "fri"]).
flight_timetable("San Francisco","New York","13:00","19:32","DL058",["sat", "sun", "mon"]).


flight_timetable("Shanghai","Cairo","2:00","16:30","CA070",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).
flight_timetable("Shanghai","Cairo","7:00","21:30","CA068",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).
flight_timetable("Shanghai","Cairo","13:30","4:00","CA069",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).

flight_timetable("Shanghai","Chicago","6:00","19:45","CA080",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).
flight_timetable("Shanghai","Chicago","15:00","4:45","CA081",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).

flight_timetable("Shanghai","London","0:40","13:20","CA071",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).
flight_timetable("Shanghai","London","5:30","18:10","CA072",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).
flight_timetable("Shanghai","London","14:00","2:40","CA073",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).

flight_timetable("Shanghai","New York","1:00","15:50","CA079",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).
flight_timetable("Shanghai","New York","10:00","0:50","CA078",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).

flight_timetable("Shanghai","Paris","2:00","14:25","CA076",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).
flight_timetable("Shanghai","Paris","8:00","20:25","CA077",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).

flight_timetable("Shanghai","Rome","6:00","19:10","CA074",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).
flight_timetable("Shanghai","Rome","17:00","6:10","CA075",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).

flight_timetable("Shanghai","Tokyo","5:00","7:50","CA085",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).
flight_timetable("Shanghai","Tokyo","12:00","14:50","CA082",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).
flight_timetable("Shanghai","Tokyo","16:00","18:50","CA083",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).
flight_timetable("Shanghai","Tokyo","21:00","23:50","CA084",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).


flight_timetable("Tokyo","San Francisco","12:00","21:05","JL066",["sat", "sun", "mon", "wed", "thu"]).
flight_timetable("Tokyo","San Francisco","22:00","7:05","JL067",["sat", "mon", "tue", "thu", "fri"]).

flight_timetable("Tokyo","Shanghai","0:00","2:50","JL063",["sun", "tue", "thu", "fri"]).
flight_timetable("Tokyo","Shanghai","6:10","9:00","JL064",["sun", "mon", "tue", "wed"]).
flight_timetable("Tokyo","Shanghai","9:00","11:50","JL065",["sat", "thu", "fri"]).
flight_timetable("Tokyo","Shanghai","20:00","22:50","JL062",["sat", "sun", "mon", "wed"]).


flight_timetable("Venice","Rome","5:00","6:00","AZ096",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).
flight_timetable("Venice","Rome","14:00","15:00","AZ097",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).
flight_timetable("Venice","Rome","19:40","20:40","AZ098",["sat", "sun", "mon", "tue", "wed", "thu", "fri"]).


%--------------------------------------------------

% ------------------------------------------------------------------------


% Taking the query entered by the user
% ------------------------------------------------------------------------
travel(Depart,Dest ,Days):- %takes the Query
    not(Depart = Dest),                %make sure it's not the same city
    not(Days = []),                    %make sure the days are not empty
    (search(Depart,Dest,Depart,Days,[],"",Plan)->        %search with A* algo
                                        printt(Plan);    %print the result
     write("There Are No Available Plan For You")).      %incase it fails

% ------------------------------------------------------------------------


% Applying A* Algorithm
% ------------------------------------------------------------------------

 search(_,Dest,Dest,_,_,Plan,Plan). %base case when we reach the destination

 search(Depart,Dest,City,Days,ExpandedFlights,CurrentExpandedFlight,Plan):-


    %if it's the first flight we make sure the departure day is within the required days in the query
    (CurrentExpandedFlight = "" ->

         get_all_flights(City,Days,Depart,CurrentExpandedFlight,Flights);%getting all the available flights(expantion)

    get_all_flights(City,"",Depart,CurrentExpandedFlight,Flights)),


    (not(Flights =[]) -> % it means that this city has available flights

           %we calculate the heuristic function and add them to the expnanded list
           update_expanded_flights(ExpandedFlights,Flights,Days,CurrentExpandedFlight,Dest,NewExpandedFlights),

           %delete the flight that was expanded
           delete(NewExpandedFlights,CurrentExpandedFlight,NewExpandedFlights2),

           %choose the shortest path in the expanded flights list
           choose_shortest_path(NewExpandedFlights2,ShortestExpanded,NewCity);



    %in case there's no flights available from this city we will delete it and choose another flight

    %delete the flight that was expanded beacuse it's a dead end
    delete(ExpandedFlights,CurrentExpandedFlight,NewExpandedFlights2),

    %choose new shortest path in the old expanded flights list
    choose_shortest_path(NewExpandedFlights2,ShortestExpanded,NewCity)),


    search(Depart,Dest,NewCity,Days,NewExpandedFlights2,ShortestExpanded,Plan).
% ------------------------------------------------------------------------


% Send the results back to the user
% ------------------------------------------------------------------------

%print each flight
print_step(Flight,Step):-

% flight format -> [departure city ,destination city ,departure time ,arrival time,[flights days]]

    nth1(1,Flight,Dep),        %get departure city
    nth1(2,Flight,Des),        %get destination city
    nth1(3,Flight,DepTime),    %get departure time
    nth1(4,Flight,ArvTime),    %get arrival time
    nth1(5,Flight,FlightName), %get flight name

    write("Step "), write(Step ), write(": "),
    write("Use Flight "),write(FlightName),
    write(" from "),write(Dep),
    write(" to "),write(Des),
    write(". Departure time "), write(DepTime),
    write(" and arrival time "),write(ArvTime),nl.


%print list of flights
print_flights([],Step,Step). %base case

print_flights([H|T],Step,Steps):-
    get_flight_by_name(H,Flight), %get each timetable with the name of thw flight
    NewStep is Step + 1,          %increment your steps
    print_step(Flight,NewStep),      %print this timetable
    print_flights(T,NewStep,Steps).



%print my plan
printt(Plan):-

    % plan format -> [[Step,HF,Wait,[flights],[cities]]]

    nth1(1,Plan,Steps),                  %get number of steps
    nth1(4,Plan,FlightsNames),           %get flights names
    print_flights(FlightsNames,0,Steps). %print the list of names

% ------------------------------------------------------------------------


% The main predicts in the "search" predict
% ------------------------------------------------------------------------


% ==================== get all flights ======================

get_all_flights(City,Days,Depart,CurrentExpandedFlight,NewFlights2):- % getting all the available flights from this city

    % exapneded flight format -> [Step,HF,Wait,[flights],[cities],Date[Time,Day]]

    % find all the flights names from the facts
    findall(P ,flight_timetable(City,_,_,_,P,_),Names),

    % if there's available flights
    % then get all the flights by there names
    % else return the empty list "last line in the predict"
    (not(Names = []) ->
         get_flights_by_name(Names,[],Flights),


    % if the days are empty it means we won't care about the days in the query because it's not the first flight
    % then don't change them
    % else eliminate the any flight if it doesn't fly in these days
    (Days = "" ->
         NewFlights = Flights;
    elimination_by_days(Flights,Days,[],NewFlights)),


    % if it's not empty it means it's not the first flight
    % then you have to eliminate any flight if its arrival city was visited before or was the departure city
    % else it's the first flight so you just have to eliminate any flight if its arrival city was the departure city
    (not(CurrentExpandedFlight ="") ->
           nth1(5,CurrentExpandedFlight,Cities),
           elimination_by_cities(NewFlights,Cities,Depart,[],NewFlights2);
    elimination_by_cities(NewFlights,[],Depart,[],NewFlights2));
    NewFlights2 = Names ).


elimination_by_days([],_,Flights,Flights).
elimination_by_days([H|T],Days,NewFlights,Output):-

    % get all the flight days
    % loop on the required days to get the first similar day
    % if there are no similar days " Day ="" "
    % then move on to the flight
    % else append it to your new list an move on to the next one

    nth1(6,H,FlightDays),
    loop_on_days(Days,FlightDays,"",Day),
    (Day = "" ->
          elimination_by_days(T,Days,NewFlights,Output);
    append(NewFlights,[H],NewFlights1),
    elimination_by_days(T,Days,NewFlights1,Output)).


elimination_by_cities([],_,_,Flights,Flights).
elimination_by_cities([H|T],Cities,Depart,Flights,Output):-

    % get the arrival city in this flight.
    % if the Cities was empty it means that we want to eliminate if the city equals the departure city only
    % so if it equals the departure city we will skip it, if it's not we will append it to the new list
    % else we want to eliminate if the city equals the departure city and if the city was visited before
    % so if it was visited before we skip it, if it's not we check if it's the departure city
    % if it's the departure city we skip it, if it's not we will append it to the new list

    nth1(2,H,City),

    (Cities = [] ->
        (Depart = City ->
                      NewFlights = Flights;
                      append(Flights,[H],NewFlights)) ;
    (member(City,Cities) ->
                      NewFlights = Flights ;
                       %write(Depart),nl,
                     (Depart = City ->

                               NewFlights = Flights;
                     append(Flights,[H],NewFlights)))),

    elimination_by_cities(T,Cities,Depart,NewFlights,Output).


% return the first similar day
loop_on_days([],_,Day,Day).
loop_on_days([H|T],List,Day,Out):-
    (member(H,List)-> Out = H );
    (\+member(H,List) -> loop_on_days(T,List,Day,Out)).

% ==========================================================



% ============= update exapanded flights ===================

update_expanded_flights(NewExpandedFlights,[],_,_,_,NewExpandedFlights).
update_expanded_flights(ExpandedFlights,[H|T],Days,CurrentExpandedFlight,Dest,NewExpandedFlights):-

    % expanded flight format -> [Step,HF,Wait,[flights],[cities],Date"[Time,Day]"]

     % if the CurrentExpandedFlight is empty then this is the first time to update in the expanded flights
     % then the expanded flights list is empty, so we get the flight days, and get the intersection between it and the required days => available days
     % we send the flight with the initial current date, avaialble days, intinal watiting so far and destination city to calculate the heuristic  and      % waiting time
     % the we add new expanded flight to our empty list

    (CurrentExpandedFlight = "" ->
      nth1(6,H,FlightDays),
      intersection(FlightDays,Days , AvailDays),
      heuristic(H,["00:00","sat"],AvailDays,0.0,Dest,NewWaiting,HF,NewCurrentDay),



      nth1(4,H,NewCurrentTime),
      nth1(5,H,FlightName),
      nth1(2,H,City),

      append(ExpandedFlights,[[1,HF,NewWaiting,[FlightName],[City],[NewCurrentTime,NewCurrentDay]]],NewExpandedFlights1);

    % else "the CurrentExpandedFlight is empty" then
    % we get our data from the current expanded flights and append our flight data to it and make a new expanded flight

    % appending flights arrival city to the visited cities
    nth1(5,CurrentExpandedFlight,Cities),
    nth1(2,H,City),
    append(Cities,[City],NewCities),

    % appending flights name to the flight names
    nth1(4,CurrentExpandedFlight,Flights),
    nth1(5,H,FlightName),
    append(Flights,[FlightName],NewFlights),

    % incrementing the step
    nth1(1,CurrentExpandedFlight,Step),
    NewStep is Step + 1,

    % get from the current expaneded flight waiting so far and current date
    nth1(3,CurrentExpandedFlight,WaitingSoFar),
    nth1(6,CurrentExpandedFlight,CurrentDate),

    % get from the flight departure days and arrival time to be our new current time
    nth1(6,H,FlightDays),
    nth1(4,H,NewCurrentTime),

    % calculate heuristic function and waiting time
    heuristic(H,CurrentDate,FlightDays,WaitingSoFar,Dest,NewWaiting,HF,NewCurrentDay),

    % append our new expanded flight with the updated data
    append(ExpandedFlights,[[NewStep,HF,NewWaiting,NewFlights,NewCities,[NewCurrentTime,NewCurrentDay]]],NewExpandedFlights1)),

    update_expanded_flights(NewExpandedFlights1,T,Days,CurrentExpandedFlight,Dest,NewExpandedFlights).


%<<<<<< heuristic function >>>>>>>

heuristic(Flight,CurrentDate,AvailDays,WaitingSoFar,Dest,NewWaiting,HF,NewCurrentDay):-

     % we calculate waiting time by getting the time between our current time and day and the time and day of departure plus waiting time so far
     % we get departure time from the flight and current time and day from the expanded flight and send them to the predict
     nth1(3,Flight,DTime),
     nth1(4,Flight,ArTime),
     nth1(1,CurrentDate,CurrentTime),
     nth1(2,CurrentDate,CurrentDay),
     calc_waitingTime(CurrentTime,CurrentDay,DTime,ArTime,AvailDays,WaitingSoFar,NewWaiting,NewCurrentDay),

     % get the arrival city from the flight timetable
     % then get the distance between it and the destination city
     nth1(2,Flight,City),
     get_distance(City,Dest,Distance),

     % we add waiting time and distance and round them cause it's too long result
      round(NewWaiting + Distance,HF,4).


get_distance(City1,City2,Distance):-


    % we get lon and lat from the cities facts
    % then we do this equation " Distance = sqrt(((X2-X1)^2)+((Y2-Y1)^2)) "

    get_lon_lat(City1,Lat1,Lon1),
    get_lon_lat(City2,Lat2,Lon2),
    X1 is Lat2 - Lat1,
    X2 is Lon2 - Lon1,
    X12 is X1^2,
    X22 is X2^2,
    D is X12 + X22,
    Distance is sqrt(D).



calc_waitingTime(CurrentTime,CurrentDay,DTime,ArTime,AvailDays,WaitingSoFar,NewWaiting,NewCurrentDay3):-

   % CurrentTime is string so frist we split it to hours and minutes and put them in "CurrentTimeL" list
   % then we take each element in the list to "Hc" for hours in string and "Mc" for mintues in string
   % we convert these string to numbers "Hc1" and "Mc1"
   split_string(CurrentTime, ":", "", CurrentTimeSL),
   nth1(1,CurrentTimeSL,Hc),
   nth1(2,CurrentTimeSL,Mc),
   atom_number(Hc,Hc1),
   atom_number(Mc,Mc2),

   % flight departure time
   % DTime is string so frist we split it to hours and minutes and put them in "DTimeL" list
   % then we take each element in the list to "H1" for hours in string and "M1" for mintues in string
   % we convert these string to numbers "HN1" and "MN1"
   split_string(DTime, ":", "", DTimeL),
   nth1(1,DTimeL,H1),
   nth1(2,DTimeL,M1),
   atom_number(H1,HN1),
   atom_number(M1,MN1),


   % flight arrival time
   % ARTime is string so frist we split it to hours and minutes and put them in "ArTimeL" list
   % then we take each element in the list to "HA1" for hours in string and "MA1" for mintues in string
   % we convert these string to numbers "HAN1" and "MAN1"
   split_string(ArTime, ":", "", ArTimeL),
   nth1(1,ArTimeL,HA1),
   nth1(2,ArTimeL,MA1),
   atom_number(HA1,HAN1),
   atom_number(MA1,MAN1),


   % here we get the first available day from current day and available days for this flight
   % and get the diff between the current day and the new day to fly
   % if Diff = 0 this means it's the same day as current day
   % if Diff = 2 for example, the departure day is after 2 days from current day
   choose_earlier_day(CurrentDay,AvailDays,AvailDays,[Hc1,Mc2],[HN1,MN1],0,Diff,NewCurrentDay),


   % we substract hours and minutes
   Hours is  HN1 - Hc1 ,
   Minutes is MN1 - Mc2,

   % WaitingSoFar is a decimal number
   % first we convert it to string so we can split it
   % then we split to a list and get hours "Hw" in string and minutes "Mw" in string
   % convert them to numbers again
   number_string(WaitingSoFar,WaitingSoFarS),
   split_string(WaitingSoFarS, ".", "", WaitingSoFarSL),
   nth1(1,WaitingSoFarSL,Hw),
   nth1(2,WaitingSoFarSL,Mw),
   atom_number(Hw,Hw0),
   atom_number(Mw,Mw0),

   % if minutes is - ve then we add 60 minutes and substract one hour
   % else don't the minutes and the hours
  (Minutes < 0 -> NewM is Minutes + 60   ,NewH is Hours - 1  ;NewM is Minutes  ,NewH is Hours ),

   % if hours is -ve then we have to add 24 hours "which means it's a new day", so if Diff = 0 it's wrong so we have to set our day to the next day
   % if Diff > 0 then we have to decrement Diff to take the day we have added it
   % else if hours isn't -ve we don't change anything
  (NewH < 0 ->
       NewH2 is NewH + 24 ,(not(Diff = 0) ->
                                  NewDiff is Diff -1,
                                  NewCurrentDay2 = NewCurrentDay;
                           NewDiff is Diff ,
                           increment_day(NewCurrentDay,NewCurrentDay2));
  NewDiff is Diff, NewH2 is NewH,NewCurrentDay2 = NewCurrentDay ),

  (X is HAN1 - HN1, X < 1 ->
                         increment_day(NewCurrentDay2,NewCurrentDay3);
  (Y is MAN1 - MN1, Y <1 ->
                         increment_day(NewCurrentDay2,NewCurrentDay3);
    NewCurrentDay3 = NewCurrentDay2)),

  % add waiting so far hours to our hours
  % add waiting so far minutes to our minutes
  Hw1 is NewH2 + Hw0,
  Mw1 is NewM + Mw0,

  % when we added the waiting minutes if the minutes is greater than 58 then it's a full hour "cause we might add an extra minute at the end"
  % so we substract those this 60 minutes and add one hour
  % else don't change anything
  (Mw1 > 58 ->
        Mw2 is Mw1 - 60 ,Hw2 is Hw1 + 1  ;
   Mw2 is Mw1  ,Hw2 is Hw1),

  % add to hours the diff days
   Hw3 is Hw2 + (NewDiff*24) ,

  % we convert minutes to be after the decimal point so we add it to hours
  % if it was 40 minutes, the program will write it "00.4" which is wrong!!
  % so if this minutes mod 10 is 0, then we add just one minute to make it "00.41" it's closer than "00.4"
  (X is Mw2 + 1 , Y is mod(X,10),Y = 0 ->
                          round((Mw2/100),Mw4,2) ;
  round((Mw2/100)+0.01,Mw4,2)),

  % we add minutes to hours, round it and return new waiting time
  round(Hw3 + Mw4,NewWaiting,2).



choose_earlier_day(Day,_,[1],_,_,D,D,Day).  % this parameter "[1]" means we got our answer so return it

choose_earlier_day(CurrentDay,[Day|_],[],_,_,_,Diff,Day):- % this one means we couldn't find the result in the main algorithm so we will try this one

    % when we get here we search for something different...
    % main algorthim searched for a day next to the current one and didn't find it
    % so it means it's before the current day in the the prepared days list
    % so here we will return the smallest day in the flight days

    % we prepare a list with all the days
    % get current day index
    % and first flight day "smallest" index
    % get the diff between them by adding the number of days after the current day in the list and the days before the flight day in the list

    List = ["sat","sun","mon","tue","wed","thu","fri"],
    nth1(I,List,CurrentDay),
    nth1(I2,List,Day),
    Diff0 is 7 - I,
    Diff is Diff0 + I2.

choose_earlier_day(CurrentDay,Avail,[H|T],[Ch,Cm],[Dh,Dm],_,Diff,Day):- % main algorithm

    % this predict was used in calc_waitingTime predict to get the diff detween current day and the closest day to fly

    % we prepare a list with all the days
    % get current day index
    % and flight day index
    % if the current day index is greater than flight day index then flight day is before the current day so we try the next fligh day
    % else we have to check some stuff before we decide this day is our result
    % if diff = 0 it means this is the same day as the current day so we have to consider current time and departure time before we decide
    % if the diffrence between departure and current is -ve "the departure time has passed, we can't take this flight"
    % then we try the next day if this day is member of the flight days, if not we move on and try the next day in the flight days list
    % if it's a member of this list then it's it's our result
    % if the hours difference = 0 it means this depends on minutes so we increment the day and etc...
    % so we try this whole thing again if the minutes difference is -ve
    % if it's not -ve it means we can take this flight so it's our answer


     List = ["sat","sun","mon","tue","wed","thu","fri"],
     nth1(I,List,CurrentDay),
     nth1(I2,List,H),
     (I > I2 ->  choose_earlier_day(CurrentDay,Avail,T,[Ch,Cm],[Dh,Dm],0,Diff,Day);
     Diff0 is I2 -I,
     X is Dh - Ch,
     (Diff0 = 0 , X < 1 ->
                                increment_day(CurrentDay,Incremented),
                                (member(Incremented,Avail)->
                                                      choose_earlier_day(H,Avail,[1],_,_,Diff0,Diff,Day);
                                 choose_earlier_day(CurrentDay,Avail,T,[Ch,Cm],[Dh,Dm],0,Diff,Day));
     (Diff0 = 0, X = 0 ,Y is Dm - Cm , Y < 1 ->
                                increment_day(CurrentDay,Incremented),
                                (member(Incremented,Avail)->
                                                      choose_earlier_day(H,Avail,[1],_,_,Diff0,Diff,Day);
                                 choose_earlier_day(CurrentDay,Avail,T,[Ch,Cm],[Dh,Dm],0,Diff,Day));
     choose_earlier_day(H,Avail,[1],_,_,Diff0,Diff,Day)))).

increment_day(CurrentDay,NewDay):-

    % this predict was used in calc_waitingTime predict to increment current day to the next day

    % we prepare a list with all the days
    % get current day index
    % if this index is 7 then it's "fri" so the next day must be "sat"
    % else we increment the index and get this element from the list

    List = ["sat","sun","mon","tue","wed","thu","fri"],
    nth1(I,List,CurrentDay),
    (I = 7 -> nth1(1,List,NewDay);
    I2 is I + 1,
    nth1(I2,List,NewDay)).


% ==========================================================



% =============== choose shortest path =====================


choose_shortest_path(ExpandedFlights,ShortestExpanded,NewCity):-

    % "ExpandedFlights" format -> [Step,HF,Wait,[flights],[cities],Date[Time,Day]]

    % we get the shortest path from "HF" in "ExpandedFlights" list
    % so first we get a list with all the "HF" in this list
    % then we get the minimum HF
    % the we get it's index in the "HFList"
    % we get the expanded flight with the same index from "ExpandedFlights"

    % to get the new chosen city we get "Cities" list from the "ShortestExpanded"
    % then we get the last city in it

   list_of_heuristic(ExpandedFlights,[],HFList),
   minimo(HFList,Mini),
   nth1(I,HFList,Mini),
   nth1(I,ExpandedFlights,ShortestExpanded),
   nth1(5,ShortestExpanded,Cities),
   last_element(Cities,NewCity).



list_of_heuristic([],List,List).
list_of_heuristic([H|T],List,NewList):-

    % "ExpandedFlights" format -> [Step,HF,Wait,[flights],[cities],Date[Time,Day]]

    % we get the HF element
    % add it to your list_of_heuristic list
    % try the next expanded flight and return the list

    nth1(2,H,Element),
    append(List,[Element],New),
    list_of_heuristic(T,New,NewList).


% ====================================================


% ------------------------------------------------------------------------




% Some helping predicts were used many times
% ------------------------------------------------------------------------

get_lon_lat(City,Lat,Lon):-
    % matching the city with "city" fact and get lat and lon
    city(City,Lat,Lon).

get_flight_by_name(Name,Flight):-

    % matching the flight name with "flight_timetable" fact and get all data

    flight_timetable(City1,City2,DepTime,ArTime,Name,Days),
    Flight = [City1,City2,DepTime,ArTime,Name,Days].

get_flights_by_name([],List,List).
get_flights_by_name([H|T],List,Flights):-

    %loop on each flight name and get the whole flight timetable
    % add it to your list and return it

    get_flight_by_name(H,Flight),
    append(List,[Flight],NewList),
    get_flights_by_name(T,NewList,Flights).


% get minimum element in a list
minimo([X], X) :- !.
minimo([X,Y|Tail], N):-
    ( X > Y ->
        minimo([Y|Tail], N)
    ;
        minimo([X|Tail], N)
    ).

% get the last element in a list
last_element([X],X).
last_element([_|T],City):-
    last_element(T,City).

% round decimal numbers
round(X,Y,D) :-
    Z is X * 10^D,
    round(Z, ZA),
    Y is ZA / 10^D.

% ------------------------------------------------------------------------
