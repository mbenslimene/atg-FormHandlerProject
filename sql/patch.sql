connect sys as sysdba/atg;


GRANT SELECT ON sys.dba_pending_transactions TO quickstart;
GRANT SELECT ON sys.pending_trans$ TO quickstart;  
GRANT SELECT ON sys.dba_2pc_pending TO quickstart;
GRANT EXECUTE ON sys.dbms_xa TO quickstart;

