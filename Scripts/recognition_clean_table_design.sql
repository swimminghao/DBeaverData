create table asgard_demeter.dem_recognition_data_cleaning_task
(
    id                       int auto_increment primary key,
    task_code                varchar(32)   not null comment '任务编号',
    process_status           tinyint       not null comment '处理状态：0:处理中,1:已处理',
    report_source varchar(1024) not null comment '报告来源、机构等',
    remark                   varchar(255)  null comment '处理备注',
    reson                    varchar(1024) null comment '处理原因',
    create_time              datetime      not null comment '创建时间',
    update_time              datetime      not null comment '更新时间'
);

create index idx_group_code
    on asgard_demeter.dem_repeat_report_task (group_code);

create index idx_task_code
    on asgard_demeter.dem_repeat_report_task (task_code);

create index idx_update_time
    on asgard_demeter.dem_repeat_report_task (update_time);


create table asgard_demeter.dem_recognition_data_cleaning_task_detail
(
    id int auto_increment primary key,
    task_code                varchar(32)   not null comment '任务编号',
    group_code               varchar(32)   not null comment '业务编号',
    recognition_status           tinyint       not null comment '处理状态：-1:FAILED,0:INIT,1:TODO,2:SUCESS',
    cleaned_recognition_code varchar(60)   null comment '清洗之后的识别编号',
    template_type varchar(127) null comment '使用模板名',
    remark                   varchar(255)  null comment '处理备注',
    reson                    varchar(1024) null comment '处理原因',
    create_time              datetime      not null comment '创建时间',
    update_time              datetime      not null comment '更新时间'
);

create index idx_group_code
    on asgard_demeter.dem_repeat_report_task (group_code);

create index idx_task_code
    on asgard_demeter.dem_repeat_report_task (task_code);

create index idx_update_time
    on asgard_demeter.dem_repeat_report_task (update_time);