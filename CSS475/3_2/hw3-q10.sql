-- List the rooms that are currently unoccupied at the Hilton.  
-- 		Example format)
-- (room #, hotel #) 

SELECT R.roomNo as Room_Number, R.H_hotelNo as Hotel_Number 
FROM ROOM R, HOTEL 
WHERE hotelNo = H_hotelNo AND hotelName = 'Hilton' AND roomNo NOT IN 
(SELECT R_roomNo 
FROM BOOKING B, HOTEL H
WHERE dateFrom <= CURRENT_DATE AND dateTo >= CURRENT_DATE AND B.H_hotelNo = H.hotelNo
AND H.hotelName = 'Hilton');
