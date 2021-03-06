-- begin EXTUSER_DEPARTMENT
create table EXTUSER_DEPARTMENT (
    ID varchar(36) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    VERSION integer not null,
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255) not null,
    TELEPHONE varchar(255),
    ROOM_NUMBER varchar(255),
    --
    primary key (ID)
)^
-- end EXTUSER_DEPARTMENT
-- begin SEC_USER
alter table SEC_USER add column ADDRESS varchar(255) ^
alter table SEC_USER add column DEPARTMENT_ID varchar(36) ^
alter table SEC_USER add column DTYPE varchar(100) ^
update SEC_USER set DTYPE = 'extuser$ExtUser' where DTYPE is null ^
-- end SEC_USER
-- begin EXTUSER_REQUEST
create table EXTUSER_REQUEST (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    TEXT longvarchar not null,
    USER_ID varchar(36) not null,
    DEPARTMENT_ID varchar(36),
    --
    primary key (ID)
)^
-- end EXTUSER_REQUEST
-- begin EXTUSER_REQUEST_TAG
create table EXTUSER_REQUEST_TAG (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255) not null,
    --
    primary key (ID)
)^
-- end EXTUSER_REQUEST_TAG
-- begin EXTUSER_REQUEST_REQUEST_TAG_LINK
create table EXTUSER_REQUEST_REQUEST_TAG_LINK (
    REQUEST_ID varchar(36) not null,
    REQUEST_TAG_ID varchar(36) not null,
    primary key (REQUEST_ID, REQUEST_TAG_ID)
)^
-- end EXTUSER_REQUEST_REQUEST_TAG_LINK
