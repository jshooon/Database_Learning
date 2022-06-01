-- 22.05.06 더 정확하고 다양하게 결과를 출력하는 WHERE절과 연산자

-- 실습 5-1 EMP 테이블의 모든 열 출력하기
SELECT * 
FROM EMP;

-- 실습 5-2 부서번호가 30번인 데이터만 출력하기
SELECT * 
FROM EMP 
WHERE DEPTNO = 30;

-- 1분복습 다음 SQL문의 결과로 사원 번호가 7782인 사원정보만 나오도록 코드를 채워 보세요
SELECT * 
FROM EMP
WHERE EMPNO = 7782;

-- 실습 5-3 AND 연산자로 여러 개의 조건식 사용하기
SELECT * 
FROM EMP 
WHERE DEPTNO = 30 
AND JOB = 'SALESMAN';

-- 1분복습 실습 5-3을 참고하여 다음 SQL문의 결과로 사원 번호가 7499이고,
-- 부서 번호가 30인 사원 정보만 나오도록 코드를 채워 보세요.
SELECT * 
FROM EMP 
WHERE EMPNO = 7499 
AND DEPTNO = 30;

-- 실습 5-4 OR 연산자로 여러 개의 출력 조건 사용하기
SELECT * 
FROM EMP 
WHERE DEPTNO = 30 
OR JOB = 'CLERK';

-- 1분복습 실습 5-4를 참고하여 다음 SQL문의 결과로 부서 번호가 20이거나,
-- 직업이 SALESMAN인 사원 정보만 나오도록 코드를 채워 보세요.
SELECT * 
FROM EMP 
WHERE DEPTNO = 20 
OR JOB = 'SALESMAN';

-- 실습 5-5 곱셈 산술 연산자를 사용한 예
SELECT * 
FROM EMP 
WHERE SAL * 12 = 36000;

-- 실습 5-6 대소 비교 연산자를 사용하여 출력하기
SELECT * 
FROM EMP 
WHERE SAL >= 3000;

-- 1분복습 다음 SQL문의 결과로 급여가 2500 이상이고 직업이 ANALYST인 사원 정보만
-- 나오도록 코드를 채워 보세요
SELECT * 
FROM EMP 
WHERE SAL >= 2500 
AND JOB = 'ANALYST';

-- 실습 5-7 문자를 대소 비교 연산자로 비교하기(비교 문자열이 문자 하나일 때)
SELECT * 
FROM EMP 
WHERE ENAME >= 'F';

-- 실습 5-8 문자열을 대소 비교 연산자로 비교하기(비교 문자열이 문자 여러 개일 때)
SELECT * 
FROM EMP 
WHERE ENAME <= 'FORZ';

-- 실습 5-9 등가 비교 연산자(!=)를 사용하여 출력하기
SELECT * 
FROM EMP 
WHERE SAL != 3000;

-- 실습 5-10 등가 비교 연산자(<>)를 사용하여 출력하기
SELECT * 
FROM EMP 
WHERE SAL <> 3000;

-- 실습 5-11 등가 비교 연산자(^=)를 사용하여 출력하기
SELECT * 
FROM EMP 
WHERE SAL ^= 3000;

-- 실습 5-12 NOT 연산자를 사용하여 출력하기
SELECT * 
FROM EMP 
WHERE NOT SAL = 3000;

-- 실습 5-13 OR 연산자를 사용하여 여러 개 조건을 만족하는 데이터 출력하기
SELECT * 
FROM EMP 
WHERE JOB = 'MANAGER'
    OR JOB = 'SALESMAN'
    OR JOB = 'CLERK';
    
-- 실습 5-14 IN 연산자를 사용하여 출력하기
SELECT * 
FROM EMP 
WHERE JOB IN('MANAGER', 'SALESMAN', 'CLERK');

-- 실습 5-15 등가 비교 연산자와 AND 연산자를 사용하여 출력하기
SELECT * 
FROM EMP 
WHERE JOB != 'MANAGER'
    AND JOB <> 'SALESMAN'
    AND JOB ^= 'CLERK';

-- 실습 5-16 IN 연산자와 논리 부정 연산자를 사용하여 출력하기
SELECT * 
FROM EMP 
WHERE JOB NOT IN('MANAGER', 'SALESMAN', 'CLERK');

-- 1분복습 IN 연산자를 사용하여 다음 SQL문의 결과로 부서 번호가 
-- 10, 20번인 사원 정보만 나오도록 코드를 채워 보세요.
SELECT *
FROM EMP 
WHERE DEPTNO IN(10, 20);

-- 실습 5-17 대소 비교 연산자와 AND 연산자를 사용하여 출력하기
SELECT * 
FROM EMP 
WHERE SAL >= 2000 
AND SAL <= 3000;

-- 실습 5-18 BETWEEN A AND B 연산자를 사용하여 출력하기
SELECT * 
FROM EMP 
WHERE SAL BETWEEN 2000 AND 3000;

-- 실습 5-19 BETWEEN A AND B 연산자와 NOT 연산자를 사용하여 출력하기
SELECT * 
FROM EMP 
WHERE SAL NOT BETWEEN 2000 AND 3000; 

-- 실습 5-20 LIKE 연산자 사용하여 출력하기 
SELECT * 
FROM EMP 
WHERE ENAME LIKE 'S%';

-- 실습 5-21 사원 이름의 두 번째 글자가 L인 사원만 출력하기
SELECT * 
FROM EMP 
WHERE ENAME LIKE '_L%';

-- 실습 5-22 사원 이름에 AM이 포함되어 있는 사원 데이터만 출력하기
SELECT * 
FROM EMP 
WHERE ENAME LIKE '%AM%';

-- 실습 5-23 사원 이름에 AM이 포함되어 있지 않은 사원 데이터 출력하기
SELECT * 
FROM EMP 
WHERE ENAME NOT LIKE '%AM%';

-- 와일드 카드 문자가 데이터 일부일 경우
SELECT * 
FROM EMP 
WHERE ENAME LIKE '%A\_A%' ESCAPE '\';

-- 실습 5-24 별칭을 사용하여 열 이름 출력하기
-- 숫자 0은 값 0이 존재한다는 뜻이므로, NULL과 혼동하지 않도록 주의하자.
SELECT ENAME, SAL, SAL*12+COMM AS ANNSAL, COMM 
FROM EMP;

-- 실습 5-25 등가 비교 연산자로 NULL 비교하기
SELECT * 
FROM EMP 
WHERE COMM = NULL;

-- 실습 5-26 IS NULL 연산자를 사용하여 출력하기
SELECT * 
FROM EMP 
WHERE COMM IS NULL;

-- 실습 5-27 직속 상관이 있는 사원 데이터만 출력하기
SELECT * 
FROM EMP 
WHERE MGR IS NOT NULL;

-- 실습 5-28 AND 연산자와 IS NULL 연산자 사용하기
SELECT * 
FROM EMP 
WHERE SAL > NULL 
AND COMM IS NULL;

-- 실습 5-29 OR 연산자와 IS NULL 연산자 사용하기
SELECT * 
FROM EMP 
WHERE SAL > NULL 
OR COMM IS NULL;

-- 실습 5-30 집합 연산자(UNION)를 사용하여 출력하기
SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP 
WHERE DEPTNO = 10 
UNION 
SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP 
WHERE DEPTNO = 20;

-- 실습 5-31 집합 연산자(UNION)를 사용하여 출력하기(출력 열 개수가 다를 때)
SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP 
WHERE DEPTNO = 10 
UNION 
SELECT EMPNO, ENAME, SAL 
FROM EMP 
WHERE DEPTNO = 20;

-- 실습 5-32 집합 연산자(UNION)를 사용하여 출력하기(출력 열의 자료형이 다를 때)
SELECT EMPNO, ENAME, SAL, DEPTNO
FROM EMP 
WHERE DEPTNO = 10 
UNION 
SELECT ENAME, EMPNO, DEPTNO, SAL
FROM EMP 
WHERE DEPTNO = 20;

-- 실습 5-33 집합 연산자(UNION)를 사용하여 출력하기(출력 열 개수와 자료형이 같을 때)
SELECT EMPNO, ENAME, SAL, DEPTNO
FROM EMP 
WHERE DEPTNO = 10 
UNION 
SELECT SAL, JOB, DEPTNO, SAL
FROM EMP 
WHERE DEPTNO = 20;

-- 실습 5-34 집합 연산자(UNION)를 사용하여 출력하기(출력 결과 데이터가 같을 때)
SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP 
WHERE DEPTNO = 10 
UNION 
SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP 
WHERE DEPTNO = 10;

-- 실습 5-35 집합 연산자(UNION ALL)를 사용하여 출력하기(출력 결과 데이터가 같을 때)
SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP 
WHERE DEPTNO = 10 
UNION ALL
SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP 
WHERE DEPTNO = 10;

-- 실습 5-36 집합 연산자(MINUS)를 사용하여 출력하기
SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP 
MINUS
SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP 
WHERE DEPTNO = 10;

-- 실습 5-37 집합 연산자(INTERSECT)를 사용하여 출력하기
SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP 
INTERSECT
SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP 
WHERE DEPTNO = 10;

-- 잊기전에 한 번 더! P.125
-- 01
SELECT * 
FROM EMP 
WHERE ENAME LIKE '%S';

-- 02
SELECT EMPNO, ENAME, JOB, SAL, DEPTNO 
FROM EMP 
WHERE DEPTNO = 30 
AND JOB = 'SALESMAN';

-- 03_01
SELECT EMPNO, ENAME, JOB, SAL, DEPTNO 
FROM EMP 
WHERE DEPTNO IN(20, 30) 
AND SAL > 2000;

-- 03_02
SELECT EMPNO, ENAME, JOB, SAL, DEPTNO 
FROM EMP 
WHERE DEPTNO IN(20, 30) 
INTERSECT
SELECT EMPNO, ENAME, JOB, SAL, DEPTNO 
FROM EMP 
WHERE SAL > 2000;

-- 04 
SELECT * 
FROM EMP 
MINUS 
SELECT * 
FROM EMP 
WHERE SAL > 2000 
AND SAL <= 3000; 

-- 05 
SELECT ENAME, EMPNO, SAL, DEPTNO 
FROM EMP 
WHERE ENAME LIKE '%E%' 
AND DEPTNO = 30 
AND SAL NOT BETWEEN 1000 AND 2000;

-- 06 
SELECT * 
FROM EMP 
WHERE COMM IS NULL 
AND MGR IS NOT NULL 
AND JOB IN('MANAGER', 'CLERK') 
AND ENAME NOT LIKE '_L%';