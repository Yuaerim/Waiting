create database waiting;
use waiting;

/* create문 */

CREATE TABLE `users` (
  `u_code` int PRIMARY KEY AUTO_INCREMENT,
  `u_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `u_id` varchar(255) NOT NULL,
  `u_pw` varchar(255) NOT NULL,
  `u_pnumber` int DEFAULT 5000
);

CREATE TABLE `food` (
  `f_code` int PRIMARY KEY AUTO_INCREMENT,
  `f_name` varchar(255),
  `f_time` varchar(255) NOT NULL,
  `f_date` varchar(255) NOT NULL,
  `f_img` varchar(255) NOT NULL,
  `f_address` varchar(255) NOT NULL
);

CREATE TABLE `heart` (
  `h_code` int PRIMARY KEY AUTO_INCREMENT,
  `forc_img` varchar(255),
  `asterion` int,
  `forc_name` varchar(255) NOT NULL,
  `forc_address` varchar(255) NOT NULL
);


CREATE TABLE `cafe` (
  `c_code` int PRIMARY KEY AUTO_INCREMENT,
   `c_name` varchar(255) NOT NULL,
 `c_time` varchar(255),
 `c_date` varchar(255),
 `c_img` varchar(255),
 `c_address` varchar(255) NOT NULL
);

CREATE TABLE `reservation` (
  `r_code` int PRIMARY KEY AUTO_INCREMENT,
  `f_code` int,
  `c_code` int,
  `reservation_ing` boolean NOT NULL, /* 진행 1, 끝난거 0*/
  `reservation_end` boolean NOT NULL, /* 진행 1, 끝난거 0*/
  foreign key(f_code) references food(f_code) on delete cascade,
  foreign key(c_code) references cafe(c_code) on delete cascade
);

CREATE TABLE `main` (
  `m_code` int PRIMARY KEY AUTO_INCREMENT,
  `f_code` int,
  `c_code` int,
  `forc_img` varchar(255),
  `forc_name` varchar(255),
  `forc_address` varchar(500) NOT NULL,
   foreign key(f_code) references food(f_code) on delete cascade,
  foreign key(c_code) references cafe(c_code) on delete cascade
);


CREATE TABLE `mypage` (
  `my_code` int PRIMARY KEY AUTO_INCREMENT,
   `u_code` int,
    `f_code` int,
    `c_code` int,
    `r_code` int,
  `h_code` int DEFAULT 5000,
  foreign key(u_code) references users(u_code) on delete cascade,
  foreign key(f_code) references food(f_code) on delete cascade,
  foreign key(c_code) references cafe(c_code) on delete cascade,
  foreign key(r_code) references reservation(r_code) on delete cascade,
  foreign key(h_code) references heart(h_code) on delete cascade
);