ALTER TABLE MOUBIENDBA.COLLECTION
 DROP PRIMARY KEY CASCADE;

DROP TABLE MOUBIENDBA.COLLECTION CASCADE CONSTRAINTS;

CREATE TABLE MOUBIENDBA.COLLECTION
(
  COLLETION_ID    NUMBER,
  COLLECTIONTYPE  VARCHAR2(100 BYTE),
  DESCRIPTION     VARCHAR2(250 BYTE),
  ADDREASS        VARCHAR2(100 BYTE),
  PHONENUMBER     NUMBER,
  CONTACTNAME     VARCHAR2(50 BYTE)
)
;


CREATE UNIQUE INDEX MOUBIENDBA.COLLECTION_PK ON MOUBIENDBA.COLLECTION
(COLLETION_ID)
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

ALTER TABLE MOUBIENDBA.COLLECTION ADD (
  CONSTRAINT COLLECTION_PK
  PRIMARY KEY
  (COLLETION_ID)
  USING INDEX MOUBIENDBA.COLLECTION_PK
  ENABLE VALIDATE);
  
  SET DEFINE OFF;
Insert into MOUBIENDBA.COLLECTION
   (COLLETION_ID, COLLECTIONTYPE, DESCRIPTION, ADDREASS, PHONENUMBER, 
    CONTACTNAME)
 Values
   (1, 'ROYAL COLLECTION', 'Ut efficitur, risus ac blandit volutpat, ante augue feugiat nisl, sed ullamcorper lectus risus interdum nibh. Donec ex orci, auctor malesuada posuere et, consectetur vel tortor', 'jeddah', 96654646543, 
    'Ali');
Insert into MOUBIENDBA.COLLECTION
   (COLLETION_ID, COLLECTIONTYPE, DESCRIPTION, ADDREASS, PHONENUMBER, 
    CONTACTNAME)
 Values
   (2, 'MAGIC COLLECTION', 'Ut efficitur, risus ac blandit volutpat, ante augue feugiat nisl, sed ullamcorper lectus risus interdum nibh. Donec ex orci, auctor malesuada posuere et, consectetur vel tortor', 'RIYAD', 96654646543, 
    'Ali');
COMMIT;

  
