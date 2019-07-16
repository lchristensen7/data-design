drop table if exists userID;
drop table if exists photoTag;
drop table if exists tag;
drop table if exists photoComment;

create table user(
	userId binary(16) not null,
	userName varchar(255), not null,
	userInfo char(32),
	userProfilePicture varchar(128),
	UNIQUE key(userId)
);


create table photo(
	photoUserID binary(16) not null,
	photoCaption varchar(32)
	photoComment varchar (32)
	photoLocation char (32)
	photoTag varchar (35)
	INDEX (photoUserID)
	foreign key (photoUserID) references (userID)
	primary key (userID)
);

create table like (
	likeUserId binary(16) not null,
	likePhotoId binary(16) not null,
	index(likeUserIdId),
	foreign key(likeUserId) references user(userId),
	foreign key (likePhotoID) references photo (photoUserID)
);
