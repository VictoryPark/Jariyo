create table jariyo_member (
    no number constraint j_member_no_pk primary key,
    id varchar2(10) not null unique,
    password varchar2(20) not null,
    name varchar2(20) not null,
    email varchar2(30) not null,
    phone_no char(11) not null,
    road_addr varchar2(20) not null,
    detail_addr varchar2(40) not null,
    post_no char(5) not null,
    position_x number,
    position_y number,
    birth_date char(8) not null,
    hobby varchar2(20), 
    team_name varchar2(30),
    profile_img_real varchar2(30),
    profile_img_sys varchar2(30)
);

drop table jariyo_member;
create sequence s_jmember_no;
desc jariyo_member;




create table jariyo_place (
    place_no number constraint j_place_no_pk primary key,
    place_name varchar2(50) not null unique,
    place_road_addr varchar2(100),
    place_detail_addr varchar2(100),
    place_post_no char(5) not null,
    place_phone_no varchar2(13),
    place_facility varchar2(50),
    price number default 0,
    place_position_x number,
    place_position_y number,
    star_point number default 0,
    review varchar2(2000),
    kind varchar2(20)
);


alter table jariyo_place
add weekdays_start char(4);

alter table jariyo_place
add weekdays_end char(4);

alter table jariyo_place
add weekends_start char(4);

alter table jariyo_place
add weekends_end char(4);

alter table jariyo_place
add etc varchar2(50);

desc jariyo_place;
create sequence s_jplace_no;

select * from jariyo_place;

create table jariyo_booking(
    booking_no number constraint j_booking_no_pk primary key,
    place_no number constraint j_booking_place_no_fk references jariyo_place(place_no),
    id varchar2(30) constraint j_booking_id_fk references jariyo_member(id),
    booking_team_name varchar2(50) not null,
    booking_email varchar2(30),
    booking_phone_no char(11) not null,
    booking_date char(8) not null,
    start_time char(4) not null,
    end_time char(4) not null,
    mail_send char(1)
);
drop table jariyo_booking;
create sequence s_jbooking_no;

create table jariyo_facility(
    place_no number constraint j_facility_no_fk references jariyo_place(place_no),
    place_name varchar2(30) constraint j_facility_name_fk references jariyo_place(place_name),
    shower_room char(1) default 'n',
    ciga_room char(1) default 'n',
    gym char(1) default 'n',
    soccer_grass char(1) default 'n',
    tennis_grass char(1) default 'n',
    tennis_hard char(1) default 'n',
    tennis_clay char(1) default 'n',
    tennis_chemical char(1) default 'n',
    baseball_grass char(1) default 'n',
    baseball_clay char(1) default 'n',
    baseball_masato char(1) default 'n',
    women_toilet char(1) default 'n',
    men_toilet char(1) default 'n',
    changing_room char(1) default 'n',
    water char(1) default 'n',
    parking char(1) default 'n',
    safety_net char(1) default 'n',
    light char(1) default 'n',
    locker char(1) default 'n',
    restroom char(1) default 'n',
    office char(1) default 'n',
    stands char(1) default 'n',
    medical_office char(1) default 'n',
    track char(1) default 'n'
);

drop table jariyo_facility;

create table jariyo_place_eval(
    eval_no number constraint j_place_eval_no_pk primary key,
    id varchar2(30) constraint j_place_eval_id_fk references jariyo_member(id),
    place_no number constraint j_place_eval_place_no references jariyo_place(place_no),
    content varchar2(2000) not null,
    reg_date date default sysdate,
    approach number(5) not null,
    convenient number(5) not null,
    star_point number(5) not null
);

create sequence s_jplace_eval_no;
drop table jariyo_place_eval;
commit;

select * from jariyo_place;

insert into jariyo_member (
    no, id, password, name, email, phone_no, road_addr, detail_addr, post_no, birth_date
) values (
    s_jmember_no.nextval, 'victory', '1234', '박쓰','m@naver.com', '01012345678', '올림픽로','435', '12345', '19990918');

select * from jariyo_member;
select * from jariyo_booking;

delete from jariyo_booking
 where booking_no=8;

update jariyo_member
 set team_name = '빠레'
 where no=2;

