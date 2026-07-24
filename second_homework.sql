-- SQL misolchalar  1

select * from magazine;
select * from article;

-- 1.Bitta bo’lsa ham maqola  yozgan magazine larnin toping.

select * from magazine 
join article on article.mid = magazine.mid;

-- 2.Motorcycles  mavzusi xaqida eng kamida bitta maqola yozgan magazine nomini toping.

select * from magazine 
join article on article.mid = magazine.mid
where article.topic = 'Motorcycles';

-- 3.Motorcycles yokiy  cars mavzusida maqola yozgan magazine larni topinglar.

select * from magazine 
join article on article.mid = magazine.mid
where article.topic in ('Motorcycles', 'Cars');

-- SQL Misolcha 2

select * from sailor;
select * from booking;
select * from boat;

-- 1.RED va Green kemalarda yurgan suzuvchilarni  ismi va qodini toping.

select sailor.sname from sailor
join booking on sailor.sid = booking.bid
join boat on boat.bid = booking.bid
where boat.color in ('Red', 'Green');

-- SQL Misolcha 3

-- 1. Uchush masofasi 5,000 km teng va undan uzoqroqqa uchadigan samalotlarga sertificati bor bo’lgan uchuvchilarni kodi va nomini  toping.

select * from aircraft;
select * from certificate;
select * from pilot;

select pilot.pid, pilot.pname from aircraft 
join certificate on aircraft.aid = certificate.aid
join pilot on pilot.pid = certificate.pid
where pilot.salary>=5000; 


