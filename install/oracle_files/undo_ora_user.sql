-- sys / as sysdba 로 실행

-- ora_user로 접속되어 있는 상태에서는 ora_user가 삭제되지 않습니다.
-- 만약 다른 client에서 접속하고 계시다면 ora_user의 접속을 종료해주세요.
-- 또는, agent.properties 파일의 ora_user정보를 올바르게 입력한 상태로 ./startObserver.sh을 실행하여 sjmon에 접속하셨다면, ./stopObserver.sh로 종료하고 시행시켜 주십시오.


DROP VIEW SJMON$KSUSGSTA;
DROP VIEW SJMON$KSUSE;
DROP VIEW SJMON$KSUPR;
DROP VIEW SJMON$KSLWT;
DROP VIEW SJMON$KSLSCS;
DROP VIEW SJMON$KSLEI;
DROP VIEW SJMON$KSLED;
DROP VIEW SJMON$KQFTA;
DROP VIEW SJMON$KQFCO;

DROP USER ora_user;