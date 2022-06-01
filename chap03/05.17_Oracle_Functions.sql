-- 22.05.09 데이터 처리와 가공을 위한 오라클 함수

-- 실습 6-1 UPPER, LOWERM INITCAP 함수 사용하기
SELECT ENAME, UPPER(ENAME), LOWER(ENAME), INITCAP(ENAME) 
FROM EMP;

-- 실습 6-2 UPPER 함수로 문자열 비교하기(사원 이름이 SCOTT인 데이터 찾기)
SELECT * 
FROM EMP 
WHERE UPPER(ENAME) = UPPER('scott');

-- 실습 6-3 UPPER 함수로 문자열 비교하기(사원 이름에 SCOTT 단어를 포함한 데이터 찾기)
SELECT * 
FROM EMP 
WHERE UPPER(ENAME) LIKE UPPER('%scott%');

-- 1분 복습 사원 이름이 대문자로 출력되도록 코드를 채워 보세요.
SELECT UPPER(ENAME) 
FROM EMP;

-- LENGTH 함수 사용하기
-- 실습 6-4 선택한 열의 문자열 길이 구하기.
SELECT ENAME, LENGTH(ENAME) 
FROM EMP;

-- WHERE절에서 LENGTH 함수 사용하기
-- 실습 6-5 사원 이름의 길이가 5이상인 행 출력하기
SELECT ENAME, LENGTH(ENAME) 
FROM EMP 
WHERE LENGTH(ENAME) >= 5;

-- LENGTH 함수와 LENGTHB 함수 비교하기
-- 실습 6-6 LENGTH 함수와 LENGTHB 함수 비교하기
SELECT LENGTH('한글'), LENGTHB('한글') 
FROM DUAL;

-- 1분 복습 직책 이름이 6글자 이상인 데이터만 출력되도록 코드를 채워 보세요.
SELECT * 
FROM EMP 
WHERE LENGTH(JOB) >= 6;

-- SUBSTR 함수 사용하기
-- 6-7 SUBSTR 함수를 사용하는 예
SELECT JOB, SUBSTR(JOB, 1, 2), SUBSTR(JOB, 3, 2), SUBSTR(JOB, 5) 
FROM EMP;

-- 1분 복습 SUBSTR 함수를 사용하여 EMP 테이블의 모든 사원 이름을
-- 세 번째 글자부터 끝까지 출력되도록 코드를 채워 보세요.
SELECT SUBSTR(ENAME, 3) 
FROM EMP;

-- SUBSTR 함수와 다른 함수 함께 사용하기
-- 실습 6-8 SUBSTR 함수 안에 다른 함수(LENGTH) 함께 사용하기
SELECT JOB, 
        SUBSTR(JOB, -LENGTH(JOB)), 
        SUBSTR(JOB, -LENGTH(JOB), 2), 
        SUBSTR(JOB, -3) 
FROM EMP;

-- 특정 문자 위치 찾기
-- 실습 6-9 INSTR 함수로 문자열 데이터에서 특정 문자열 찾기
SELECT INSTR('HELLO, ORACLE!', 'L') AS INSTR_1, 
        INSTR('HELLO, ORACLE!', 'L', 5) AS INSTR_2,
        INSTR('HELLO, ORACLE!', 'L', 2, 2) AS INSTR_3
FROM DUAL;

-- 특정 문자를 포함하고 있는 행 찾기
-- 실습 6-10 INSTR 함수로 사원 이름에 문자 S가 있는 행 구하기
SELECT *  
FROM EMP 
WHERE INSTR(ENAME, 'S') > 0;

-- 실습 6-11 LIKE 연산자로 사원 이름에 문자 S가 있는 행 구하기
SELECT * 
FROM EMP 
WHERE ENAME LIKE '%S%';

-- 실습 6-12 REPLACE 함수로 문자열 안에 있는 특정 문자 바꾸기
SELECT '010-1234-5678' AS REPLACE_BEFORE,
        REPLACE('010-1234-5678', '-', ' ') AS REPLACE_1,
        REPLACE('010-1234-5678', '-') AS REPLACE_2
FROM DUAL;

-- 실습 6-13 LPAD, RPAD 함수 사용하여 출력하기
SELECT 'Oracle',
        LPAD('Oracle', 10, '#') AS LPAD_1,
        RPAD('Oracle', 10, '*') AS RPAD_1,
        LPAD('Oracle', 10) AS LPAD_2,
        RPAD('Oracle', 10) AS RPAD_2
FROM DUAL;

-- 실습 6-14 RPAD 함수를 사용하여 개인정보 뒷자리 * 표시로 출력하기
SELECT 
        RPAD('910329-', 14, '*') RPAD_JMNO,
        RPAD('010-6543-', 13, '*') RPAD_PHONE
FROM DUAL;

-- 실습 6-15 두 열 사이에 콜론(:) 넣고 연결하기
SELECT CONCAT(EMPNO, ENAME),
        CONCAT(EMPNO, CONCAT(' : ', ENAME))
FROM EMP 
WHERE ENAME = 'SCOTT';

-- 한발 더 나가기! 문자열 데이터를 연결하는 || 연산자
SELECT EMPNO || ENAME,
        EMPNO || ' : ' || ENAME
FROM EMP 
WHERE ENAME = 'SCOTT';

-- TRIM 함수 사용하기(삭제할 문자가 없을 때)
-- 실습 6-16 TRIM 함수로 공백 제거하여 출력하기
SELECT '[' || TRIM(' _ _ORACLE_ _ ') || ']' AS TRIM,
        '[' || TRIM(LEADING FROM ' _ _ORACLE_ _ ') || ']' AS TRIM_LEADING,
        '[' || TRIM(TRAILING FROM ' _ _ORACLE_ _ ') || ']' AS TRIM_TRAILING,
        '[' || TRIM(BOTH FROM ' _ _ORACLE_ _ ') || ']' AS TRIM_BOTH 
FROM DUAL;

-- TRIM 함수 사용하기(삭제할 문자가 있을 때)
-- 실습 6-17 TRIM 함수로 삭제할 '_' 삭제 후 출력하기
SELECT '[' || TRIM('_' FROM '_ _ORACLE_ _') || ']' AS TRIM,
        '[' || TRIM(LEADING '_' FROM '_ _ORACLE_ _') || ']' AS TRIM_LEADING,
        '[' || TRIM(TRAILING '_' FROM '_ _ORACLE_ _') || ']' AS TRIM_TRAILING,
        '[' || TRIM(BOTH '_' FROM '_ _ORACLE_ _') || ']' AS TRIM_BOTH 
FROM DUAL;

-- 실습 6-18 TRIM, LTRIM, RTRIM 함수를 사용하여 문자열 출력하기
SELECT '[' || TRIM(' _ORACLE_ ') || ']' AS TRIM,
        '[' || LTRIM(' _ORACLE_ ') || ']' AS LTRIM,
        '[' || LTRIM('<_ORACLE_>', '_<') || ']' AS LTRIM_2,
        '[' || RTRIM(' _ORACLE_ ') || ']' AS RTRIM,
        '[' || RTRIM('<_ORACLE_>', '>_') || ']' AS RTRIM_2 
FROM DUAL;

-- 06-3 숫자 데이터를 연산하고 수치를 조정하는 숫자 함수
-- 실습 6-19 ROUND 함수를 사용하여 반올림된 숫자 출력하기
SELECT ROUND(1234.5678) AS ROUND,
        ROUND(1234.5678, 0) AS ROUND_0,
        ROUND(1234.5678, 1) AS ROUND_1,
        ROUND(1234.5678, 2) AS ROUND_2,
        ROUND(1234.5678, -1) AS ROUND_MINUS1,
        ROUND(1234.5678, -2) AS ROUND_MINUS2
FROM DUAL;

-- 실습 6-20 TRUNC 함수를 사용하여 숫자 출력하기
SELECT TRUNC(1234.5678) AS TRUNC,
        TRUNC(1234.5678, 0) AS TRUNC_0,
        TRUNC(1234.5678, 1) AS TRUNC_1,
        TRUNC(1234.5678, 2) AS TRUNC_2,
        TRUNC(1234.5678, -1) AS TRUNC_MINUS1,
        TRUNC(1234.5678, -2) AS TRUNC_MINUS2
FROM DUAL;

-- 1분 복습 다음 SQL문의 TRUNC_EX1, TRUNC_EX2, TRUNC_EX3의 결과는 각각 무엇일까요?
SELECT TRUNC(1539.125023, 4) AS TRUNC_EX1, -- 1539.125
        TRUNC(4586.89453, 2) AS TRUNC_EX2, -- 4586.89
        TRUNC(2560.48522, -1) AS TRUNC_EX3 -- 2560
FROM DUAL;

-- 실습 6-21 CEIL, FLOOR 함수로 숫자 출력하기
SELECT CEIL(3.14),
        FLOOR(3.14),
        CEIL(-3.14),
        FLOOR(-3.14)
FROM DUAL;

-- 실습 6-22 MOD 함수를 사용하여 나머지 값 출력하기
SELECT MOD(15, 6),
        MOD(10, 2),
        MOD(11, 2)
FROM DUAL;

-- 실습 6-23 SYSDATE 함수를 사용하여 날짜 출력하기
SELECT SYSDATE AS NOW,
        SYSDATE-1 AS YESTERDAY,
        SYSDATE+1 AS TOMORROW
FROM DUAL;

-- 몇 개월 이후 날짜를 구하는 ADD_MONTHS 함수
-- 실습 6-24 SYSDATE와 ADD_MONTHS 함수로 3개월 후 날짜 구하기
SELECT SYSDATE,
        ADD_MONTHS(SYSDATE, 3)
FROM DUAL;

-- 실습 6-25 입사 10주년이 되는 사원들 데이터 출력하기
SELECT EMPNO, ENAME, HIREDATE,
        ADD_MONTHS(HIREDATE, 120) AS WORK10YEAR 
FROM EMP;

-- 실습 6-26 입사 36년 미만인 사원 데이터 출력하기
SELECT EMPNO, ENAME, HIREDATE, SYSDATE 
FROM EMP 
WHERE ADD_MONTHS(HIREDATE, 432) > SYSDATE;

-- 1분 복습 SYSDATE와 ADD_MONTHS 함수를 사용하여 현재 날짜와 6개월 후 날짜가 
-- 출력되도록 SQL문의 빈칸을 채워 보세요
SELECT SYSDATE, ADD_MONTHS(SYSDATE, 6)
FROM DUAL;

-- 두 날짜 간의 개월 수 차이를 구하는 MONTHS_BETWEEN 함수
-- 실습 6-27 HIREDATE와 SYSDATE 사이의 개월 수를 MONTHS_BETWEEN 함수로 출력하기
SELECT EMPNO, ENAME, HIREDATE, SYSDATE, 
        MONTHS_BETWEEN(HIREDATE, SYSDATE) AS MONTH1,
        MONTHS_BETWEEN(SYSDATE, HIREDATE) AS MONTH2,
        TRUNC(MONTHS_BETWEEN(SYSDATE, HIREDATE)) AS MONTH3
FROM EMP;

-- 돌아오는 요일, 달의 마지막 날짜를 구하는 NEXT_DAY, LAST_DAY 함수
-- 실습 6-28 NEXT_DAY, LAST_DAY 함수를 사용하여 출력하기
SELECT SYSDATE,
        NEXT_DAY(SYSDATE, '월요일'),
        LAST_DAY(SYSDATE)
FROM DUAL;

-- 실습 6-29 ROUND 함수 사용하여 날짜 데이터 출력하기
SELECT SYSDATE,
        ROUND(SYSDATE, 'CC') AS FORMAY_CC,
        ROUND(SYSDATE, 'YYYY') AS FORMAY_YYYY,
        ROUND(SYSDATE, 'Q') AS FORMAY_Q,
        ROUND(SYSDATE, 'DDD') AS FORMAY_DDD,
        ROUND(SYSDATE, 'HH') AS FORMAY_HH
FROM DUAL;

-- 실습 6-30 TRUNC 함수 사용하여 날짜 데이터 출력하기
SELECT SYSDATE,
        TRUNC(SYSDATE, 'CC') AS FORMAY_CC,
        TRUNC(SYSDATE, 'YYYY') AS FORMAY_YYYY,
        TRUNC(SYSDATE, 'Q') AS FORMAY_Q,
        TRUNC(SYSDATE, 'DDD') AS FORMAY_DDD,
        TRUNC(SYSDATE, 'HH') AS FORMAY_HH
FROM DUAL;

-- 06-5 자료형을 변환하는 형 변환 함수
-- 실습 6-31 숫자와 문자열(숫자)을 더하여 출력하기
SELECT EMPNO, ENAME, EMPNO + '500'
FROM EMP 
WHERE ENAME = 'SCOTT';

-- 실습 6-32 문자열(문자)과 숫자를 더하여 출력하기
SELECT 'ABCD' + EMPNO, EMPNO 
FROM EMP 
WHERE ENAME = 'SCOTT';

-- 날짜, 숫자 데이터를 문자 데이터로 변환하는 TO_CHAR 함수
-- 실습 6-33 SYSDATE 날짜 형식 지정하여 출력하기
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD HH24:MI:SS') AS 현재날짜시간
FROM DUAL;

-- 실습 6-34 월과 요일을 다양한 형식으로 출력하기
SELECT SYSDATE,
        TO_CHAR(SYSDATE, 'MM') AS MM,
        TO_CHAR(SYSDATE, 'MON') AS MON,
        TO_CHAR(SYSDATE, 'MONTH') AS MONTH,
        TO_CHAR(SYSDATE, 'DD') AS DD,
        TO_CHAR(SYSDATE, 'DY') AS DY,
        TO_CHAR(SYSDATE, 'DAY') AS DAY
FROM DUAL;

-- 실습 6-35 여러 언어로 날짜(월) 출력하기
SELECT SYSDATE,
        TO_CHAR(SYSDATE, 'MM') AS MM,
        TO_CHAR(SYSDATE, 'MON', 'NLS_DATE_LANGUAGE = KOREAN') AS MON_KOR,
        TO_CHAR(SYSDATE, 'MON', 'NLS_DATE_LANGUAGE = JAPANESE') AS MON_JPN,
        TO_CHAR(SYSDATE, 'MON', 'NLS_DATE_LANGUAGE = ENGLISH') AS MON_ENG,
        TO_CHAR(SYSDATE, 'MONTH', 'NLS_DATE_LANGUAGE = KOREAN') AS MONTH_KOR,
        TO_CHAR(SYSDATE, 'MONTH', 'NLS_DATE_LANGUAGE = JAPANESE') AS MONTH_JPN,
        TO_CHAR(SYSDATE, 'MONTH', 'NLS_DATE_LANGUAGE = ENGLISH') AS MONTH_ENG
FROM DUAL;

-- 실습 6-36 여러 언어로 날짜(요일) 출력하기
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

-- 실습 6-37 SYSDATE 시간 형식 지정하여 출력하기
SELECT SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS') AS HH24MISS,
        TO_CHAR(SYSDATE, 'HH12:MI:SS AM') AS HHMISS_AM,
        TO_CHAR(SYSDATE, 'HH:MI:SS P.M.') AS HHMISS_PM
FROM DUAL;

-- 숫자 데이터 형식을 지정하여 출력하기
-- 실습 6-38 여러 가지 숫자 형식을 사용하여 급여 출력하기
SELECT SAL,
        TO_CHAR(SAL, '$999,999') AS SAL_$,
        TO_CHAR(SAL, 'L999,999') AS SAL_L,
        TO_CHAR(SAL, '999,999.00') AS SAL_1,
        TO_CHAR(SAL, '000,999,999.00') AS SAL_2,
        TO_CHAR(SAL, '000999999.00') AS SAL_3,
        TO_CHAR(SAL, '999,999,00') AS SAL_4
FROM EMP;

-- 문자 데이터를 숫자 데이터로 변환하는 TO_NUMBER 함수
-- 실습 6-39 문자 데이터와 숫자 데이터를 연산하여 출력하기
SELECT 1300 - '1500',
        '1300' + 1500
FROM DUAL;

-- 실습 6-40 문자 데이터끼리 연산하여 출력하기
SELECT '1,300' - '1,500'
FROM DUAL;

-- 실습 6-41 TO_NUMBER 함수로 연산하여 출력하기
SELECT TO_NUMBER('1,300', '999,999') - TO_NUMBER('1,500', '999,999')
FROM DUAL;

-- 문자 데이터를 날짜 데이터로 변환하는 TO_DATE 함수
-- 실습 6-42 TO_DATE 함수로 문자 데이터를 날짜 데이터 변환하기
SELECT TO_DATE('2022-05-13', 'YYYY-MM-DD') AS TODATE1,
        TO_DATE('20220513', 'YYYY-MM-DD') AS TODATE2
FROM DUAL;

-- 실습 6-43 1981년 6월 1일 이후에 입사한 사원 정보 출력하기
SELECT * 
FROM EMP 
WHERE HIREDATE > TO_DATE('19810601', 'YYYY-MM-DD');

-- 실습 6-44 여러 가지 형식으로 날짜 데이터 출력하기
SELECT TO_DATE('49/12/10', 'YY/MM/DD') AS YY_YEAR_49,
        TO_DATE('49/12/10', 'RR/MM/DD') AS RR_YEAR_49,
        TO_DATE('50/12/10', 'YY/MM/DD') AS YY_YEAR_50,
        TO_DATE('50/12/10', 'RR/MM/DD') AS RR_YEAR_50,
        TO_DATE('51/12/10', 'YY/MM/DD') AS YY_YEAR_51,
        TO_DATE('51/12/10', 'RR/MM/DD') AS RR_YEAR_51
FROM DUAL;

-- 1분 복습 1980년 10월 15일 이후에 입사한 사원을 출력하기 위한 다음 SQL문의 빈칸을 채워 보세요.
SELECT * 
FROM EMP 
WHERE HIREDATE > TO_DATE('1980/10/15', 'YYYY/MM/DD');

-- 06-6 NULL 처리 함수
-- 실습 6-45 NVL 함수를 사용하여 출력하기
SELECT EMPNO, ENAME, SAL, COMM, SAL+COMM,
        NVL(COMM, 0),
        SAL+NVL(COMM, 0)
FROM EMP;

-- NVL2 함수의 기본 사용법
SELECT EMPNO, ENAME, COMM,
        NVL2(COMM, 'O', 'X'),
        NVL2(COMM, SAL*12+COMM, SAL*12) AS ANNSAL
FROM EMP;

-- 06-7 상황에 따라 다른 데이터를 반환하는 DECODE 함수와 CASE문
-- 실습 6-47 DECODE 함수를 사용하여 출력하기
SELECT EMPNO, ENAME, JOB, SAL,
        DECODE(JOB,
                'MANAGER', SAL*1.1,
                'SALESMAN', SAL*1.05,
                'ANALYST', SAL,
                SAL*1.03) AS UPSAL
FROM EMP;

-- 실습 6-48 CASE문을 사용하여 출력하기
SELECT EMPNO, ENAME, JOB, SAL,
        CASE JOB
            WHEN 'MANAGER' THEN SAL*1.1
            WHEN 'SALESMAN' THEN SAL*1.05
            WHEN 'ANALYST' THEN SAL
            ELSE SAL*1.03 
        END AS UPSAL
FROM EMP;

--- 실습 6-49 열 값에 따라서 출력 값이 달라지는 CASE문
SELECT EMPNO, ENAME, COMM,
        CASE 
        WHEN COMM IS NULL THEN '해당사항 없음'
        WHEN COMM = 0 THEN '수당없음'
        WHEN COMM > 0 THEN '수당 : ' || COMM
        END AS COMM_TEXT
FROM EMP;

-- 잊기 전에 한 번 더!
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
        TO_CHAR(NEXT_DAY(ADD_MONTHS(HIREDATE, 3), '월요일'), 'YYYY-MM-DD') AS R_JOB,
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