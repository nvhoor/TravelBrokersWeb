﻿use [TravelBrokers]
--Roles
insert into Roles values('RO01','Quản trị viên');
insert into Roles values('RO02','Nhà cung cấp');
insert into Roles values('RO03','Khách hàng');
--Accounts
insert into Accounts values('utthao','123',null,'utthaonguyenthi98@gmail.com','0901321202','RO01',0);
insert into Accounts values('phuc','1234',null,'utthaonguyenthi98@gmail.com','0901321202','RO02',0);
insert into Accounts values('nhi','12345',null,'utthaonguyenthi98@gmail.com','0901321202','RO03',0);
insert into Accounts values('ho','123456',null,'utthaonguyenthi98@gmail.com','0901321202','RO01',0);
insert into Accounts values('quang','1233',null,'utthaonguyenthi98@gmail.com','0901321202','RO03',0);

--TourCategories-quang
insert into TourCategories values('CT01','Loại tour 1','Mô tả loại tour');
insert into TourCategories values('CT02','Loại tour 2','Mô tả loại tour');
insert into TourCategories values('CT03','Loại tour 3','Mô tả loại tour');
insert into TourCategories values('CT04','Loại tour 4','Mô tả loại tour');
--Tours
insert into Tours values('TR01','Tour số 1',null,null,'Mô tả tour','12/06/2019','PV01',8,1,0,'12/06/2019','12/06/2019','nvhoor','nvhoor',1,0,'CT01');
insert into Tours values('TR02','Tour số 2',null,null,'Mô tả tour','12/06/2019','PV02',9,0,1,'12/06/2019','12/06/2019','nvhoor','nvhoor',1,0,'CT02');
insert into Tours values('TR03','Tour số 3',null,null,'Mô tả tour','12/06/2019','PV03',3,1,1,'12/06/2019','12/06/2019','nvhoor','nvhoor',1,0,'CT03');
insert into Tours values('TR04','Tour số 4',null,null,'Mô tả tour','12/06/2019','PV02',5,1,0,'12/06/2019','12/06/2019','nvhoor','nvhoor',1,0,'CT04');
insert into Tours values('TR05','Tour số 5',null,null,'Mô tả tour','12/06/2019','PV03',6,0,1,'12/06/2019','12/06/2019','nvhoor','nvhoor',1,0,'CT02');
insert into Tours values('TR06','Tour số 6',null,null,'Mô tả tour','12/06/2019','PV04',7,1,0,'12/06/2019','12/06/2019','nvhoor','nvhoor',1,0,'CT01');
insert into Tours values('TR07','Tour số 7',null,null,'Mô tả tour','12/06/2019','PV02',1,1,1,'12/06/2019','12/06/2019','nvhoor','nvhoor',1,0,'CT03');
insert into Tours values('TR08','Tour số 8',null,null,'Mô tả tour','12/06/2019','PV01',7,1,0,'12/06/2019','12/06/2019','nvhoor','nvhoor',1,0,'CT04');
--Evaluations - utthao
insert into Evaluations values('EV01',20,30,20,50,100,'TR01');
insert into Evaluations values('EV02',7,10,10,50,100,'TR02');
insert into Evaluations values('EV03',1,5,10,20,200,'TR03');
insert into Evaluations values('EV04',1,2,4,15,100,'TR04');
--PostCategories - phuc
insert into PostCategories values('PC01','Tin tức du lịch');
insert into PostCategories values('PC02','Cẩm nang du lịch');
insert into PostCategories values('PC03','Kinh nghiệm du lịch');
--Post - phuc
insert into Posts values('PO01','Tiêu đề tin tức','Mô tả nội dung tin tức','Mô tả đoạn ngắn tin tức',null,'Thao','01/12/2019','03/12/2019','Ho',null,'Thẻ mô tả','Thẻ khóa','PC01',1,0);
insert into Posts values('PO02','Tiêu đề tin tức','Mô tả nội dung tin tức','Mô tả đoạn ngắn tin tức',null,'Thao','02/12/2019','04/12/2019','Thao',null,'Thẻ mô tả','Thẻ khóa','PC02',1,0);
insert into Posts values('PO03','Tiêu đề tin tức','Mô tả nội dung tin tức','Mô tả đoạn ngắn tin tức',null,'Ho','03/12/2019','05/12/2019','Ho',null,'Thẻ mô tả','Thẻ khóa','PC03',1,0);
insert into Posts values('PO04','Tiêu đề tin tức','Mô tả nội dung tin tức','Mô tả đoạn ngắn tin tức',null,'Ho','04/12/2019','06/12/2019','Thao',null,'Thẻ mô tả','Thẻ khóa','PC01',1,0);
insert into Posts values('PO05','Tiêu đề tin tức','Mô tả nội dung tin tức','Mô tả đoạn ngắn tin tức',null,'Thao','05/12/2019','07/12/2019','Ho',null,'Thẻ mô tả','Thẻ khóa','PC02',1,0);
insert into Posts values('PO06','Tiêu đề tin tức','Mô tả nội dung tin tức','Mô tả đoạn ngắn tin tức',null,'Ho','06/12/2019','07/12/2019','Ho',null,'Thẻ mô tả','Thẻ khóa','PC01',1,0);
--Prices - utthao
Insert into Prices values('PR01','TR01',7345000,6343000,'12/7/2019','12/16/2019','TT01');
Insert into Prices values('PR02','TR01',7345000,6343000,'12/7/2019','12/16/2019','TT02');
Insert into Prices values('PR03','TR01',7345000,6343000,'12/7/2019','12/16/2019','TT03');
Insert into Prices values('PR04','TR01',7345000,6343000,'12/7/2019','12/16/2019','TT04');
--Provinces -nhi
Insert into Provinces values('PV01','Hà Nội');
Insert into Provinces values('PV02','Hồ Chí Minh');
Insert into Provinces values('PV03','An Giang');
Insert into Provinces values('PV04','Bà Rịa – Vũng Tàu');
--TourBookings -nhi
Insert into TourBookings values('TB01','Nguyễn Văn Quang','quangnguyenvan198@gmail.com','0337586768','12 Nguyễn Văn Linh',1,0,0,'Không có','quang','TR01',1,0);
Insert into TourBookings values('TB05','Trương Thị Hồng Nhi','truongthihongnhi1998@gmail.com','0794299038','12 Nguyễn Văn Linh',1,0,0,'Không có','nhi','TR01',1,0);

--TourPrograms
insert into TourPrograms values('TP01','12/06/2019',1,'Tiêu đề chương trình tuor','Mô tả chương trình tour','PV01','TR01');
insert into TourPrograms values('TP02','12/07/2019',2,'Tiêu đề chương trình tuor','Mô tả chương trình tour','PV02','TR01');
insert into TourPrograms values('TP03','12/08/2019',3,'Tiêu đề chương trình tuor','Mô tả chương trình tour','PV03','TR02');
insert into TourPrograms values('TP04','12/09/2019',4,'Tiêu đề chương trình tuor','Mô tả chương trình tour','PV04','TR02');
--TourCustomers- quang
insert into TourCustomers values('TC01','Khách hàng 1','1','12/7/2019','TB01');
insert into TourCustomers values('TC02','Khách hàng 2','1','12/7/2019','TB01');
insert into TourCustomers values('TC03','Khách hàng 3','1','12/7/2019','TB05');
--Tourists
insert into Tourists values('utthao','TO01','12/15/1998',0);
insert into Tourists values('phuc','TO02','02/04/1998',0);
insert into Tourists values('quang','TO03','08/16/1998',0);
insert into Tourists values('nhi','TO04','02/06/1998',0);
insert into Tourists values('ho','TO05','02/04/1998',0);
--TouristType
insert into TouristType values('TT01','Người lớn');
insert into TouristType values('TT02','Trẻ em');
insert into TouristType values('TT03','Trẻ nhỏ');
insert into TouristType values('TT04','Em bé');


--TourSuppliers
insert into TourSuppliers values('phuc','TS03','123456',null,'Hai Chau - Da Nang',0);

