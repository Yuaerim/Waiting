use waiting;

/* 가상데이터 insert */

/*users 테이블*/
insert into users(u_name, email, u_pnumber, u_id, u_pw) values('유애림', 'email1@gmail.com', '01011111111', 'aerim', '1234');
insert into users(u_name, email, u_pnumber, u_id, u_pw) values('강온유', 'email2@gmail.com', '01011111112', 'onyou', '1234');

select * from users;

/*food 테이블*/
insert into food(f_name, f_time, f_date, f_img, f_address) values('음식점1', '14:00', '2022-01-01', '음식.jpg', '서울시');
insert into food(f_name, f_time, f_date, f_img, f_address) values('음식점2', '13:00', '2022-01-03', '음식1.jpg', '서울시');
insert into food(f_name, f_time, f_date, f_img, f_address) values('음식점3', '18:00', '2022-01-21', '음식2.jpg', '서울시');
insert into food(f_name, f_time, f_date, f_img, f_address) values('음식점4', '17:00', '2022-01-30', '음식3.jpg', '서울시');
insert into food(f_name, f_time, f_date, f_img, f_address) values('음식점5', '10:00', '2022-01-22', '음식4.jpg', '서울시');
insert into food(f_name, f_time, f_date, f_img, f_address) values('음식점6', '12:00', '2022-01-14', '음식5.jpg', '서울시');
insert into food(f_name, f_time, f_date, f_img, f_address) values('음식점7', '13:00', '2022-01-15', '음식6.jpg', '서울시');
insert into food(f_name, f_time, f_date, f_img, f_address) values('음식점8', '19:00', '2022-01-17', '음식7.jpg', '서울시');
insert into food(f_name, f_time, f_date, f_img, f_address) values('음식점9', '20:00', '2022-01-18', '음식8.jpg', '서울시');
insert into food(f_name, f_time, f_date, f_img, f_address) values('음식점10', '9:00', '2022-01-20', '음식9.jpg', '서울시');
insert into food(f_name, f_time, f_date, f_img, f_address) values('음식점11', '19:00', '2022-01-21', '음식10.jpg', '서울시');
insert into food(f_name, f_time, f_date, f_img, f_address) values('음식점12', '16:00', '2022-01-31', '음식11.jpg', '서울시');
insert into food(f_name, f_time, f_date, f_img, f_address) values('음식점13', '14:00', '2022-01-16', '음식12.jpg', '서울시');
insert into food(f_name, f_time, f_date, f_img, f_address) values('음식점14', '13:00', '2022-01-26', '음식13.jpg', '서울시');
insert into food(f_name, f_time, f_date, f_img, f_address) values('음식점15', '11:00', '2022-03-31', '음식14.jpg', '서울시');
insert into food(f_name, f_time, f_date, f_img, f_address) values('음식점16', '13:00', '2022-01-11', '음식15.jpg', '서울시');
insert into food(f_name, f_time, f_date, f_img, f_address) values('음식점17', '12:00', '2022-01-16', '음식16.jpg', '서울시');
insert into food(f_name, f_time, f_date, f_img, f_address) values('음식점18', '15:00', '2022-06-21', '음식17.jpg', '서울시');
insert into food(f_name, f_time, f_date, f_img, f_address) values('음식점19', '17:00', '2022-01-19', '음식18.jpg', '서울시');
insert into food(f_name, f_time, f_date, f_img, f_address) values('음식점20', '16:00', '2022-03-20', '음식20.jpg', '서울시');

select * from food;
/*cafe 테이블*/
insert into cafe(c_name, c_time, c_date, c_img, c_address) values('카페1', '14:00', '2022-01-25', 'cafe.jpg', '서울시');
insert into cafe(c_name, c_time, c_date, c_img, c_address) values('카페2', '14:00', '2022-03-11', 'cafe2.jpg', '서울시');
insert into cafe(c_name, c_time, c_date, c_img, c_address) values('카페3', '14:00', '2022-08-01', 'cafe3.jpg', '서울시');
insert into cafe(c_name, c_time, c_date, c_img, c_address) values('카페4', '14:00', '2022-03-21', 'cafe4.jpg', '서울시');
insert into cafe(c_name, c_time, c_date, c_img, c_address) values('카페5', '14:00', '2022-05-27', 'cafe5.jpg', '서울시');
insert into cafe(c_name, c_time, c_date, c_img, c_address) values('카페6', '14:00', '2022-06-27', 'cafe6.jpg', '서울시');
insert into cafe(c_name, c_time, c_date, c_img, c_address) values('카페7', '14:00', '2022-02-24', 'cafe7.jpg', '서울시');
insert into cafe(c_name, c_time, c_date, c_img, c_address) values('카페8', '14:00', '2022-09-11', 'cafe8.jpg', '서울시');
insert into cafe(c_name, c_time, c_date, c_img, c_address) values('카페9', '14:00', '2022-12-21', 'cafe9.jpg', '서울시');
insert into cafe(c_name, c_time, c_date, c_img, c_address) values('카페10', '14:00', '2022-11-30', 'cafe10.jpg', '서울시');
insert into cafe(c_name, c_time, c_date, c_img, c_address) values('카페11', '14:00', '2022-10-29', 'cafe11.jpg', '서울시');
insert into cafe(c_name, c_time, c_date, c_img, c_address) values('카페12', '14:00', '2022-07-26', 'cafe12.jpg', '서울시');
insert into cafe(c_name, c_time, c_date, c_img, c_address) values('카페13', '14:00', '2022-05-22', 'cafe13.jpg', '서울시');
insert into cafe(c_name, c_time, c_date, c_img, c_address) values('카페14', '14:00', '2022-03-12', 'cafe14.jpg', '서울시');
insert into cafe(c_name, c_time, c_date, c_img, c_address) values('카페15', '14:00', '2022-03-14', 'cafe15.jpg', '서울시');
insert into cafe(c_name, c_time, c_date, c_img, c_address) values('카페16', '14:00', '2022-02-21', 'cafe16.jpg', '서울시');
insert into cafe(c_name, c_time, c_date, c_img, c_address) values('카페17', '14:00', '2022-06-22', 'cafe17.jpg', '서울시');
insert into cafe(c_name, c_time, c_date, c_img, c_address) values('카페18', '14:00', '2022-08-23', 'cafe18.jpg', '서울시');
insert into cafe(c_name, c_time, c_date, c_img, c_address) values('카페19', '14:00', '2022-04-25', 'cafe19.jpg', '서울시');
insert into cafe(c_name, c_time, c_date, c_img, c_address) values('카페20', '14:00', '2022-08-27', 'cafe20.jpg', '서울시');

select * from cafe;
/*reservation 테이블*/
insert into reservation(f_code,c_code,reservation_ing,reservation_end) values(1,2,true, false);

select * from reservation;
/*heart 테이블*/
insert into heart(forc_img, asterion, forc_name, forc_address) values('cafe2', 2, '카페2', '서울시');
insert into heart(forc_img, asterion, forc_name, forc_address) values('음식2', 4, '음식점2', '서울시');
insert into heart(forc_img, asterion, forc_name, forc_address) values('cafe17', 2, '카페17', '서울시');
insert into heart(forc_img, asterion, forc_name, forc_address) values('음식17', 2, '음식점17', '서울시');
insert into heart(forc_img, asterion, forc_name, forc_address) values('cafe10', 2, '카페10', '서울시');

select * from heart;
/*main 테이블*/
insert into main(f_code,c_code,forc_img, forc_name, forc_address) values(1,1,'cafe1', '카페1', '서울시');
insert into main(f_code,c_code,forc_img, forc_name, forc_address) values(1,1,'음식1', '음식점1', '서울시');
insert into main(f_code,c_code,forc_img, forc_name, forc_address) values(1,1,'cafe2', '카페2', '서울시');
insert into main(f_code,c_code,forc_img, forc_name, forc_address) values(1,1,'음식2', '음식점2', '서울시');
insert into main(f_code,c_code,forc_img, forc_name, forc_address) values(1,1,'cafe3', '카페3', '서울시');
insert into main(f_code,c_code,forc_img, forc_name, forc_address) values(1,1,'음식3', '음식점3', '서울시');
insert into main(f_code,c_code,forc_img, forc_name, forc_address) values(1,1,'cafe4', '카페4', '서울시');
insert into main(f_code,c_code,forc_img, forc_name, forc_address) values(1,1,'음식4', '음식점4', '서울시');
insert into main(f_code,c_code,forc_img, forc_name, forc_address) values(1,1,'cafe5', '카페5', '서울시');
insert into main(f_code,c_code,forc_img, forc_name, forc_address) values(1,1,'음식5', '음식점5', '서울시');
insert into main(f_code,c_code,forc_img, forc_name, forc_address) values(1,1,'cafe6', '카페6', '서울시');
insert into main(f_code,c_code,forc_img, forc_name, forc_address) values(1,1,'음식6', '음식점6', '서울시');

select * from main;