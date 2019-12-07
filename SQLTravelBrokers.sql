use [TravelBrokers]
--Accounts
insert into Accounts values('utthao','123',null,'utthaonguyenthi98@gmail.com','0901321202','RO01',0);
insert into Accounts values('phuc','1234',null,'utthaonguyenthi98@gmail.com','0901321202','RO02',0);
insert into Accounts values('nhi','12345',null,'utthaonguyenthi98@gmail.com','0901321202','RO03',0);
insert into Accounts values('ho','123456',null,'utthaonguyenthi98@gmail.com','0901321202','RO01',0);
insert into Accounts values('quang','1233',null,'utthaonguyenthi98@gmail.com','0901321202','RO03',0);
--Evaluations - utthao
--PostCategories - phuc
insert into PostCategories values('PC01','Tin tức du lịch');
insert into PostCategories values('PC02','Cẩm nang du lịch');
insert into PostCategories values('PC03','Kinh nghiệm du lịch');
--Post - phuc
insert into Posts values('Post01','Tiêu đề tin tức','Mô tả nội dung tin tức','Mô tả đoạn ngắn tin tức',null,'LePhuc','01/12/2019','03/12/2019','Phuc',null,'Thẻ mô tả','Thẻ khóa','PC01','true',null);
insert into Posts values('Post02','Tiêu đề tin tức','Mô tả nội dung tin tức','Mô tả đoạn ngắn tin tức',null,'Thao','02/12/2019','04/12/2019','Phuc',null,'Thẻ mô tả','Thẻ khóa','PC02','true',null);
insert into Posts values('Post03','Tiêu đề tin tức','Mô tả nội dung tin tức','Mô tả đoạn ngắn tin tức',null,'Ho','03/12/2019','05/12/2019','Phuc',null,'Thẻ mô tả','Thẻ khóa','PC03','true',null);
insert into Posts values('Post04','Tiêu đề tin tức','Mô tả nội dung tin tức','Mô tả đoạn ngắn tin tức',null,'Nhi','04/12/2019','06/12/2019','Phuc',null,'Thẻ mô tả','Thẻ khóa','PC01','true',null);
insert into Posts values('Post05','Tiêu đề tin tức','Mô tả nội dung tin tức','Mô tả đoạn ngắn tin tức',null,'Quang','05/12/2019','07/12/2019','Phuc',null,'Thẻ mô tả','Thẻ khóa','PC02','true',null);
insert into Posts values('Post06','Tiêu đề tin tức','Mô tả nội dung tin tức','Mô tả đoạn ngắn tin tức',null,'LePhuc','06/12/2019','07/12/2019','Phuc',null,'Thẻ mô tả','Thẻ khóa','PC01','true',null);
--Price - utthao
--Provinces -nhi
--TourBookings -nhi
--TourCategories-quang
--TourCustomers- quang
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
--TourPrograms
insert into TourPrograms values('TP01','12/06/2019',1,'Tiêu đề chương trình tuor','Mô tả chương trình tour','PV01');
insert into TourPrograms values('TP02','12/07/2019',2,'Tiêu đề chương trình tuor','Mô tả chương trình tour','PV02');
insert into TourPrograms values('TP03','12/08/2019',3,'Tiêu đề chương trình tuor','Mô tả chương trình tour','PV03');
insert into TourPrograms values('TP04','12/09/2019',4,'Tiêu đề chương trình tuor','Mô tả chương trình tour','PV04');
--Tours
insert into Tours values('TR01','Tour số 1',null,null,'Mô tả tour','12/06/2019','PV01',8,1,0,'12/06/2019','12/06/2019','nvhoor','nvhoor',1,0,'CT01');
insert into Tours values('TR02','Tour số 2',null,null,'Mô tả tour','12/06/2019','PV02',9,0,1,'12/06/2019','12/06/2019','nvhoor','nvhoor',1,0,'CT02');
insert into Tours values('TR03','Tour số 3',null,null,'Mô tả tour','12/06/2019','PV03',3,1,1,'12/06/2019','12/06/2019','nvhoor','nvhoor',1,0,'CT03');
insert into Tours values('TR04','Tour số 4',null,null,'Mô tả tour','12/06/2019','PV02',5,1,0,'12/06/2019','12/06/2019','nvhoor','nvhoor',1,0,'CT04');
insert into Tours values('TR05','Tour số 5',null,null,'Mô tả tour','12/06/2019','PV03',6,0,1,'12/06/2019','12/06/2019','nvhoor','nvhoor',1,0,'CT02');
insert into Tours values('TR06','Tour số 6',null,null,'Mô tả tour','12/06/2019','PV04',7,1,0,'12/06/2019','12/06/2019','nvhoor','nvhoor',1,0,'CT01');
insert into Tours values('TR07','Tour số 7',null,null,'Mô tả tour','12/06/2019','PV02',1,1,1,'12/06/2019','12/06/2019','nvhoor','nvhoor',1,0,'CT03');
insert into Tours values('TR08','Tour số 8',null,null,'Mô tả tour','12/06/2019','PV01',7,1,0,'12/06/2019','12/06/2019','nvhoor','nvhoor',1,0,'CT04');
--TourSuppliers
insert into TourSuppliers values('utthao','TS01','123456',null,'Hai Chau - Da Nang',0);
insert into TourSuppliers values('ho','TS01','123456',null,'Hai Chau - Da Nang',0);
insert into TourSuppliers values('phuc','TS01','123456',null,'Hai Chau - Da Nang',0);
insert into TourSuppliers values('nhi','TS01','123456',null,'Hai Chau - Da Nang',0);
--Roles
insert into Roles values('RO01','Quản trị viên');
insert into Roles values('RO02','Nhà cung cấp');
insert into Roles values('RO03','Khách hàng');
