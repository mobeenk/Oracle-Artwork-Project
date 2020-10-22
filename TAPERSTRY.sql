ALTER TABLE MOUBIENDBA.TAPESTRY
 DROP PRIMARY KEY CASCADE;

DROP TABLE MOUBIENDBA.TAPESTRY CASCADE CONSTRAINTS;

CREATE TABLE MOUBIENDBA.TAPESTRY
(
  TAPESTRY_ID    NUMBER,
  ARTWORK_ID_FK  NUMBER,
  WRAP_MATERIAL  VARCHAR2(50 BYTE),
  WEFT_MATERIAL  VARCHAR2(50 BYTE)
)
;

CREATE UNIQUE INDEX MOUBIENDBA.TAPESTRY_PK ON MOUBIENDBA.TAPESTRY
(TAPESTRY_ID)
LOGGING
TABLESPACE TBS_PERM_01
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

ALTER TABLE MOUBIENDBA.TAPESTRY ADD (
  CONSTRAINT TAPESTRY_PK
  PRIMARY KEY
  (TAPESTRY_ID)
  USING INDEX MOUBIENDBA.TAPESTRY_PK
  ENABLE VALIDATE);

ALTER TABLE MOUBIENDBA.TAPESTRY ADD (
  CONSTRAINT TAPESTRY_R01 
  FOREIGN KEY (ARTWORK_ID_FK) 
  REFERENCES MOUBIENDBA.ARTWORK (ARTWORK_ID)
  ENABLE VALIDATE);
  
  
  SET DEFINE OFF;
Insert into MOUBIENDBA.TAPESTRY
   (TAPESTRY_ID, ARTWORK_ID_FK, WRAP_MATERIAL, WEFT_MATERIAL)
 Values
   (1, 6, 'Cotton', 'Fiber');
COMMIT;

