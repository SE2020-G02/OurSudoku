drop table Relationship_3;

drop table administrator;

drop table blog_commends;

drop table blogs;

drop table problem;

drop table report;

drop table reward;

drop table room;

drop table room_member;

drop table solve;

drop table user;

drop table user_blog_like;

drop table user_commends_like;

/*==============================================================*/
/* Table: Relationship_3                                        */
/*==============================================================*/
create table Relationship_3
(
   user_ID              varchar(20) not null,
   use_user_ID          varchar(20) not null,
   primary key (user_ID, use_user_ID)
);

/*==============================================================*/
/* Table: administrator                                         */
/*==============================================================*/
create table administrator
(
   admin_ID             varchar(20) not null,
   admin_pwd            varchar(20),
   primary key (admin_ID)
);

/*==============================================================*/
/* Table: blog_commends                                         */
/*==============================================================*/
create table blog_commends
(
   blog_commends_ID     varchar(20) not null,
   problem_ID           varchar(20),
   blog_ID              varchar(20),
   blog_commends_path   varchar(200),
   primary key (blog_commends_ID)
);

/*==============================================================*/
/* Table: blogs                                                 */
/*==============================================================*/
create table blogs
(
   problem_ID           varchar(20) not null,
   blog_ID              varchar(20) not null,
   blog_path            varchar(200),
   blog_likes           int,
   blog_exist           blob,
   primary key (problem_ID, blog_ID)
);

/*==============================================================*/
/* Table: problem                                               */
/*==============================================================*/
create table problem
(
   problem_ID           varchar(20) not null,
   problem_level        int,
   problem_panes        varchar(90),
   problem_ans          varchar(90),
   primary key (problem_ID)
);

/*==============================================================*/
/* Table: report                                                */
/*==============================================================*/
create table report
(
   report_ID            varchar(20) not null,
   report_id_solved     blob,
   report_time          datetime,
   report_target_ID     varchar(20),
   primary key (report_ID)
);

/*==============================================================*/
/* Table: reward                                                */
/*==============================================================*/
create table reward
(
   reward_ID            varchar(20) not null,
   reward_panes         varchar(90),
   reward_ans           varchar(90),
   primary key (reward_ID)
);

/*==============================================================*/
/* Table: room                                                  */
/*==============================================================*/
create table room
(
   room_ID              int not null,
   room_start_time      time,
   room_level           int,
   room_owner           varchar(20),
   primary key (room_ID)
);

/*==============================================================*/
/* Table: room_member                                           */
/*==============================================================*/
create table room_member
(
   room_ID              int not null,
   user_ID              varchar(20) not null,
   primary key (room_ID, user_ID)
);

/*==============================================================*/
/* Table: solve                                                 */
/*==============================================================*/
create table solve
(
   problem_ID           varchar(20) not null,
   user_ID              varchar(20) not null,
   reward_ID            varchar(20) not null,
   timecost             int,
   primary key (problem_ID, user_ID, reward_ID)
);

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table user
(
   user_ID              varchar(20) not null,
   user_pwd             varchar(20),
   user_level           int,
   user_profile_photo longblob,
   user_age             int,
   user_nickname        varchar(20),
   user_sex             blob,
   user_education       varchar(20),
   user_rank            int,
   primary key (user_ID)
);

/*==============================================================*/
/* Table: user_blog_like                                        */
/*==============================================================*/
create table user_blog_like
(
   problem_ID           varchar(20) not null,
   blog_ID              varchar(20) not null,
   user_ID              varchar(20) not null,
   primary key (problem_ID, blog_ID, user_ID)
);

/*==============================================================*/
/* Table: user_commends_like                                    */
/*==============================================================*/
create table user_commends_like
(
   user_ID              varchar(20) not null,
   blog_commends_ID     varchar(20) not null,
   primary key (user_ID, blog_commends_ID)
);

alter table Relationship_3 add constraint FK_Relationship_3 foreign key (user_ID)
      references user (user_ID) on delete restrict on update restrict;

alter table Relationship_3 add constraint FK_Relationship_4 foreign key (use_user_ID)
      references user (user_ID) on delete restrict on update restrict;

alter table blog_commends add constraint FK_Relationship_5 foreign key (problem_ID, blog_ID)
      references blogs (problem_ID, blog_ID) on delete restrict on update restrict;

alter table blogs add constraint FK_Relationship_2 foreign key (problem_ID)
      references problem (problem_ID) on delete restrict on update restrict;

alter table room_member add constraint FK_room_member foreign key (room_ID)
      references room (room_ID) on delete restrict on update restrict;

alter table room_member add constraint FK_room_member2 foreign key (user_ID)
      references user (user_ID) on delete restrict on update restrict;

alter table solve add constraint FK_solve foreign key (problem_ID)
      references problem (problem_ID) on delete restrict on update restrict;

alter table solve add constraint FK_solve2 foreign key (user_ID)
      references user (user_ID) on delete restrict on update restrict;

alter table solve add constraint FK_solve3 foreign key (reward_ID)
      references reward (reward_ID) on delete restrict on update restrict;

alter table user_blog_like add constraint FK_user_blog_like foreign key (problem_ID, blog_ID)
      references blogs (problem_ID, blog_ID) on delete restrict on update restrict;

alter table user_blog_like add constraint FK_user_blog_like2 foreign key (user_ID)
      references user (user_ID) on delete restrict on update restrict;

alter table user_commends_like add constraint FK_user_commends_like foreign key (user_ID)
      references user (user_ID) on delete restrict on update restrict;

alter table user_commends_like add constraint FK_user_commends_like2 foreign key (blog_commends_ID)
      references blog_commends (blog_commends_ID) on delete restrict on update restrict;
