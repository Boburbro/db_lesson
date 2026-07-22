-- SQL misolchalar  1
select * from magazine;

select * from article;

-- 1.E xarfi dan boshlanadigan barcha magazine larning toping.
select * from magazine 
where mname ilike 'e%';

-- 2.Motorcycles  xaqida yozilgan maqolalarni toping.
select * from article
where topic = 'Motorcycles';

-- 3.Motorcycles  xaqida yozilgan maqolalar sonini toping.
select count(*) from article
where topic = 'Motorcycles';

-- 4.Motorcycles  xaqida yozilmagan maqolalarni sonini toping.
select count(*) from article
where not topic = 'Motorcycles';

-- 5.Bitta bo’lsa ham maqola  yozgan magazine larnin toping.
select distinct mid from article; 

------------------------------------------------------------

-- SQL Misolcha 2

select * from sailor;

select * from booking;

select * from boat;

-- 1.Expertlik darajasi HIGH bo’lgan dengizchi laring sonin toping.
select * from sailor
where expertise = 'HIGH';

-- 2.Qizil rangdagi kemalar ni nomini chiqaring.
select bname from boat
where color = 'Red'; 

------------------------------------------------------------

-- SQL Misolcha 3

select * from aircraft;

select * from certificate;

select * from pilot;


-- Uchush uzunligi 5000k dan ko’p bo’lgan samaloylarni toping.

select * from aircraft
where maximumrange >= 5000;
