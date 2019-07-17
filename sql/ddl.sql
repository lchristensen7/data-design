drop table if exists`like`;
drop table if exists photo;
drop table if exists user;

create table user(
	userId binary(16) not null,
	userName varchar (22) not null,
	userInfo varchar(120),
	userProfilePicture varchar(120),
	UNIQUE key(userName),
	PRIMARY KEY (userId)
);


create table photo(
	photoID binary (20) not null,
	photoUserID binary(16) not null,
	photoCaption varchar(32),
	photoComment varchar (32),
	photoLocation varchar (32),
	photoTag varchar (35),
	INDEX (photoUserID),
	foreign key (photoUserID) references user (userId),
	primary key (photoID)
);

create table `like` (
	likeUserId binary(16) not null,
	likePhotoId binary(16) not null,
	index(likeUserId),
	index(likePhotoId),
	foreign key(likeUserId) references user(userId),
	foreign key (likePhotoID) references photo (photoID)
);
