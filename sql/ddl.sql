drop table if exists`like`;
drop table if exists photo;
drop table if exists user;

create table user (
	userId binary(16) not null,
	userName varchar (22) not null,
	userInfo varchar(120),
	userProfilePicture varchar(120),
	unique key(userName),
	primary key(userId)
);


create table photo (
	photoId binary (16) not null,
	photoUserId binary(16) not null,
	photoCaption varchar(32),
	photoComment varchar (32),
	photoLocation varchar (32),
	photoTag varchar (35),
	index (photoUserId),
	foreign key(photoUserId) references user (userId),
	primary key(photoId)
);

create table `like` (
	likeUserId binary(16) not null,
	likePhotoId binary(16) not null,
	index(likeUserId),
	index(likePhotoId),
	foreign key(likeUserId) references user(userId),
	foreign key(likePhotoId) references photo (photoId)
);