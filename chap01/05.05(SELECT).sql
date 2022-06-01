-- 22.05.05 SELECT���� �⺻ ����

-- * 04-1 �ǽ��� ���̺� ���캸�� *
-- �ǽ� 4-1 EMP ���̺� ���� ���캸��
DESC EMP;

-- �ǽ� 4-2 DEPT ���̺� ���� ���캸��
DESC DEPT;

-- �ǽ� 4-3 SALGRADE ���̺� ���� ���캸��
DESC SALGRADE;

-- * 04-2 �����͸� ��ȸ�ϴ� 3���� ��� *
-- ������(selection) : �� ������ ���ϴ� ������ ��ȸ�ϴ� ���
-- ��������(projection) : �� ������ ���ϴ� ������ ��ȸ�ϴ� ���
-- (�����ǰ� ���������� �Բ� ����ϸ� ���ϴ� ���� Ư�� ���� ��ȸ ����)
-- ����(join) : �� �� �̻��� ���̺��� �翷�� �����Ͽ� ��ġ �ϳ��� ���̺��� ��ó�� �����͸� ��ȸ�ϴ� ���

-- * 04-3 SQL�� �⺻ ����, SELECT���� FROM�� *
-- �ǽ� 4-4 EMP ���̺� ��ü �� ��ȸ�ϱ�
SELECT * 
FROM EMP;

-- �ǽ� 4-5 ���� ��ǥ�� �����Ͽ� ����ϱ�
SELECT EMPNO, ENAME, DEPTNO 
FROM EMP;

-- * 04-4 �ߺ� �����͸� �����ϴ� DISTINCT *
SELECT DEPTNO 
FROM EMP;

-- �ǽ� 4-6 DISTINCT�� ���� �ߺ� �����ϱ�(���� �� ���� ���)
SELECT DISTINCT DEPTNO 
FROM EMP;

-- �ǽ� 4-7 DISTINCT�� ���� �ߺ� �����ϱ�(���� ���� ���� ���)
SELECT DISTINCT JOB, DEPTNO 
FROM EMP;

-- �ǽ� 4-8 ALL�� �ߺ��Ǵ� �� ���� ���� �״�� ����ϱ�
-- ALL�� DISTINCT�� �ݴ� DISTINCT�� ������� �ʰ� ��ȸ�� �Ͱ� ����.
SELECT ALL JOB, DEPTNO 
FROM EMP;

-- * 04-5 �Ѵ��� ���� ���� ��Ī �����ϱ� *
-- �ǽ� 4-9 ���� ������� ����Ͽ� ����ϱ�
SELECT ENAME, SAL, SAL*12+COMM, COMM 
FROM EMP;

-- �ǽ� 4-10 ���ϱ⸦ ������� �ʰ� ����� ���� �� ���� ����ϱ�
SELECT ENAME, SAL, SAL+SAL+SAL+SAL+SAL+SAL+SAL+SAL+SAL+SAL+SAL+SAL+COMM, COMM 
FROM EMP;

-- �ǽ� 4-11 ��Ī�� ����Ͽ� ����� ���� �� ���� ����ϱ�
SELECT ENAME, SAL, SAL*12+COMM AS ANNSAL, COMM 
FROM EMP;

-- * 04-6 ���ϴ� ������ ��� �����͸� �����ϴ� ORDER BY *
-- SELECT���� ���� ���������� ���ȴ�.
-- �ǽ� 4-12 EMP ���̺��� ��� ���� �޿� �������� �������� �����ϱ�.
SELECT * 
FROM EMP 
ORDER BY SAL;

-- 1�к��� ���̺��� ��� ���� �����ȣ �������� �������� �����ϱ�.
SELECT *
FROM EMP 
ORDER BY EMPNO;

-- �ǽ� 4-13 EMP ���̺��� ��� ���� �޿� �������� �������� �����ϱ�.
SELECT * 
FROM EMP 
ORDER BY SAL DESC;

-- 1�к��� ���̺��� ��� ���� �����ȣ �������� �������� �����ϱ�.
SELECT *
FROM EMP 
ORDER BY EMPNO DESC;

-- �ǽ� 4-14 EMP ���̺��� ��ü ���� �μ� ��ȣ(��������)�� �޿�(��������)�� �����ϱ�
SELECT * 
FROM EMP 
ORDER BY DEPTNO ASC, SAL DESC;

-- QUIZ 02 EMP ���̺��� JOB �� �����͸� �ߺ� ���� ����� ������.
SELECT DISTINCT JOB 
FROM EMP;

-- QUIZ 03 ������ ��� ������ �����ϴ� SQL���� �ۼ��� ������. 92p
SELECT EMPNO AS EMPLOYEE_NO, ENAME AS EMPLOYEE_NAME, JOB, MGR AS MANAGER, HIREDATE, 
        SAL AS SALARY, COMM AS COMMISSION, DEPTNO AS DEPARTMENT_NO
FROM EMP 
ORDER BY DEPTNO DESC, ENAME;
