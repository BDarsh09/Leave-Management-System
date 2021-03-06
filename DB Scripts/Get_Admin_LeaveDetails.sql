CREATE OR REPLACE PROCEDURE GET_ADMIN_LEAVE(
	
	E_DISPLAY OUT SYS_REFCURSOR 	
)
AS
BEGIN
OPEN E_DISPLAY FOR SELECT R.EMP_ID,R.EMP_NAME,L.LEAVE_TYPE,L.LEAVE_START,L.LEAVE_END,L.LEAVE_DAYS,L.LEAVE_DESCRIPTION,L.LEAVE_STATUS,L.LEAVE_BALANCE
FROM REGISTERTABLE R INNER JOIN LEAVETABLE L ON R.EMP_ID = L.EMP_ID WHERE L.LEAVE_STATUS = 'Applied' OR L.LEAVE_STATUS = 'Cancel Applied';
COMMIT;
END;
/