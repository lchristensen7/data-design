drop table if exists 'like';
drop table if exists user;
drop table if exists photo;

create table user(
	userId binary(16) not null,
	userName varchar(255), not null,
	userInfo varchar(120),
	userProfilePicture varchar(128),
	UNIQUE key(userId)
	primary key (userId)
);


create table photo(
	photoID binary (20) not null,
	photoUserID binary(16) not null,
	photoCaption varchar(32)
	photoComment varchar (32)
	photoLocation varchar (32)
	photoTag varchar (35)
	INDEX (photoUserID)
	foreign key (photoUserID) references (userID)
	primary key (photoID)
);

create table 'like' (
	likeUserId binary(16) not null,
	likePhotoId binary(16) not null,
	index(likeUserId),
	foreign key(likeUserId) references user(userId),
	foreign key (likePhotoID) references photo (photoID)
);
