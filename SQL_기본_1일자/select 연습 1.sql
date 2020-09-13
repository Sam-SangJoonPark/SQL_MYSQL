SELECT * FROM world.country;

-- country table에서 100개 뽑자 
select * from world.country ;
select * from country limit 100 ;

-- country table을 이름순으로 출력 
-- 정렬 (오름차순 asc : default, 내림차순 desc) 
select * from country order by name desc limit 100;
select * from country order by name, code desc limit 100;

-- 문제 country에서 code name Region Capital. code로 내림차순 정렬
-- 그리고 50개만 추출하고 , GNP가 1만 이상 

select Code,Name,Region,Capital from country
where GNP >= 10000 order by code desc
limit 5 ; 




















