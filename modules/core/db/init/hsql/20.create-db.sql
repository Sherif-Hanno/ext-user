-- begin SEC_USER
alter table SEC_USER add constraint FK_SEC_USER_DEPARTMENT_ID foreign key (DEPARTMENT_ID) references EXTUSER_DEPARTMENT(ID)^
create index IDX_SEC_USER_DEPARTMENT on SEC_USER (DEPARTMENT_ID)^
-- end SEC_USER
-- begin EXTUSER_REQUEST
alter table EXTUSER_REQUEST add constraint FK_EXTUSER_REQUEST_USER foreign key (USER_ID) references SEC_USER(ID)^
alter table EXTUSER_REQUEST add constraint FK_EXTUSER_REQUEST_DEPARTMENT foreign key (DEPARTMENT_ID) references EXTUSER_DEPARTMENT(ID)^
create index IDX_EXTUSER_REQUEST_DEPARTMENT on EXTUSER_REQUEST (DEPARTMENT_ID)^
create index IDX_EXTUSER_REQUEST_USER on EXTUSER_REQUEST (USER_ID)^
-- end EXTUSER_REQUEST
