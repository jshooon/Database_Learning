-- 22.05.05 SELECT문의 기본 형식

-- * 04-1 실습용 테이블 살펴보기 *
-- 실습 4-1 EMP 테이블 구성 살펴보기
DESC EMP;

-- 실습 4-2 DEPT 테이블 구성 살펴보기
DESC DEPT;

-- 실습 4-3 SALGRADE 테이블 구성 살펴보기
DESC SALGRADE;

-- * 04-2 데이터를 조회하는 3가지 방법 *
-- 셀렉션(selection) : 행 단위로 원하는 데이터 조회하는 방식
-- 프로젝션(projection) : 열 단위로 원하는 데이터 조회하는 방식
-- (셀렉션과 프로젝션을 함께 사용하면 원하는 행의 특정 열만 조회 가능)
-- 조인(join) : 두 개 이상의 테이블을 양옆에 연결하여 마치 하나의 테이블인 것처럼 데이터를 조회하는 방식

-- * 04-3 SQL의 기본 뼈대, SELECT절과 FROM절 *
-- 실습 4-4 EMP 테이블 전체 열 조회하기
SELECT * 
FROM EMP;

-- 실습 4-5 열을 쉼표로 구분하여 출력하기
SELECT EMPNO, ENAME, DEPTNO 
FROM EMP;

-- * 04-4 중복 데이터를 삭제하는 DISTINCT *
SELECT DEPTNO 
FROM EMP;

-- 실습 4-6 DISTINCT로 열의 중복 제거하기(열이 한 개인 경우)
SELECT DISTINCT DEPTNO 
FROM EMP;

-- 실습 4-7 DISTINCT로 열의 중복 제거하기(열이 여러 개인 경우)
SELECT DISTINCT JOB, DEPTNO 
FROM EMP;

-- 실습 4-8 ALL로 중복되는 열 제거 없이 그대로 출력하기
-- ALL은 DISTINCT와 반대 DISTINCT를 사용하지 않고 조회한 것과 같다.
SELECT ALL JOB, DEPTNO 
FROM EMP;

-- * 04-5 한눈에 보기 좋게 별칭 설정하기 *
-- 실습 4-9 열에 연산식을 사용하여 출력하기
SELECT ENAME, SAL, SAL*12+COMM, COMM 
FROM EMP;

-- 실습 4-10 곱하기를 사용하지 않고 사원의 연간 총 수입 출력하기
SELECT ENAME, SAL, SAL+SAL+SAL+SAL+SAL+SAL+SAL+SAL+SAL+SAL+SAL+SAL+COMM, COMM 
FROM EMP;

-- 실습 4-11 별칭을 사용하여 사원의 연간 총 수입 출력하기
SELECT ENAME, SAL, SAL*12+COMM AS ANNSAL, COMM 
FROM EMP;

-- * 04-6 원하는 순서로 출력 데이터를 정렬하는 ORDER BY *
-- SELECT문의 가장 마지막절에 사용된다.
-- 실습 4-12 EMP 테이블의 모든 열을 급여 기준으로 오름차순 정렬하기.
SELECT * 
FROM EMP 
ORDER BY SAL;

-- 1분복습 테이블의 모든 열을 사원번호 기준으로 오름차순 정렬하기.
SELECT *
FROM EMP 
ORDER BY EMPNO;

-- 실습 4-13 EMP 테이블의 모든 열을 급여 기준으로 내림차순 정렬하기.
SELECT * 
FROM EMP 
ORDER BY SAL DESC;

-- 1분복습 테이블의 모든 열을 사원번호 기준으로 내림차순 정렬하기.
SELECT *
FROM EMP 
ORDER BY EMPNO DESC;

-- 실습 4-14 EMP 테이블의 전체 열을 부서 번호(오름차순)와 급여(내림차순)로 정렬하기
SELECT * 
FROM EMP 
ORDER BY DEPTNO ASC, SAL DESC;

-- QUIZ 02 EMP 테이블의 JOB 열 데이터를 중복 없이 출력해 보세요.
SELECT DISTINCT JOB 
FROM EMP;

-- QUIZ 03 다음의 모든 조건을 만족하는 SQL문을 작성해 보세요. 92p
SELECT EMPNO AS EMPLOYEE_NO, ENAME AS EMPLOYEE_NAME, JOB, MGR AS MANAGER, HIREDATE, 
        SAL AS SALARY, COMM AS COMMISSION, DEPTNO AS DEPARTMENT_NO
FROM EMP 
ORDER BY DEPTNO DESC, ENAME;
