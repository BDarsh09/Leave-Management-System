CREATE OR REPLACE PROCEDURE UPDATE_LEAVEBALANCE
IS
BEGIN
	UPDATE LEAVETABLE SET LEAVE_BALANCE = LEAVE_BALANCE + 1;
COMMIT;
END;
/