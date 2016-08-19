/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2016/8/18 11:41:23                           */
/*==============================================================*/


drop table if exists admin_info;

drop table if exists bed_things;

drop table if exists bedding_info;

drop table if exists building_info;

drop table if exists class;

drop table if exists column_info;

drop table if exists column_keyword;

drop table if exists department;

drop table if exists dorm_area_info;

drop table if exists dorm_basic_info;

drop table if exists dorm_fee_info;

drop table if exists dorm_student_info;

drop table if exists dorm_welcome_info;

drop table if exists floor_info;

drop table if exists gather_info;

drop table if exists grade;

drop table if exists major;

drop table if exists major_tuition;

drop table if exists medical_fee_info;

drop table if exists military_training_things;

drop table if exists notice_comment;

drop table if exists notice_user;

drop table if exists one_card_pass;

drop table if exists pay_the_fees;

drop table if exists power_info;

drop table if exists problems;

drop table if exists problems_theme;

drop table if exists publish_info;

drop table if exists recruit_info;

drop table if exists role_info;

drop table if exists student;

drop table if exists student_status;

drop table if exists study_product_info;

drop table if exists study_things;

drop table if exists supplier;

drop table if exists training_products_information;

drop table if exists user_info;

drop table if exists user_role_info;

/*==============================================================*/
/* Table: admin_info                                            */
/*==============================================================*/
create table admin_info
(
   ai_id                bigint not null,
   ai_name              varchar(40),
   ai_create_date       timestamp,
   phone                bigint,
   primary key (ai_id)
);

alter table admin_info comment '根据实际情况再做修改';

/*==============================================================*/
/* Table: bed_things                                            */
/*==============================================================*/
create table bed_things
(
   student_id           int(32) not null,
   reserve              int default 0,
   get                  int default 0,
   primary key (student_id)
);

/*==============================================================*/
/* Table: bedding_info                                          */
/*==============================================================*/
create table bedding_info
(
   bedding_id           int not null,
   bedding_name         varchar(50),
   bedding_price        double,
   bedding_para         varchar(50),
   bedding_factory      int(32),
   primary key (bedding_id)
);

/*==============================================================*/
/* Table: building_info                                         */
/*==============================================================*/
create table building_info
(
   building_id          int not null,
   building_name        varchar(20),
   area_id              int(32),
   floor_count          int,
   primary key (building_id)
);

/*==============================================================*/
/* Table: class                                                 */
/*==============================================================*/
create table class
(
   id                   int not null,
   major_id             int not null comment '专业id',
   name                 varchar(50) not null,
   teacher              varchar(50),
   stu_num              int,
   primary key (id)
);

/*==============================================================*/
/* Table: column_info                                           */
/*==============================================================*/
create table column_info
(
   ci_id                int not null,
   ci_name              varchar(40),
   ci_alias_name        varchar(40),
   ci_ico               longblob,
   ci_parent_id         int,
   primary key (ci_id)
);

alter table column_info comment '栏目信息表';

/*==============================================================*/
/* Table: column_keyword                                        */
/*==============================================================*/
create table column_keyword
(
   ck_id                bigint not null,
   ci_id                int,
   ck_keyword           varchar(40),
   primary key (ck_id)
);

/*==============================================================*/
/* Table: department                                            */
/*==============================================================*/
create table department
(
   id                   int not null comment '学院id',
   name                 varchar(50) not null comment '学院名',
   president            varchar(50) comment '院长',
   vice_president       varchar(50) comment '副院长',
   address              varchar(200) comment '学院地址
            ',
   phone                int comment '学院电话',
   zip_code             varchar(20) comment '学院邮政编码',
   network_address      varchar(100) comment '学院网址',
   description          varchar(4000) comment '学院简介',
   primary key (id)
);

/*==============================================================*/
/* Table: dorm_area_info                                        */
/*==============================================================*/
create table dorm_area_info
(
   area_id              int(32) not null,
   area_name            varchar(20),
   building_count       int,
   primary key (area_id)
);

/*==============================================================*/
/* Table: dorm_basic_info                                       */
/*==============================================================*/
create table dorm_basic_info
(
   dorm_id              int not null,
   dorm_name            varchar(20),
   bedding_count        int,
   floor_id             int,
   primary key (dorm_id)
);

/*==============================================================*/
/* Table: dorm_fee_info                                         */
/*==============================================================*/
create table dorm_fee_info
(
   dorm_fee_id          int not null,
   dorm_fee_type        varchar(50),
   dorm_fee             double,
   dorm_area            int,
   dorm_building        varchar(50),
   colleage             varchar(50),
   major                varchar(50),
   primary key (dorm_fee_id)
);

/*==============================================================*/
/* Table: dorm_student_info                                     */
/*==============================================================*/
create table dorm_student_info
(
   dorm_student_id      int not null,
   dorm_id              int,
   student_id           int,
   have_product         int,
   primary key (dorm_student_id)
);

/*==============================================================*/
/* Table: dorm_welcome_info                                     */
/*==============================================================*/
create table dorm_welcome_info
(
   dorm_res_id          int not null,
   res_number           int,
   res_name             varchar(20),
   dorm_id              int,
   primary key (dorm_res_id)
);

/*==============================================================*/
/* Table: floor_info                                            */
/*==============================================================*/
create table floor_info
(
   floor_id             int not null,
   floor_num            int,
   building_id          int,
   dorm_count           int,
   primary key (floor_id)
);

/*==============================================================*/
/* Table: gather_info                                           */
/*==============================================================*/
create table gather_info
(
   gi_id                bigint not null,
   gi_title             varchar(40),
   gi_content           varchar(10000),
   gi_noticed_date      timestamp comment '被发布的时间',
   gi_article_link      varchar(200),
   primary key (gi_id)
);

alter table gather_info comment '信息采集记录表';

/*==============================================================*/
/* Table: grade                                                 */
/*==============================================================*/
create table grade
(
   id                   int not null comment '年级信息表id',
   name                 varchar(50) not null comment '年级名',
   stu_num              int comment '年级学生人数',
   group_num            int,
   primary key (id)
);

/*==============================================================*/
/* Table: major                                                 */
/*==============================================================*/
create table major
(
   id                   int not null comment '专业id',
   department_id        int not null comment '学院id',
   group_id             int not null comment '年级信息表id',
   name                 varchar(50) not null comment '专业名字',
   introduce            varchar(1000) comment '专业简介',
   primary key (id)
);

/*==============================================================*/
/* Table: major_tuition                                         */
/*==============================================================*/
create table major_tuition
(
   tuition_id           int not null,
   college_name         varchar(50),
   major_name           varchar(50),
   tuition_fee          double,
   primary key (tuition_id)
);

/*==============================================================*/
/* Table: medical_fee_info                                      */
/*==============================================================*/
create table medical_fee_info
(
   project_id           int not null,
   project_name         varchar(50),
   project_fee          double,
   medical_section      varchar(50),
   refund_section       varchar(50),
   primary key (project_id)
);

/*==============================================================*/
/* Table: military_training_things                              */
/*==============================================================*/
create table military_training_things
(
   student_id           int not null,
   reserve              int default 0,
   get                  int default 0,
   clothes              int default 0,
   shoes                int default 0,
   clothes_size         varchar(10),
   shoes_size           int,
   primary key (student_id)
);

/*==============================================================*/
/* Table: notice_comment                                        */
/*==============================================================*/
create table notice_comment
(
   nc_id                bigint not null,
   nu_id                bigint,
   pi_id                bigint,
   nc_content           varchar(200),
   nc_create_date       timestamp,
   primary key (nc_id)
);

/*==============================================================*/
/* Table: notice_user                                           */
/*==============================================================*/
create table notice_user
(
   nu_id                bigint not null,
   nu_name              varchar(60),
   nu_phone             bigint,
   nu_email             varchar(60),
   nu_create_date       timestamp,
   primary key (nu_id)
);

alter table notice_user comment '游客信息表';

/*==============================================================*/
/* Table: one_card_pass                                         */
/*==============================================================*/
create table one_card_pass
(
   one_card_pass_id     int(32) not null,
   student_id           int(32),
   credit_card          int(32),
   primary key (one_card_pass_id)
);

/*==============================================================*/
/* Table: pay_the_fees                                          */
/*==============================================================*/
create table pay_the_fees
(
   student_id           int not null,
   had_paid_the_fee     int,
   schooling            int,
   textbooks            int,
   administrative_fee   int,
   medical_insurance_fee int,
   militare_training_clothes_fee int,
   primary key (student_id)
);

/*==============================================================*/
/* Table: power_info                                            */
/*==============================================================*/
create table power_info
(
   power_id             int not null auto_increment,
   role_id              int,
   power_name           varchar(50),
   power_level          int,
   power_description    text,
   primary key (power_id)
);

/*==============================================================*/
/* Table: problems                                              */
/*==============================================================*/
create table problems
(
   problemsID           int not null,
   studentID            int,
   time                 datetime,
   content              text(1000),
   problemsThemeID      int,
   audit                varchar(100) default '未审查' comment '未审查、已审查',
   authority            varchar(100) default '不限' comment '不限、问题不显示、全部可见、仅学生可见',
   isdel                int default 0 comment '1为删除状态',
   answer               text(1000),
   ansTime              datetime,
   ansPersonID          int,
   primary key (problemsID)
);

/*==============================================================*/
/* Table: problems_theme                                        */
/*==============================================================*/
create table problems_theme
(
   problemsThemeID      int not null,
   name                 varchar(100),
   primary key (problemsThemeID)
);

/*==============================================================*/
/* Table: publish_info                                          */
/*==============================================================*/
create table publish_info
(
   pi_id                bigint not null,
   ci_id                int,
   pi_title             varchar(100),
   ai_id                bigint,
   pi_date              date,
   pi_content           varchar(2000),
   pi_reprint_flag      smallint comment '0:原创
            1:转载',
   primary key (pi_id)
);

alter table publish_info comment '发布信息表';

/*==============================================================*/
/* Table: recruit_info                                          */
/*==============================================================*/
create table recruit_info
(
   recruit_id           int(32) not null,
   student_id           int(32),
   candidate_number     varchar(32),
   academy_id           int(32),
   major_id             int(32),
   report_date          varchar(20),
   primary key (recruit_id)
);

/*==============================================================*/
/* Table: role_info                                             */
/*==============================================================*/
create table role_info
(
   role_id              int not null auto_increment,
   role_name            varchar(20),
   role_pid             int,
   description          varchar(200),
   primary key (role_id)
);

/*==============================================================*/
/* Table: student                                               */
/*==============================================================*/
create table student
(
   stu_id               int(32) not null,
   student_name         varchar(20),
   class_id             int(32),
   id                   int(32),
   age                  int(3),
   people               varchar(10),
   birthdate            varchar(15),
   enroll_state         varchar(10),
   home                 varchar(50),
   phone_number         varchar(20),
   father_name          varchar(20),
   father_work          varchar(50),
   father_phone         varchar(20),
   mother_name          varchar(30),
   mother_work          varchar(50),
   mother_phone         varchar(20),
   primary key (stu_id)
);

/*==============================================================*/
/* Table: student_status                                        */
/*==============================================================*/
create table student_status
(
   student_id           int not null,
   print_report         int default 0,
   one_card             int default 0,
   medical_insurance    int default 0,
   department_register  int default 0,
   class_register       int default 0,
   file_submit          int default 0,
   getkey               int default 0,
   primary key (student_id)
);

/*==============================================================*/
/* Table: study_product_info                                    */
/*==============================================================*/
create table study_product_info
(
   product_id           int not null,
   product_name         varchar(50),
   product_parameter    text,
   product_price        double,
   product_manufaturer  int(32),
   primary key (product_id)
);

/*==============================================================*/
/* Table: study_things                                          */
/*==============================================================*/
create table study_things
(
   student_id           int not null,
   reserve              int default 0,
   get                  int default 0,
   primary key (student_id)
);

/*==============================================================*/
/* Table: supplier                                              */
/*==============================================================*/
create table supplier
(
   bedding_supplier_id  int(32) not null,
   suppiler_name        varchar(50),
   company_addr         varchar(50),
   comp_phone           varchar(30),
   owner_name           varchar(20),
   supplier_type        varchar(10),
   primary key (bedding_supplier_id)
);

/*==============================================================*/
/* Table: training_products_information                         */
/*==============================================================*/
create table training_products_information
(
   product_id           int not null,
   product_name         varchar(50),
   product_parameter    text,
   product_price        double,
   product_manufacturer int(32),
   primary key (product_id)
);

/*==============================================================*/
/* Table: user_info                                             */
/*==============================================================*/
create table user_info
(
   user_id              int not null auto_increment,
   user_name            varchar(20),
   age                  int,
   pwd                  varchar(60),
   primary key (user_id)
);

/*==============================================================*/
/* Table: user_role_info                                        */
/*==============================================================*/
create table user_role_info
(
   user_role_id         int not null auto_increment,
   user_id              int,
   role_id              int,
   primary key (user_role_id)
);

alter table bed_things add constraint FK_Reference_27 foreign key (student_id)
      references student (stu_id) on delete restrict on update restrict;

alter table bedding_info add constraint FK_Reference_14 foreign key (bedding_factory)
      references supplier (bedding_supplier_id) on delete restrict on update restrict;

alter table building_info add constraint FK_Reference_1 foreign key (area_id)
      references dorm_area_info (area_id) on delete restrict on update restrict;

alter table class add constraint FK_Reference_2 foreign key (major_id)
      references major (id) on delete restrict on update restrict;

alter table column_info add constraint FK_Reference_40 foreign key (ci_parent_id)
      references column_info (ci_id) on delete restrict on update restrict;

alter table column_keyword add constraint FK_Reference_7 foreign key (ci_id)
      references column_info (ci_id) on delete restrict on update restrict;

alter table dorm_basic_info add constraint FK_Reference_3 foreign key (floor_id)
      references floor_info (floor_id) on delete restrict on update restrict;

alter table dorm_fee_info add constraint FK_Reference_15 foreign key (dorm_area)
      references dorm_area_info (area_id) on delete restrict on update restrict;

alter table dorm_student_info add constraint FK_Reference_11 foreign key (dorm_student_id)
      references student (stu_id) on delete restrict on update restrict;

alter table dorm_student_info add constraint FK_Reference_4 foreign key (dorm_id)
      references dorm_basic_info (dorm_id) on delete restrict on update restrict;

alter table dorm_welcome_info add constraint FK_Reference_45 foreign key (dorm_id)
      references dorm_basic_info (dorm_id) on delete restrict on update restrict;

alter table floor_info add constraint FK_Reference_42 foreign key (building_id)
      references building_info (building_id) on delete restrict on update restrict;

alter table major add constraint FK_Reference_34 foreign key (group_id)
      references grade (id) on delete restrict on update restrict;

alter table major add constraint FK_Reference_43 foreign key (department_id)
      references department (id) on delete restrict on update restrict;

alter table military_training_things add constraint FK_Reference_31 foreign key (student_id)
      references student (stu_id) on delete restrict on update restrict;

alter table notice_comment add constraint FK_Reference_8 foreign key (nu_id)
      references notice_user (nu_id) on delete restrict on update restrict;

alter table notice_comment add constraint FK_Reference_9 foreign key (pi_id)
      references publish_info (pi_id) on delete restrict on update restrict;

alter table one_card_pass add constraint FK_Reference_51 foreign key (student_id)
      references student (stu_id) on delete restrict on update restrict;

alter table pay_the_fees add constraint FK_Reference_29 foreign key (student_id)
      references student (stu_id) on delete restrict on update restrict;

alter table power_info add constraint FK_Reference_53 foreign key (role_id)
      references role_info (role_id) on delete restrict on update restrict;

alter table problems add constraint FK_Reference_32 foreign key (studentID)
      references student (stu_id) on delete restrict on update restrict;

alter table problems add constraint FK_Reference_33 foreign key (ansPersonID)
      references user_info (user_id) on delete restrict on update restrict;

alter table problems add constraint FK_Reference_61 foreign key (problemsThemeID)
      references problems_theme (problemsThemeID) on delete restrict on update restrict;

alter table publish_info add constraint FK_Reference_10 foreign key (ai_id)
      references admin_info (ai_id) on delete restrict on update restrict;

alter table publish_info add constraint FK_Reference_6 foreign key (ci_id)
      references column_info (ci_id) on delete restrict on update restrict;

alter table recruit_info add constraint FK_Reference_62 foreign key (student_id)
      references student (stu_id) on delete restrict on update restrict;

alter table student add constraint FK_Reference_35 foreign key (class_id)
      references class (id) on delete restrict on update restrict;

alter table student_status add constraint FK_Reference_30 foreign key (student_id)
      references student (stu_id) on delete restrict on update restrict;

alter table study_product_info add constraint FK_Reference_13 foreign key (product_manufaturer)
      references supplier (bedding_supplier_id) on delete restrict on update restrict;

alter table study_things add constraint FK_Reference_28 foreign key (student_id)
      references student (stu_id) on delete restrict on update restrict;

alter table training_products_information add constraint FK_Reference_12 foreign key (product_manufacturer)
      references supplier (bedding_supplier_id) on delete restrict on update restrict;

alter table user_role_info add constraint FK_Reference_71 foreign key (user_id)
      references user_info (user_id) on delete restrict on update restrict;

alter table user_role_info add constraint FK_Reference_72 foreign key (role_id)
      references role_info (role_id) on delete restrict on update restrict;

