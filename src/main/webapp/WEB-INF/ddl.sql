-- SCOTT.MEMBER_TEAMPRO definition

CREATE TABLE "SCOTT"."MEMBER_TEAMPRO"
(	"ID" VARCHAR2(10) NOT NULL ENABLE,
     "PASS" VARCHAR2(10) NOT NULL ENABLE,
     "NAME" VARCHAR2(30) NOT NULL ENABLE,
     "REGIDATE" DATE DEFAULT sysdate NOT NULL ENABLE
) SEGMENT CREATION DEFERRED
    PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
    NOCOMPRESS LOGGING
    TABLESPACE "USERS" ;

COMMENT ON COLUMN SCOTT.MEMBER_TEAMPRO.ID IS '아이디';
COMMENT ON COLUMN SCOTT.MEMBER_TEAMPRO.PASS IS '패스워드';
COMMENT ON COLUMN SCOTT.MEMBER_TEAMPRO.NAME IS '이름';
COMMENT ON COLUMN SCOTT.MEMBER_TEAMPRO.REGIDATE IS '가입날짜';