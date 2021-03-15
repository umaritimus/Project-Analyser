SELECT C.PROJECTNAME,
  A.PNLNAME,
  A.PNLFLDID,
  A.FIELDNUM,
  A.PNLFIELDNAME,
  A.LABEL_ID,
  A.LBLTEXT,
  A.RECNAME,
  A.FIELDNAME,
  B.PLHTYPE,
  PLACEHOLDER
FROM PSPNLFIELD A,
  PSPNLFIELDEXT B,
  PSPROJECTITEM C
WHERE ( A.PNLNAME = B.PNLNAME
AND A.PNLFLDID    = B.PNLFLDID
AND A.PNLNAME     = C.OBJECTVALUE1
AND C.OBJECTTYPE  = 5
AND PLHTYPE       = 1)