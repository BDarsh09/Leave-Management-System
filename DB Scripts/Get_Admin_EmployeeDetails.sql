CREATE OR REPLACE PROCEDURE GET_EMPLOYEES(
	
	E_DISPLAY OUT SYS_REFCURSOR
)
AS
BEGIN
OPEN E_DISPLAY FOR SELECT EMP_ID,EMP_NAME,USERTYPE,GENDER,MOBILE,EMAIL,DATEOFBIRTH,ADDRESS,CITY,EMP_STATE FROM REGISTERTABLE WHERE USERTYPE = 'Employee';
COMMIT;
END;
/