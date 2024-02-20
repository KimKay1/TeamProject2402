-- SCOTT.MEMBER_TEAMPRO definition

CREATE TABLE "SCOTT"."MEMBER_TEAMPRO"
(	"ID" VARCHAR2(10) NOT NULL ENABLE,
     "PASS" VARCHAR2(10) NOT NULL ENABLE,
     "NAME" VARCHAR2(30) NOT NULL ENABLE,
     "REGIDATE" DATE DEFAULT sysdate NOT NULL ENABLE
) SEGMENT CREATION IMMEDIATE
    PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
    NOCOMPRESS LOGGING
    STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
            PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
            BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
    TABLESPACE "USERS" ;

COMMENT ON COLUMN SCOTT.MEMBER_TEAMPRO.ID IS '아이디';
COMMENT ON COLUMN SCOTT.MEMBER_TEAMPRO.PASS IS '패스워드';
COMMENT ON COLUMN SCOTT.MEMBER_TEAMPRO.NAME IS '이름';
COMMENT ON COLUMN SCOTT.MEMBER_TEAMPRO.REGIDATE IS '가입날짜';

CREATE SEQUENCE seq_teampro_num
    INCREMENT BY 1 -- 1씩증가
    START WITH 1 -- 1부터 시작
    MINVALUE 1 -- 최소값 1
    nomaxvalue -- 최대값 무한대
	nocycle -- 순환 안함
	nocache; -- 캐시 안함
