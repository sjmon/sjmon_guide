-- 11g R2 이하
-- sys as sysdba 상태에서 수행
create user ora_user identified by "ora123";
alter user ora_user account unlock;
grant create session to ora_user;

create view SJMON$KSUSGSTA as select * from X$KSUSGSTA;
create view SJMON$KSUSE as select * from X$KSUSE;
create view SJMON$KSUPR as select * from X$KSUPR;
create view SJMON$KSLWT as select * from X$KSLWT;
create view SJMON$KSLSCS as select * from X$KSLSCS;
create view SJMON$KSLEI as select * from X$KSLEI;
create view SJMON$KSLED as select * from X$KSLED;
create view SJMON$KQFTA as select * from X$KQFTA;
create view SJMON$KQFCO as select * from X$KQFCO;

grant select on SJMON$KSUSGSTA to ora_user;
grant select on SJMON$KSUSE to ora_user;
grant select on SJMON$KSUPR to ora_user;
grant select on SJMON$KSLWT to ora_user;
grant select on SJMON$KSLSCS to ora_user;
grant select on SJMON$KSLEI to ora_user;
grant select on SJMON$KSLED to ora_user;
grant select on SJMON$KQFTA to ora_user;
grant select on SJMON$KQFCO to ora_user;

grant select on gv_$parameter to ora_user;
grant select on v_$parameter to ora_user;
grant select on v_$sys_time_model to ora_user;
grant select on v_$session to ora_user;
grant select on v_$sess_time_model to ora_user;
grant select on v_$process to ora_user;
grant select on v_$sess_io to ora_user;
grant select on dba_data_files to ora_user;
grant select on dba_free_space to ora_user;
grant select on dba_segments to ora_user;
grant select on v_$segment_statistics to ora_user;

grant select on v_$sql to ora_user;
grant select on v_$sqltext_with_newlines to ora_user;
grant select on v_$sql_plan to ora_user;
