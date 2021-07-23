use mysql;



CREATE TABLE 고객 (
	고객아이디  VARCHAR(20)	 NOT NULL,
	고객이름    VARCHAR(10)	 NOT NULL,
	나이	    INT,
	등급	    VARCHAR(10)	 NOT NULL,
	직업	    VARCHAR(20),
	적립금	    INT   DEFAULT 0,
	PRIMARY KEY(고객아이디)
);

CREATE TABLE  제품 (
	제품번호   CHAR(3)   NOT NULL,
	제품명     VARCHAR(20),
	재고량     INT,
	단가       INT,
	제조업체   VARCHAR(20),
	PRIMARY KEY(제품번호),
	CHECK (재고량 >= 0 AND 재고량 <=10000)
);


CREATE TABLE  주문 (
	주문번호   CHAR(3) NOT NULL,
	주문고객   VARCHAR(20),
	주문제품   CHAR(3),
	수량       INT,
	배송지     VARCHAR(30),
	주문일자  DATE,
	PRIMARY KEY(주문번호),
	FOREIGN KEY(주문고객)   REFERENCES   고객(고객아이디),
	FOREIGN KEY(주문제품)   REFERENCES   제품(제품번호)
);



INSERT INTO 고객 VALUES ('apple', '정소화', 20, 'gold', '학생', 1000);
INSERT INTO 고객 VALUES ('banana', '김선우', 25, 'vip', '간호사', 2500);
INSERT INTO 고객 VALUES ('carrot', '고명석', 28, 'gold', '교사', 4500);
INSERT INTO 고객 VALUES ('orange', '김용욱', 22, 'silver', '학생', 0);
INSERT INTO 고객 VALUES ('melon', '성원용', 35, 'gold', '회사원', 5000);
INSERT INTO 고객 VALUES ('peach', '오형준', NULL, 'silver', '의사', 300);
INSERT INTO 고객 VALUES ('pear', '채광주', 31, 'silver', '회사원', 500);


select 고객아이디, 고객이름, 등급 from 고객;

select * from 고객;

INSERT INTO 제품 VALUES ('p01', '그냥만두', 5000, 4500, '대한식품');
INSERT INTO 제품 VALUES ('p02', '매운쫄면', 2500, 5500, '민국푸드');
INSERT INTO 제품 VALUES ('p03', '쿵떡파이', 3600, 2600, '한빛제과');
INSERT INTO 제품 VALUES ('p04', '맛난초콜릿', 1250, 2500, '한빛제과');
INSERT INTO 제품 VALUES ('p05', '얼큰라면', 2200, 1200, '대한식품');
INSERT INTO 제품 VALUES ('p06', '통통우동', 1000, 1550, '민국푸드');
INSERT INTO 제품 VALUES ('p07', '달콤비스킷', 1650, 1500, '한빛제과');

select * from 제품;

INSERT INTO 주문 VALUES ('o01', 'apple', 'p03', 10, '서울시 마포구', '19/01/01');
INSERT INTO 주문 VALUES ('o02', 'melon', 'p01', 5, '인천시 계양구', '19/01/10');
INSERT INTO 주문 VALUES ('o03', 'banana', 'p06', 45, '경기도 부천시', '19/01/11');
INSERT INTO 주문 VALUES ('o04', 'carrot', 'p02', 8, '부산시 금정구', '19/02/01');
INSERT INTO 주문 VALUES ('o05', 'melon', 'p06', 36, '경기도 용인시', '19/02/20');
INSERT INTO 주문 VALUES ('o06', 'banana', 'p01', 19, '충청북도 보은군', '19/03/02');
INSERT INTO 주문 VALUES ('o07', 'apple', 'p03', 22, '서울시 영등포구', '19/03/15');
INSERT INTO 주문 VALUES ('o08', 'pear', 'p02', 50, '강원도 춘천시', '19/04/10');
INSERT INTO 주문 VALUES ('o09', 'banana', 'p04', 15, '전라남도 목포시', '19/04/11');
INSERT INTO 주문 VALUES ('o10', 'carrot', 'p03', 20, '경기도 안양시', '19/05/22');

select * from 주문;
select * from 제품;
select 제조업체 from 제품;
select distinct 제조업체 from 제품;

select 제품명, 단가 as 금액 from 제품;
select 제품명, 단가 + 500 as '조정 단가' from 제품;
select 제품명, 단가, 단가 * (1-0.3) as '할인 단가' from 제품;

select 제품명, 재고량, 단가, 제조업체 from 제품
    where 제조업체 = '한빛제과';
    
select 주문제품, 수량, 주문일자
from 주문
where 주문고객 = 'apple' AND 수량 >= 15;
select 주문고객, 주문제품, 수량, 주문일자 from 주문
  where 주문고객 = "apple" or 수량 >= 15; 
  
  -- 단가가 2000이상 3000 이하인 제품 조회
  select * from 제품 where 단가 >= 2000 and 단가 <= 3000;
  
  SELECT * from 고객 where 고객이름 like "김%";
  
  -- 고객 테이블에 대하여 나이를 기준으로 내림차순 정렬
  select * from 고객 order by 나이 desc;
 
 -- 주문  테이블에서 수량이 10개 이상인 주문을 조회, 제품코드에 대해 오름차순 정렬
select * from 주문 where 수량 >= 10 
order by 주문제품 asc, 수량 desc;

select avg(단가) from 제품;

select * from 고객;

select count(distinct 제조업체) from 제품;

select * from 주문;
select 주문제품, 주문고객, sum(수량) as 부분합 from 주문 group by 주문제품;

select * from 제품;
-- 제조업체별 제품개수와 재고량의 쵀대값을 츌력
-- having 구문은 group by 구문에 의해 처리된 결과를 대상으로 함
select 제조업체, count(*), max(재고량) from 제품 
group by 제조업체 having count(*) >= 3;

select * from 고객;
-- 고객 테이블에서 들급별 평균 출력, 적립금 평균 출력
select 등급, avg(적립금) from 고객 
	group by 등급 having avg(적립금) >= 1000;
    
select * from 주문;

-- 주문고객별 수량 합계 조회
select 주문고객, sum(수량) from 주문
	group by 주문고객;
    
-- 주문제품별 수량 합계 조회
select 주문제품, 주문고객, sum(수량) from 주문
	group by 주문제품;
    
-- 주문제품과 주문고객별 수량 합계를 조회

select 주문제품, 주문고객, sum(수량) from 주문
	group by 주문제품, 주문고객;

-- 주문 테이블에서 banana 고객이 주문한 제품의 명칭을 조회
select * from 주문;
select * from 제품;
select 주문.주문고객, 주문.주문제품, 제품.제품명 from 주문, 제품
	where 주문.주문제품 = 제품.제품번호;
    
-- 나이가 30세 이상인 고객이 주문한 제품의 주문내역 조회
select * from 고객;
select * from 주문;
select 고객.고객아이디, 주문.주문제품, 주문.주문일자
	from 고객, 주문
    where 고객.고객아이디 = 주문.주문고객 and 고객.나이 >= 30;

-- melon 고객이 주문한 제품의 제품코드, 수량, 단가, 금액
select * from 고객;
select * from 제품;
select 주문.주문고객, 제품.제품번호, 주문.수량, 제품.단가, 제품.단가 * 주문.수량 as 금액
	from 제품, 주문
	where 제품.제품번호 = 주문.주문제품 and 주문고객 = "melon";
    
-- 직업이 학생인 고객이 구매한 제품코드와 구매일자를 출력
select * from 고객;
select * from 제품;
select 고객.고객아이디, 고객.직업, 주문.주문제품, 고객.고객이름, 주문.주문일자 
	from 주문, 고객
    where 고객.고객아이디 = 주문.주문고객 and 고객.직업 = "학생";
    
-- 고명석 고객이 주문한 제품의 제품명 조회
select * from 고객;
select * from 제품;
select * from 주문;

select 고객.고객이름, 제품.제품명
	from 고객, 제품, 주문
    where 고객.고객아이디 = 주문.주문고객 and 제품.제품번호 = 주문.주문제품
    and 고객.고객이름 = "고명석";
select c.고객이름, p.제품명
	from 고객 c, 제품 p, 주문 o
    where c.고객아이디 = o.주문고객 and p.제품번호 = o.주문제품
    and c.고객이름 = "고명석";


-- 배송지가 서울인 고객의 고객이름, 제품명, 주문일자 출력(단, 별명 사용)
select * from 주문;
select * from 고객;
select c.고객이름, p.제품명, o.주문일자, o.배송지
	from 고객 c, 제품 p, 주문 o
    where c.고객아이디 = o.주문고객 and p.제품번호 = o.주문제품 and
    o.배송지 like "서울%";
    
-- 달콤비스킷을 제조한 제조업체가 생산한 제품들의 제품명과 단가 조회

select 제품명, 단가 from 제품 where 제조업체 = 
(select 제조업체 from 제품 where 제품명 = '달콤비스킷');

-- 적립금이 가장 많은 고객의 이름과 적립금
select 고객이름, 적립금 from 고객 where 적립금 = 
(select max(적립금) from 고객);

-- banana 고객이 주문한 제품의 제품명과 제조업체 조회
select * from 제품 where 제품번호 in
	(select 주문제품 from 주문 where 주문고객 = 'banana');
    -- 위 내용을 join 구문으로 작성
select 제품.제품명, 제품.제조업체, 주문.주문일자
	from 제품,주문
    where 제품.제품번호 = 주문.주문제품 and 주문고객 = 'banana';
    
-- banana 고객이 주문하지 않은 제품의 제품명과 제조업체 조회
select * from 제품 where 제품번호 not in
	(select 주문제품 from 주문 where 주문고객 = 'banana');
    
-- 2019년 3월 15일에 제품을 주문한 고객
select 고객.고객이름 from 고객 where
exists (select * from 주문 
	where 주문일자 = '2019-03-15' and 주문.주문고객 = 고객.고객아이디);

select * from 주문;
-- 주문 테이블로부터 2019년 3월 15일에 주문한 고객의 고객이름 조회(다중 행일 경우)
select 고객이름 from 고객 where 고객아이디 in
(select 주문고객 from 주문 where 주문일자 = '2019-03-15');

-- 주문수량의 평균 이상을 주문한 고객들의 고객이름 조회
select * from 고객 where 고객아이디 in 
	(select 주문고객 from 주문 where 수량 >= 
	(select avg(수량) from 주문));
    
select 고객아이디 from 고객;
select * from 제품;
-- 나이가 30 이상인 고객이 주문한 상품의 상품명, 단가, 금액을 조회(서브쿼리)
select 제품.제품명, 제품.단가, 제품.단가 * 주문.수량 from 제품, 주문
where 제품.제품번호 = 주문.주문제품 and 제품.제품번호 in
(select 주문제품 from 주문 where 주문고객 in
(select 고객아이디 from 고객 where 나이 >= 30));


select 제품.제품명, 제품.단가, 주문.수량*제품.단가
	from 고객, 주문, 제품
	where 고객.고객아이디 = 주문.주문고객 and 제품.제품번호 = 주문.주문제품
		and 고객.나이 >= 30;
