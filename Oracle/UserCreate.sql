-- Log in as SYSDBA and switch to the XEPDB1 container
sqlplus / as sysdba
ALTER SESSION SET CONTAINER = XEPDB2;
-- Create a new user BenR with the password oracle
CREATE USER BenR IDENTIFIED BY oracle;
-- Grant required privileges
GRANT CONNECT, RESOURCE TO BenR;
-- Optional: Grant DBA role if needed
GRANT DBA TO BenR;

-- Optional: Set default tablespace
ALTER USER BenR DEFAULT TABLESPACE users;


