-- 22.05.09 ������ ó���� ������ ���� ����Ŭ �Լ�

-- �ǽ� 6-1 UPPER, LOWERM INITCAP �Լ� ����ϱ�
SELECT ENAME, UPPER(ENAME), LOWER(ENAME), INITCAP(ENAME) 
FROM EMP;

-- �ǽ� 6-2 UPPER �Լ��� ���ڿ� ���ϱ�(��� �̸��� SCOTT�� ������ ã��)
SELECT * 
FROM EMP 
WHERE UPPER(ENAME) = UPPER('scott');

-- �ǽ� 6-3 UPPER �Լ��� ���ڿ� ���ϱ�(��� �̸��� SCOTT �ܾ ������ ������ ã��)
SELECT * 
FROM EMP 
WHERE UPPER(ENAME) LIKE UPPER('%scott%');

-- 1�� ���� ��� �̸��� �빮�ڷ� ��µǵ��� �ڵ带 ä�� ������.
SELECT UPPER(ENAME) 
FROM EMP;

-- LENGTH �Լ� ����ϱ�
-- �ǽ� 6-4 ������ ���� ���ڿ� ���� ���ϱ�.
SELECT ENAME, LENGTH(ENAME) 
FROM EMP;

-- WHERE������ LENGTH �Լ� ����ϱ�
-- �ǽ� 6-5 ��� �̸��� ���̰� 5�̻��� �� ����ϱ�
SELECT ENAME, LENGTH(ENAME) 
FROM EMP 
WHERE LENGTH(ENAME) >= 5;

-- LENGTH �Լ��� LENGTHB �Լ� ���ϱ�
-- �ǽ� 6-6 LENGTH �Լ��� LENGTHB �Լ� ���ϱ�
SELECT LENGTH('�ѱ�'), LENGTHB('�ѱ�') 
FROM DUAL;

-- 1�� ���� ��å �̸��� 6���� �̻��� �����͸� ��µǵ��� �ڵ带 ä�� ������.
SELECT * 
FROM EMP 
WHERE LENGTH(JOB) >= 6;

-- SUBSTR �Լ� ����ϱ�
-- 6-7 SUBSTR �Լ��� ����ϴ� ��
SELECT JOB, SUBSTR(JOB, 1, 2), SUBSTR(JOB, 3, 2), SUBSTR(JOB, 5) 
FROM EMP;

-- 1�� ���� SUBSTR �Լ��� ����Ͽ� EMP ���̺��� ��� ��� �̸���
-- �� ��° ���ں��� ������ ��µǵ��� �ڵ带 ä�� ������.
SELECT SUBSTR(ENAME, 3) 
FROM EMP;

-- SUBSTR �Լ��� �ٸ� �Լ� �Բ� ����ϱ�
-- �ǽ� 6-8 SUBSTR �Լ� �ȿ� �ٸ� �Լ�(LENGTH) �Բ� ����ϱ�
SELECT JOB, 
        SUBSTR(JOB, -LENGTH(JOB)), 
        SUBSTR(JOB, -LENGTH(JOB), 2), 
        SUBSTR(JOB, -3) 
FROM EMP;

-- Ư�� ���� ��ġ ã��
-- �ǽ� 6-9 INSTR �Լ��� ���ڿ� �����Ϳ��� Ư�� ���ڿ� ã��
SELECT INSTR('HELLO, ORACLE!', 'L') AS INSTR_1, 
        INSTR('HELLO, ORACLE!', 'L', 5) AS INSTR_2,
        INSTR('HELLO, ORACLE!', 'L', 2, 2) AS INSTR_3
FROM DUAL;

-- Ư�� ���ڸ� �����ϰ� �ִ� �� ã��
-- �ǽ� 6-10 INSTR �Լ��� ��� �̸��� ���� S�� �ִ� �� ���ϱ�
SELECT *  
FROM EMP 
WHERE INSTR(ENAME, 'S') > 0;

-- �ǽ� 6-11 LIKE �����ڷ� ��� �̸��� ���� S�� �ִ� �� ���ϱ�
SELECT * 
FROM EMP 
WHERE ENAME LIKE '%S%';

-- �ǽ� 6-12 REPLACE �Լ��� ���ڿ� �ȿ� �ִ� Ư�� ���� �ٲٱ�
SELECT '010-1234-5678' AS REPLACE_BEFORE,
        REPLACE('010-1234-5678', '-', ' ') AS REPLACE_1,
        REPLACE('010-1234-5678', '-') AS REPLACE_2
FROM DUAL;

-- �ǽ� 6-13 LPAD, RPAD �Լ� ����Ͽ� ����ϱ�
SELECT 'Oracle',
        LPAD('Oracle', 10, '#') AS LPAD_1,
        RPAD('Oracle', 10, '*') AS RPAD_1,
        LPAD('Oracle', 10) AS LPAD_2,
        RPAD('Oracle', 10) AS RPAD_2
FROM DUAL;

-- �ǽ� 6-14 RPAD �Լ��� ����Ͽ� �������� ���ڸ� * ǥ�÷� ����ϱ�
SELECT 
        RPAD('910329-', 14, '*') RPAD_JMNO,
        RPAD('010-6543-', 13, '*') RPAD_PHONE
FROM DUAL;

-- �ǽ� 6-15 �� �� ���̿� �ݷ�(:) �ְ� �����ϱ�
SELECT CONCAT(EMPNO, ENAME),
        CONCAT(EMPNO, CONCAT(' : ', ENAME))
FROM EMP 
WHERE ENAME = 'SCOTT';

-- �ѹ� �� ������! ���ڿ� �����͸� �����ϴ� || ������
SELECT EMPNO || ENAME,
        EMPNO || ' : ' || ENAME
FROM EMP 
WHERE ENAME = 'SCOTT';

-- TRIM �Լ� ����ϱ�(������ ���ڰ� ���� ��)
-- �ǽ� 6-16 TRIM �Լ��� ���� �����Ͽ� ����ϱ�
SELECT '[' || TRIM(' _ _ORACLE_ _ ') || ']' AS TRIM,
        '[' || TRIM(LEADING FROM ' _ _ORACLE_ _ ') || ']' AS TRIM_LEADING,
        '[' || TRIM(TRAILING FROM ' _ _ORACLE_ _ ') || ']' AS TRIM_TRAILING,
        '[' || TRIM(BOTH FROM ' _ _ORACLE_ _ ') || ']' AS TRIM_BOTH 
FROM DUAL;

-- TRIM �Լ� ����ϱ�(������ ���ڰ� ���� ��)
-- �ǽ� 6-17 TRIM �Լ��� ������ '_' ���� �� ����ϱ�
SELECT '[' || TRIM('_' FROM '_ _ORACLE_ _') || ']' AS TRIM,
        '[' || TRIM(LEADING '_' FROM '_ _ORACLE_ _') || ']' AS TRIM_LEADING,
        '[' || TRIM(TRAILING '_' FROM '_ _ORACLE_ _') || ']' AS TRIM_TRAILING,
        '[' || TRIM(BOTH '_' FROM '_ _ORACLE_ _') || ']' AS TRIM_BOTH 
FROM DUAL;

-- �ǽ� 6-18 TRIM, LTRIM, RTRIM �Լ��� ����Ͽ� ���ڿ� ����ϱ�
SELECT '[' || TRIM(' _ORACLE_ ') || ']' AS TRIM,
        '[' || LTRIM(' _ORACLE_ ') || ']' AS LTRIM,
        '[' || LTRIM('<_ORACLE_>', '_<') || ']' AS LTRIM_2,
        '[' || RTRIM(' _ORACLE_ ') || ']' AS RTRIM,
        '[' || RTRIM('<_ORACLE_>', '>_') || ']' AS RTRIM_2 
FROM DUAL;

-- 06-3 ���� �����͸� �����ϰ� ��ġ�� �����ϴ� ���� �Լ�
-- �ǽ� 6-19 ROUND �Լ��� ����Ͽ� �ݿø��� ���� ����ϱ�
SELECT ROUND(1234.5678) AS ROUND,
        ROUND(1234.5678, 0) AS ROUND_0,
        ROUND(1234.5678, 1) AS ROUND_1,
        ROUND(1234.5678, 2) AS ROUND_2,
        ROUND(1234.5678, -1) AS ROUND_MINUS1,
        ROUND(1234.5678, -2) AS ROUND_MINUS2
FROM DUAL;

-- �ǽ� 6-20 TRUNC �Լ��� ����Ͽ� ���� ����ϱ�
SELECT TRUNC(1234.5678) AS TRUNC,
        TRUNC(1234.5678, 0) AS TRUNC_0,
        TRUNC(1234.5678, 1) AS TRUNC_1,
        TRUNC(1234.5678, 2) AS TRUNC_2,
        TRUNC(1234.5678, -1) AS TRUNC_MINUS1,
        TRUNC(1234.5678, -2) AS TRUNC_MINUS2
FROM DUAL;

-- 1�� ���� ���� SQL���� TRUNC_EX1, TRUNC_EX2, TRUNC_EX3�� ����� ���� �����ϱ��?
SELECT TRUNC(1539.125023, 4) AS TRUNC_EX1, -- 1539.125
        TRUNC(4586.89453, 2) AS TRUNC_EX2, -- 4586.89
        TRUNC(2560.48522, -1) AS TRUNC_EX3 -- 2560
FROM DUAL;

-- �ǽ� 6-21 CEIL, FLOOR �Լ��� ���� ����ϱ�
SELECT CEIL(3.14),
        FLOOR(3.14),
        CEIL(-3.14),
        FLOOR(-3.14)
FROM DUAL;

-- �ǽ� 6-22 MOD �Լ��� ����Ͽ� ������ �� ����ϱ�
SELECT MOD(15, 6),
        MOD(10, 2),
        MOD(11, 2)
FROM DUAL;

-- �ǽ� 6-23 SYSDATE �Լ��� ����Ͽ� ��¥ ����ϱ�
SELECT SYSDATE AS NOW,
        SYSDATE-1 AS YESTERDAY,
        SYSDATE+1 AS TOMORROW
FROM DUAL;

-- �� ���� ���� ��¥�� ���ϴ� ADD_MONTHS �Լ�
-- �ǽ� 6-24 SYSDATE�� ADD_MONTHS �Լ��� 3���� �� ��¥ ���ϱ�
SELECT SYSDATE,
        ADD_MONTHS(SYSDATE, 3)
FROM DUAL;

-- �ǽ� 6-25 �Ի� 10�ֳ��� �Ǵ� ����� ������ ����ϱ�
SELECT EMPNO, ENAME, HIREDATE,
        ADD_MONTHS(HIREDATE, 120) AS WORK10YEAR 
FROM EMP;

-- �ǽ� 6-26 �Ի� 36�� �̸��� ��� ������ ����ϱ�
SELECT EMPNO, ENAME, HIREDATE, SYSDATE 
FROM EMP 
WHERE ADD_MONTHS(HIREDATE, 432) > SYSDATE;

-- 1�� ���� SYSDATE�� ADD_MONTHS �Լ��� ����Ͽ� ���� ��¥�� 6���� �� ��¥�� 
-- ��µǵ��� SQL���� ��ĭ�� ä�� ������
SELECT SYSDATE, ADD_MONTHS(SYSDATE, 6)
FROM DUAL;

-- �� ��¥ ���� ���� �� ���̸� ���ϴ� MONTHS_BETWEEN �Լ�
-- �ǽ� 6-27 HIREDATE�� SYSDATE ������ ���� ���� MONTHS_BETWEEN �Լ��� ����ϱ�
SELECT EMPNO, ENAME, HIREDATE, SYSDATE, 
        MONTHS_BETWEEN(HIREDATE, SYSDATE) AS MONTH1,
        MONTHS_BETWEEN(SYSDATE, HIREDATE) AS MONTH2,
        TRUNC(MONTHS_BETWEEN(SYSDATE, HIREDATE)) AS MONTH3
FROM EMP;

-- ���ƿ��� ����, ���� ������ ��¥�� ���ϴ� NEXT_DAY, LAST_DAY �Լ�
-- �ǽ� 6-28 NEXT_DAY, LAST_DAY �Լ��� ����Ͽ� ����ϱ�
SELECT SYSDATE,
        NEXT_DAY(SYSDATE, '������'),
        LAST_DAY(SYSDATE)
FROM DUAL;

-- �ǽ� 6-29 ROUND �Լ� ����Ͽ� ��¥ ������ ����ϱ�
SELECT SYSDATE,
        ROUND(SYSDATE, 'CC') AS FORMAY_CC,
        ROUND(SYSDATE, 'YYYY') AS FORMAY_YYYY,
        ROUND(SYSDATE, 'Q') AS FORMAY_Q,
        ROUND(SYSDATE, 'DDD') AS FORMAY_DDD,
        ROUND(SYSDATE, 'HH') AS FORMAY_HH
FROM DUAL;

-- �ǽ� 6-30 TRUNC �Լ� ����Ͽ� ��¥ ������ ����ϱ�
SELECT SYSDATE,
        TRUNC(SYSDATE, 'CC') AS FORMAY_CC,
        TRUNC(SYSDATE, 'YYYY') AS FORMAY_YYYY,
        TRUNC(SYSDATE, 'Q') AS FORMAY_Q,
        TRUNC(SYSDATE, 'DDD') AS FORMAY_DDD,
        TRUNC(SYSDATE, 'HH') AS FORMAY_HH
FROM DUAL;

-- 06-5 �ڷ����� ��ȯ�ϴ� �� ��ȯ �Լ�
-- �ǽ� 6-31 ���ڿ� ���ڿ�(����)�� ���Ͽ� ����ϱ�
SELECT EMPNO, ENAME, EMPNO + '500'
FROM EMP 
WHERE ENAME = 'SCOTT';

-- �ǽ� 6-32 ���ڿ�(����)�� ���ڸ� ���Ͽ� ����ϱ�
SELECT 'ABCD' + EMPNO, EMPNO 
FROM EMP 
WHERE ENAME = 'SCOTT';

-- ��¥, ���� �����͸� ���� �����ͷ� ��ȯ�ϴ� TO_CHAR �Լ�
-- �ǽ� 6-33 SYSDATE ��¥ ���� �����Ͽ� ����ϱ�
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD HH24:MI:SS') AS ���糯¥�ð�
FROM DUAL;

-- �ǽ� 6-34 ���� ������ �پ��� �������� ����ϱ�
SELECT SYSDATE,
        TO_CHAR(SYSDATE, 'MM') AS MM,
        TO_CHAR(SYSDATE, 'MON') AS MON,
        TO_CHAR(SYSDATE, 'MONTH') AS MONTH,
        TO_CHAR(SYSDATE, 'DD') AS DD,
        TO_CHAR(SYSDATE, 'DY') AS DY,
        TO_CHAR(SYSDATE, 'DAY') AS DAY
FROM DUAL;

-- �ǽ� 6-35 ���� ���� ��¥(��) ����ϱ�
SELECT SYSDATE,
        TO_CHAR(SYSDATE, 'MM') AS MM,
        TO_CHAR(SYSDATE, 'MON', 'NLS_DATE_LANGUAGE = KOREAN') AS MON_KOR,
        TO_CHAR(SYSDATE, 'MON', 'NLS_DATE_LANGUAGE = JAPANESE') AS MON_JPN,
        TO_CHAR(SYSDATE, 'MON', 'NLS_DATE_LANGUAGE = ENGLISH') AS MON_ENG,
        TO_CHAR(SYSDATE, 'MONTH', 'NLS_DATE_LANGUAGE = KOREAN') AS MONTH_KOR,
        TO_CHAR(SYSDATE, 'MONTH', 'NLS_DATE_LANGUAGE = JAPANESE') AS MONTH_JPN,
        TO_CHAR(SYSDATE, 'MONTH', 'NLS_DATE_LANGUAGE = ENGLISH') AS MONTH_ENG
FROM DUAL;

-- �ǽ� 6-36 ���� ���� ��¥(����) ����ϱ�
SELECT SYSDATE,
        TO_CHAR(SYSDATE, 'MM') AS MM,
        TO_CHAR(SYSDATE, 'DD') AS DD,
        TO_CHAR(SYSDATE, 'DY', 'NLS_DATE_LANGUAGE = KOREAN') AS DY_KOR,
        TO_CHAR(SYSDATE, 'DY', 'NLS_DATE_LANGUAGE = JAPANESE') AS DY_JPN,
        TO_CHAR(SYSDATE, 'DY', 'NLS_DATE_LANGUAGE = ENGLISH') AS DY_ENG,
        TO_CHAR(SYSDATE, 'DAY', 'NLS_DATE_LANGUAGE = KOREAN') AS DAY_KOR,
        TO_CHAR(SYSDATE, 'DAY', 'NLS_DATE_LANGUAGE = JAPANESE') AS DAY_JPN,
        TO_CHAR(SYSDATE, 'DAY', 'NLS_DATE_LANGUAGE = ENGLISH') AS DAY_ENG
FROM DUAL;

-- �ǽ� 6-37 SYSDATE �ð� ���� �����Ͽ� ����ϱ�
SELECT SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS') AS HH24MISS,
        TO_CHAR(SYSDATE, 'HH12:MI:SS AM') AS HHMISS_AM,
        TO_CHAR(SYSDATE, 'HH:MI:SS P.M.') AS HHMISS_PM
FROM DUAL;

-- ���� ������ ������ �����Ͽ� ����ϱ�
-- �ǽ� 6-38 ���� ���� ���� ������ ����Ͽ� �޿� ����ϱ�
SELECT SAL,
        TO_CHAR(SAL, '$999,999') AS SAL_$,
        TO_CHAR(SAL, 'L999,999') AS SAL_L,
        TO_CHAR(SAL, '999,999.00') AS SAL_1,
        TO_CHAR(SAL, '000,999,999.00') AS SAL_2,
        TO_CHAR(SAL, '000999999.00') AS SAL_3,
        TO_CHAR(SAL, '999,999,00') AS SAL_4
FROM EMP;

-- ���� �����͸� ���� �����ͷ� ��ȯ�ϴ� TO_NUMBER �Լ�
-- �ǽ� 6-39 ���� �����Ϳ� ���� �����͸� �����Ͽ� ����ϱ�
SELECT 1300 - '1500',
        '1300' + 1500
FROM DUAL;

-- �ǽ� 6-40 ���� �����ͳ��� �����Ͽ� ����ϱ�
SELECT '1,300' - '1,500'
FROM DUAL;

-- �ǽ� 6-41 TO_NUMBER �Լ��� �����Ͽ� ����ϱ�
SELECT TO_NUMBER('1,300', '999,999') - TO_NUMBER('1,500', '999,999')
FROM DUAL;

-- ���� �����͸� ��¥ �����ͷ� ��ȯ�ϴ� TO_DATE �Լ�
-- �ǽ� 6-42 TO_DATE �Լ��� ���� �����͸� ��¥ ������ ��ȯ�ϱ�
SELECT TO_DATE('2022-05-13', 'YYYY-MM-DD') AS TODATE1,
        TO_DATE('20220513', 'YYYY-MM-DD') AS TODATE2
FROM DUAL;

-- �ǽ� 6-43 1981�� 6�� 1�� ���Ŀ� �Ի��� ��� ���� ����ϱ�
SELECT * 
FROM EMP 
WHERE HIREDATE > TO_DATE('19810601', 'YYYY-MM-DD');

-- �ǽ� 6-44 ���� ���� �������� ��¥ ������ ����ϱ�
SELECT TO_DATE('49/12/10', 'YY/MM/DD') AS YY_YEAR_49,
        TO_DATE('49/12/10', 'RR/MM/DD') AS RR_YEAR_49,
        TO_DATE('50/12/10', 'YY/MM/DD') AS YY_YEAR_50,
        TO_DATE('50/12/10', 'RR/MM/DD') AS RR_YEAR_50,
        TO_DATE('51/12/10', 'YY/MM/DD') AS YY_YEAR_51,
        TO_DATE('51/12/10', 'RR/MM/DD') AS RR_YEAR_51
FROM DUAL;

-- 1�� ���� 1980�� 10�� 15�� ���Ŀ� �Ի��� ����� ����ϱ� ���� ���� SQL���� ��ĭ�� ä�� ������.
SELECT * 
FROM EMP 
WHERE HIREDATE > TO_DATE('1980/10/15', 'YYYY/MM/DD');

-- 06-6 NULL ó�� �Լ�
-- �ǽ� 6-45 NVL �Լ��� ����Ͽ� ����ϱ�
SELECT EMPNO, ENAME, SAL, COMM, SAL+COMM,
        NVL(COMM, 0),
        SAL+NVL(COMM, 0)
FROM EMP;

-- NVL2 �Լ��� �⺻ ����
SELECT EMPNO, ENAME, COMM,
        NVL2(COMM, 'O', 'X'),
        NVL2(COMM, SAL*12+COMM, SAL*12) AS ANNSAL
FROM EMP;

-- 06-7 ��Ȳ�� ���� �ٸ� �����͸� ��ȯ�ϴ� DECODE �Լ��� CASE��
-- �ǽ� 6-47 DECODE �Լ��� ����Ͽ� ����ϱ�
SELECT EMPNO, ENAME, JOB, SAL,
        DECODE(JOB,
                'MANAGER', SAL*1.1,
                'SALESMAN', SAL*1.05,
                'ANALYST', SAL,
                SAL*1.03) AS UPSAL
FROM EMP;

-- �ǽ� 6-48 CASE���� ����Ͽ� ����ϱ�
SELECT EMPNO, ENAME, JOB, SAL,
        CASE JOB
            WHEN 'MANAGER' THEN SAL*1.1
            WHEN 'SALESMAN' THEN SAL*1.05
            WHEN 'ANALYST' THEN SAL
            ELSE SAL*1.03 
        END AS UPSAL
FROM EMP;

--- �ǽ� 6-49 �� ���� ���� ��� ���� �޶����� CASE��
SELECT EMPNO, ENAME, COMM,
        CASE 
        WHEN COMM IS NULL THEN '�ش���� ����'
        WHEN COMM = 0 THEN '�������'
        WHEN COMM > 0 THEN '���� : ' || COMM
        END AS COMM_TEXT
FROM EMP;

-- �ر� ���� �� �� ��!
-- QUIZ_01
SELECT EMPNO,
        RPAD(SUBSTR(EMPNO,1,2), 4, '*') AS MASKING_EMPNO,
        ENAME,
        RPAD(SUBSTR(ENAME,1,1), LENGTH(ENAME), '*') AS MASKING_ENAME
FROM EMP
WHERE LENGTH(ENAME) >= 5
AND LENGTH(ENAME) < 6;

-- QUIZ_02
SELECT EMPNO, ENAME, SAL,
        TRUNC(SAL / 21.5, 2) AS DAY_PAY,
        TRUNC(SAL / 21.5 / 8, 1) AS TIME_PAY
FROM EMP;

-- QUIZ_03
SELECT EMPNO, ENAME, HIREDATE,
        TO_CHAR(NEXT_DAY(ADD_MONTHS(HIREDATE, 3), '������'), 'YYYY-MM-DD') AS R_JOB,
        NVL(TO_CHAR(COMM), 'N/A') AS COMM
FROM EMP;

-- QUIZ04
SELECT EMPNO, ENAME, MGR,
       CASE
          WHEN MGR IS NULL THEN '0000'
          WHEN SUBSTR(MGR, 1, 2) = '78' THEN '8888'
          WHEN SUBSTR(MGR, 1, 2) = '77' THEN '7777'
          WHEN SUBSTR(MGR, 1, 2) = '76' THEN '6666'
          WHEN SUBSTR(MGR, 1, 2) = '75' THEN '5555'
          ELSE TO_CHAR(MGR)
       END AS CHG_MGR
  FROM EMP;