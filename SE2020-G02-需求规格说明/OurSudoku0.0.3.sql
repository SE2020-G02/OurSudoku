/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2020/12/14 12:49:32                          */
/*==============================================================*/


drop table if exists Administrator;

drop table if exists Blogs;

drop table if exists Problem;

drop table if exists Relationship_3;

drop table if exists Room;

drop table if exists Room_Member;

drop table if exists Solve;

drop table if exists User;

drop table if exists User_Blog_Like;

/*==============================================================*/
/* Table: Administrator                                         */
/*==============================================================*/
create table Administrator
(
   Admin_ID             varchar(20),
   Admin_pwd            varchar(20)
);

/*==============================================================*/
/* Table: Blogs                                                 */
/*==============================================================*/
create table Blogs
(
   Problem_ID           varchar(20) not null,
   Blog_ID              varchar(1024) not null,
   Blog_path            varchar(1024),
   Blog_commends        varchar(1024),
   Blog_likes           int,
   primary key (Problem_ID, Blog_ID)
);

/*==============================================================*/
/* Table: Problem                                               */
/*==============================================================*/
create table Problem
(
   Problem_ID           varchar(20) not null,
   Problem_level        int,
   Problem_solved       bool,
   Problem_panes        varchar(81),
   Problem_ans          varchar(81),
   primary key (Problem_ID)
);

/*==============================================================*/
/* Table: Relationship_3                                        */
/*==============================================================*/
create table Relationship_3
(
   User_ID              varchar(20) not null,
   Use_User_ID          varchar(20) not null,
   primary key (User_ID, Use_User_ID)
);

/*==============================================================*/
/* Table: Room                                                  */
/*==============================================================*/
create table Room
(
   Room_ID              int not null,
   Room_start_time      time,
   Room_level           int,
   primary key (Room_ID)
);

/*==============================================================*/
/* Table: Room_Member                                           */
/*==============================================================*/
create table Room_Member
(
   Room_ID              int not null,
   User_ID              varchar(20) not null,
   primary key (Room_ID, User_ID)
);

/*==============================================================*/
/* Table: Solve                                                 */
/*==============================================================*/
create table Solve
(
   Problem_ID           varchar(20) not null,
   User_ID              varchar(20) not null,
   timecost             int,
   primary key (Problem_ID, User_ID)
);

/*==============================================================*/
/* Table: User                                                  */
/*==============================================================*/
create table User
(
   User_ID              varchar(20) not null,
   User_pwd             varchar(20),
   User_level           int,
   "User_profile-photo" longblob,
   User_avetime         float,
   User_age             int,
   User_nickname        varchar(20),
   User_sex             bool,
   User_education       varchar(20),
   User_rank            int,
   primary key (User_ID)
);

/*==============================================================*/
/* Table: User_Blog_Like                                        */
/*==============================================================*/
create table User_Blog_Like
(
   Problem_ID           varchar(20) not null,
   Blog_ID              varchar(1024) not null,
   User_ID              varchar(20) not null,
   primary key (Problem_ID, Blog_ID, User_ID)
);

alter table Blogs add constraint FK_Relationship_2 foreign key (Problem_ID)
      references Problem (Problem_ID) on delete restrict on update restrict;

alter table Relationship_3 add constraint FK_Relationship_3 foreign key (User_ID)
      references User (User_ID) on delete restrict on update restrict;

alter table Relationship_3 add constraint FK_Relationship_4 foreign key (Use_User_ID)
      references User (User_ID) on delete restrict on update restrict;

alter table Room_Member add constraint FK_Room_Member foreign key (Room_ID)
      references Room (Room_ID) on delete restrict on update restrict;

alter table Room_Member add constraint FK_Room_Member2 foreign key (User_ID)
      references User (User_ID) on delete restrict on update restrict;

alter table Solve add constraint FK_Solve foreign key (Problem_ID)
      references Problem (Problem_ID) on delete restrict on update restrict;

alter table Solve add constraint FK_Solve2 foreign key (User_ID)
      references User (User_ID) on delete restrict on update restrict;

alter table User_Blog_Like add constraint FK_User_Blog_Like foreign key (Problem_ID, Blog_ID)
      references Blogs (Problem_ID, Blog_ID) on delete restrict on update restrict;

alter table User_Blog_Like add constraint FK_User_Blog_Like2 foreign key (User_ID)
      references User (User_ID) on delete restrict on update restrict;

