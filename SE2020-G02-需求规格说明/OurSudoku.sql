/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2020/11/8 14:54:41                           */
/*==============================================================*/


drop table if exists Administrater;

drop table if exists Blogs;

drop table if exists Problem;

drop table if exists Relationship_3;

drop table if exists Solve;

drop table if exists User;

/*==============================================================*/
/* Table: Administrater                                         */
/*==============================================================*/
create table Administrater
(
   Admin_ID             varchar(20),
   Admin_pwd            varchar(20)
);

/*==============================================================*/
/* Table: Blogs                                                 */
/*==============================================================*/
create table Blogs
(
   User_ID              varchar(20) not null,
   Problem_ID           varchar(20) not null,
   Blog_path            varchar(1024),
   primary key (User_ID, Problem_ID)
);

/*==============================================================*/
/* Table: Problem                                               */
/*==============================================================*/
create table Problem
(
   Problem_ID           varchar(20) not null,
   Problem_level        int,
   Problem_path         varchar(1024),
   Problem_ans          varchar(1024),
   Problem_solved       bool,
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
   primary key (User_ID)
);

alter table Blogs add constraint FK_Relationship_1 foreign key (User_ID)
      references User (User_ID) on delete restrict on update restrict;

alter table Blogs add constraint FK_Relationship_2 foreign key (Problem_ID)
      references Problem (Problem_ID) on delete restrict on update restrict;

alter table Relationship_3 add constraint FK_Relationship_3 foreign key (User_ID)
      references User (User_ID) on delete restrict on update restrict;

alter table Relationship_3 add constraint FK_Relationship_4 foreign key (Use_User_ID)
      references User (User_ID) on delete restrict on update restrict;

alter table Solve add constraint FK_Solve foreign key (Problem_ID)
      references Problem (Problem_ID) on delete restrict on update restrict;

alter table Solve add constraint FK_Solve2 foreign key (User_ID)
      references User (User_ID) on delete restrict on update restrict;

