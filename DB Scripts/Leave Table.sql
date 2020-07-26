CREATE TABLE LEAVETABLE 
(
    EMP_ID NUMBER(10) NOT NULL,
    LEAVE_TYPE VARCHAR2(10) NOT NULL,
    LEAVE_START DATE NOT NULL,
    LEAVE_END DATE NOT NULL,
    LEAVE_DAYS NUMBER(2) NOT NULL,
    LEAVE_DESCRIPTION VARCHAR2(130) NOT NULL,
    LEAVE_STATUS VARCHAR2(20)
);