-- Count the number of current bookings at each hotel and display with the hotel name and city. List only the hotels with at least 5 current bookings. 
--  		Example format)
-- (# of bookings, hotel name, city)

SELECT COUNT(*) as Number_of_Bookings, hotelName as Hotel_Name, city as Location
FROM HOTEL, BOOKING
WHERE H_hotelNo = hotelNo AND dateTo >= CURRENT_DATE
GROUP BY city
HAVING COUNT(*) >= 5; 