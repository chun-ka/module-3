drop database if exists benh_nhan_benh_an;
create database if not exists benh_nhan_benh_an;
use benh_nhan_benh_an;

create table benh_an(
ma_benh_an varchar(45) primary key,
ten_benh_an varchar(45));

create table benh_nhan(
ma_benh_an varchar(45),
ma_benh_nhan varchar(45) primary key,
ten_benh_nhan varchar(45),
ngay_nhap_vien varchar(45),
ngay_ra_vien varchar(45),
ly_do_nhap_vien varchar(450));


insert into benh_an value (1,'đau tim');
insert into benh_an value (2,'ung thư');

insert into benh_nhan value (1,1,'Quoc Trung','11-11-2011','11-11-2022','đau tim');
select * from benh_nhan;


update benh_nhan set ma_benh_an = 2, ten_benh_nhan ='Trung',ngay_nhap_vien='11-11-2011',ngay_ra_vien='11-11-2022',ly_do_nhap_vien= 'đau tim' where ma_benh_nhan='1';