select
    distinct(t1.id),
            t1.group_code,
#             t3.file_name,
#             t3.file_code,
#             t3.doc_source,
#             t3.create_time,
#             t3.file_type,
#             t3.channels,
            t1.remark
from

    dem_recognition_data_cleaning_task_detail t1
        left join
    dem_group_map_file t2

    on t1.group_code  = t2.group_code;

select
    distinct(t1.id),
            t1.group_code,
#             t3.file_name,
#             t3.file_code,
#             t3.doc_source,
#             t3.create_time,
#             t3.file_type,
#             t3.channels,
            t1.remark
from
    dem_group_map_file t2
        left join
        dem_recognition_data_cleaning_task_detail t1
    on t1.group_code  = t2.group_code;