-- 22.05.06 �� ��Ȯ�ϰ� �پ��ϰ� ����� ����ϴ� WHERE���� ������

-- �ǽ� 5-1 EMP ���̺��� ��� �� ����ϱ�
SELECT * 
FROM EMP;

-- �ǽ� 5-2 �μ���ȣ�� 30���� �����͸� ����ϱ�
SELECT * 
FROM EMP 
WHERE DEPTNO = 30;

-- 1�к��� ���� SQL���� ����� ��� ��ȣ�� 7782�� ��������� �������� �ڵ带 ä�� ������
SELECT * 
FROM EMP
WHERE EMPNO = 7782;

-- �ǽ� 5-3 AND �����ڷ� ���� ���� ���ǽ� ����ϱ�
SELECT * 
FROM EMP 
WHERE DEPTNO = 30 
AND JOB = 'SALESMAN';

-- 1�к��� �ǽ� 5-3�� �����Ͽ� ���� SQL���� ����� ��� ��ȣ�� 7499�̰�,
-- �μ� ��ȣ�� 30�� ��� ������ �������� �ڵ带 ä�� ������.
SELECT * 
FROM EMP 
WHERE EMPNO = 7499 
AND DEPTNO = 30;

-- �ǽ� 5-4 OR �����ڷ� ���� ���� ��� ���� ����ϱ�
SELECT * 
FROM EMP 
WHERE DEPTNO = 30 
OR JOB = 'CLERK';

-- 1�к��� �ǽ� 5-4�� �����Ͽ� ���� SQL���� ����� �μ� ��ȣ�� 20�̰ų�,
-- ������ SALESMAN�� ��� ������ �������� �ڵ带 ä�� ������.
SELECT * 
FROM EMP 
WHERE DEPTNO = 20 
OR JOB = 'SALESMAN';

-- �ǽ� 5-5 ���� ��� �����ڸ� ����� ��
SELECT * 
FROM EMP 
WHERE SAL * 12 = 36000;

-- �ǽ� 5-6 ��� �� �����ڸ� ����Ͽ� ����ϱ�
SELECT * 
FROM EMP 
WHERE SAL >= 3000;

-- 1�к��� ���� SQL���� ����� �޿��� 2500 �̻��̰� ������ ANALYST�� ��� ������
-- �������� �ڵ带 ä�� ������
SELECT * 
FROM EMP 
WHERE SAL >= 2500 
AND JOB = 'ANALYST';

-- �ǽ� 5-7 ���ڸ� ��� �� �����ڷ� ���ϱ�(�� ���ڿ��� ���� �ϳ��� ��)
SELECT * 
FROM EMP 
WHERE ENAME >= 'F';

-- �ǽ� 5-8 ���ڿ��� ��� �� �����ڷ� ���ϱ�(�� ���ڿ��� ���� ���� ���� ��)
SELECT * 
FROM EMP 
WHERE ENAME <= 'FORZ';

-- �ǽ� 5-9 � �� ������(!=)�� ����Ͽ� ����ϱ�
SELECT * 
FROM EMP 
WHERE SAL != 3000;

-- �ǽ� 5-10 � �� ������(<>)�� ����Ͽ� ����ϱ�
SELECT * 
FROM EMP 
WHERE SAL <> 3000;

-- �ǽ� 5-11 � �� ������(^=)�� ����Ͽ� ����ϱ�
SELECT * 
FROM EMP 
WHERE SAL ^= 3000;

-- �ǽ� 5-12 NOT �����ڸ� ����Ͽ� ����ϱ�
SELECT * 
FROM EMP 
WHERE NOT SAL = 3000;

-- �ǽ� 5-13 OR �����ڸ� ����Ͽ� ���� �� ������ �����ϴ� ������ ����ϱ�
SELECT * 
FROM EMP 
WHERE JOB = 'MANAGER'
    OR JOB = 'SALESMAN'
    OR JOB = 'CLERK';
    
-- �ǽ� 5-14 IN �����ڸ� ����Ͽ� ����ϱ�
SELECT * 
FROM EMP 
WHERE JOB IN('MANAGER', 'SALESMAN', 'CLERK');

-- �ǽ� 5-15 � �� �����ڿ� AND �����ڸ� ����Ͽ� ����ϱ�
SELECT * 
FROM EMP 
WHERE JOB != 'MANAGER'
    AND JOB <> 'SALESMAN'
    AND JOB ^= 'CLERK';

-- �ǽ� 5-16 IN �����ڿ� �� ���� �����ڸ� ����Ͽ� ����ϱ�
SELECT * 
FROM EMP 
WHERE JOB NOT IN('MANAGER', 'SALESMAN', 'CLERK');

-- 1�к��� IN �����ڸ� ����Ͽ� ���� SQL���� ����� �μ� ��ȣ�� 
-- 10, 20���� ��� ������ �������� �ڵ带 ä�� ������.
SELECT *
FROM EMP 
WHERE DEPTNO IN(10, 20);

-- �ǽ� 5-17 ��� �� �����ڿ� AND �����ڸ� ����Ͽ� ����ϱ�
SELECT * 
FROM EMP 
WHERE SAL >= 2000 
AND SAL <= 3000;

-- �ǽ� 5-18 BETWEEN A AND B �����ڸ� ����Ͽ� ����ϱ�
SELECT * 
FROM EMP 
WHERE SAL BETWEEN 2000 AND 3000;

-- �ǽ� 5-19 BETWEEN A AND B �����ڿ� NOT �����ڸ� ����Ͽ� ����ϱ�
SELECT * 
FROM EMP 
WHERE SAL NOT BETWEEN 2000 AND 3000; 

-- �ǽ� 5-20 LIKE ������ ����Ͽ� ����ϱ� 
SELECT * 
FROM EMP 
WHERE ENAME LIKE 'S%';

-- �ǽ� 5-21 ��� �̸��� �� ��° ���ڰ� L�� ����� ����ϱ�
SELECT * 
FROM EMP 
WHERE ENAME LIKE '_L%';

-- �ǽ� 5-22 ��� �̸��� AM�� ���ԵǾ� �ִ� ��� �����͸� ����ϱ�
SELECT * 
FROM EMP 
WHERE ENAME LIKE '%AM%';

-- �ǽ� 5-23 ��� �̸��� AM�� ���ԵǾ� ���� ���� ��� ������ ����ϱ�
SELECT * 
FROM EMP 
WHERE ENAME NOT LIKE '%AM%';

-- ���ϵ� ī�� ���ڰ� ������ �Ϻ��� ���
SELECT * 
FROM EMP 
WHERE ENAME LIKE '%A\_A%' ESCAPE '\';

-- �ǽ� 5-24 ��Ī�� ����Ͽ� �� �̸� ����ϱ�
-- ���� 0�� �� 0�� �����Ѵٴ� ���̹Ƿ�, NULL�� ȥ������ �ʵ��� ��������.
SELECT ENAME, SAL, SAL*12+COMM AS ANNSAL, COMM 
FROM EMP;

-- �ǽ� 5-25 � �� �����ڷ� NULL ���ϱ�
SELECT * 
FROM EMP 
WHERE COMM = NULL;

-- �ǽ� 5-26 IS NULL �����ڸ� ����Ͽ� ����ϱ�
SELECT * 
FROM EMP 
WHERE COMM IS NULL;

-- �ǽ� 5-27 ���� ����� �ִ� ��� �����͸� ����ϱ�
SELECT * 
FROM EMP 
WHERE MGR IS NOT NULL;

-- �ǽ� 5-28 AND �����ڿ� IS NULL ������ ����ϱ�
SELECT * 
FROM EMP 
WHERE SAL > NULL 
AND COMM IS NULL;

-- �ǽ� 5-29 OR �����ڿ� IS NULL ������ ����ϱ�
SELECT * 
FROM EMP 
WHERE SAL > NULL 
OR COMM IS NULL;

-- �ǽ� 5-30 ���� ������(UNION)�� ����Ͽ� ����ϱ�
SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP 
WHERE DEPTNO = 10 
UNION 
SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP 
WHERE DEPTNO = 20;

-- �ǽ� 5-31 ���� ������(UNION)�� ����Ͽ� ����ϱ�(��� �� ������ �ٸ� ��)
SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP 
WHERE DEPTNO = 10 
UNION 
SELECT EMPNO, ENAME, SAL 
FROM EMP 
WHERE DEPTNO = 20;

-- �ǽ� 5-32 ���� ������(UNION)�� ����Ͽ� ����ϱ�(��� ���� �ڷ����� �ٸ� ��)
SELECT EMPNO, ENAME, SAL, DEPTNO
FROM EMP 
WHERE DEPTNO = 10 
UNION 
SELECT ENAME, EMPNO, DEPTNO, SAL
FROM EMP 
WHERE DEPTNO = 20;

-- �ǽ� 5-33 ���� ������(UNION)�� ����Ͽ� ����ϱ�(��� �� ������ �ڷ����� ���� ��)
SELECT EMPNO, ENAME, SAL, DEPTNO
FROM EMP 
WHERE DEPTNO = 10 
UNION 
SELECT SAL, JOB, DEPTNO, SAL
FROM EMP 
WHERE DEPTNO = 20;

-- �ǽ� 5-34 ���� ������(UNION)�� ����Ͽ� ����ϱ�(��� ��� �����Ͱ� ���� ��)
SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP 
WHERE DEPTNO = 10 
UNION 
SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP 
WHERE DEPTNO = 10;

-- �ǽ� 5-35 ���� ������(UNION ALL)�� ����Ͽ� ����ϱ�(��� ��� �����Ͱ� ���� ��)
SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP 
WHERE DEPTNO = 10 
UNION ALL
SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP 
WHERE DEPTNO = 10;

-- �ǽ� 5-36 ���� ������(MINUS)�� ����Ͽ� ����ϱ�
SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP 
MINUS
SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP 
WHERE DEPTNO = 10;

-- �ǽ� 5-37 ���� ������(INTERSECT)�� ����Ͽ� ����ϱ�
SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP 
INTERSECT
SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP 
WHERE DEPTNO = 10;

-- �ر����� �� �� ��! P.125
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