/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2020/12/4 16:37:21                           */
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
   Problem_solved       bool,
   Problem_pane1        int,
   Problem_pane2        int,
   Problem_pane3        int,
   Problem_pane4        int,
   Problem_pane5        int,
   Problem_pane6        int,
   Problem_pane7        int,
   Problem_pane8        int,
   Problem_pane9        int,
   Problem_pane10       int,
   Problem_pane11       int,
   Problem_pane12       int,
   Problem_pane13       int,
   Problem_pane14       int,
   Problem_pane15       int,
   Problem_pane16       int,
   Problem_pane17       int,
   Problem_pane18       int,
   Problem_pane19       int,
   Problem_pane20       int,
   Problem_pane21       int,
   Problem_pane22       int,
   Problem_pane23       int,
   Problem_pane24       int,
   Problem_pane25       int,
   Problem_pane26       int,
   Problem_pane27       int,
   Problem_pane28       int,
   Problem_pane29       int,
   Problem_pane30       int,
   Problem_pane31       int,
   Problem_pane32       int,
   Problem_pane33       int,
   Problem_pane34       int,
   Problem_pane35       int,
   Problem_pane36       int,
   Problem_pane37       int,
   Problem_pane38       int,
   Problem_pane39       int,
   Problem_pane40       int,
   Problem_pane41       int,
   Problem_pane42       int,
   Problem_pane43       int,
   Problem_pane44       int,
   Problem_pane45       int,
   Problem_pane46       int,
   Problem_pane47       int,
   Problem_pane48       int,
   Problem_pane49       int,
   Problem_pane50       int,
   Problem_pane51       int,
   Problem_pane52       int,
   Problem_pane53       int,
   Problem_pane54       int,
   Problem_pane55       int,
   Problem_pane56       int,
   Problem_pane57       int,
   Problem_pane58       int,
   Problem_pane59       int,
   Problem_pane60       int,
   Problem_pane61       int,
   Problem_pane62       int,
   Problem_pane63       int,
   Problem_pane64       int,
   Problem_pane65       int,
   Problem_pane66       int,
   Problem_pane67       int,
   Problem_pane68       int,
   Problem_pane69       int,
   Problem_pane70       int,
   Problem_pane71       int,
   Problem_pane72       int,
   Problem_pane73       int,
   Problem_pane74       int,
   Problem_pane75       int,
   Problem_pane76       int,
   Problem_pane77       int,
   Problem_pane78       int,
   Problem_pane79       int,
   Problem_pane80       int,
   Problem_pane81       int,
   Problem_ans1         int,
   Problem_ans2         int,
   Problem_ans3      	int,
   Problem_ans4         int,
   Problem_ans5   	    int,
   Problem_ans6         int,
   Problem_ans7         int,
   Problem_ans8         int,
   Problem_ans9         int,
   Problem_ans10        int,
   Problem_ans11        int,
   Problem_ans12        int,
   Problem_ans13        int,
   Problem_ans14        int,
   Problem_ans15        int,
   Problem_ans16        int,
   Problem_ans17        int,
   Problem_ans18        int,
   Problem_ans19        int,
   Problem_ans20        int,
   Problem_ans21        int,
   Problem_ans22        int,
   Problem_ans23        int,
   Problem_ans24        int,
   Problem_ans25        int,
   Problem_ans26        int,
   Problem_ans27        int,
   Problem_ans28        int,
   Problem_ans29        int,
   Problem_ans30        int,
   Problem_ans31        int,
   Problem_ans32        int,
   Problem_ans33        int,
   Problem_ans34        int,
   Problem_ans35        int,
   Problem_ans36        int,
   Problem_ans37        int,
   Problem_ans38        int,
   Problem_ans39        int,
   Problem_ans40        int,
   Problem_ans41        int,
   Problem_ans42        int,
   Problem_ans43        int,
   Problem_ans44        int,
   Problem_ans45        int,
   Problem_ans46        int,
   Problem_ans47        int,
   Problem_ans48        int,
   Problem_ans49        int,
   Problem_ans50        int,
   Problem_ans51        int,
   Problem_ans52        int,
   Problem_ans53        int,
   Problem_ans54        int,
   Problem_ans55        int,
   Problem_ans56        int,
   Problem_ans57        int,
   Problem_ans58        int,
   Problem_ans59        int,
   Problem_ans60        int,
   Problem_ans61        int,
   Problem_ans62        int,
   Problem_ans63        int,
   Problem_ans64        int,
   Problem_ans65        int,
   Problem_ans66        int,
   Problem_ans67        int,
   Problem_ans68        int,
   Problem_ans69        int,
   Problem_ans70        int,
   Problem_ans71        int,
   Problem_ans72        int,
   Problem_ans73        int,
   Problem_ans74        int,
   Problem_ans75        int,
   Problem_ans76        int,
   Problem_ans77        int,
   Problem_ans78        int,
   Problem_ans79        int,
   Problem_ans80        int,
   Problem_ans81        int,
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

