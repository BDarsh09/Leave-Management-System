create or replace PROCEDURE CHECK_LOGIN(
    E_USERNAME IN REGISTERTABLE.USERNAME%TYPE,
    E_PASSWORD IN REGISTERTABLE.EMP_PASSWORD%TYPE,
    E_COUNT OUT NUMBER)
AS
BEGIN
    SELECT COUNT(USERNAME) INTO E_COUNT FROM REGISTERTABLE WHERE USERNAME = E_USERNAME AND EMP_PASSWORD = E_PASSWORD;
    COMMIT;
END;
/

BEGIN
    CHECK_LOGIN('aluc','hello');
END;
