/*create database javaEEFinal;
use javaEEFinal;*/

/*drop table news;*/

/*create table news(
id char(32) primary key,
title varchar(100) not null,
createTime date not null,
content varchar(max),
creator varchar(100)
)*/ 

/*create table loginTable(
userId char(5) primary key,
uPassword nvarchar(100) not null,
identity varchar(20)
)*/

/*create table tempNews(
id char(32) primary key,
title varchar(100) not null,
createTime date not null,
content varchar(max),
creator varchar(100)
)*/

/*create table newsComments(
id char(32) primary key,
newsid char(32),
userId char(5),
comment varchar(200),
createTime date not null
)*/

/*-- 创建资源主表
CREATE TABLE resourceTable (
    resourceId varchar(32) PRIMARY KEY,
    title nvarchar(255) not null, 
    publishTime date not null, 
    publishKinds varchar(20) not null,
);

-- 创建资源链接表（一个资源可能有多个文件）
CREATE TABLE resourceLink (
    resourceId varchar(32) not null,      
    filePath nvarchar(500) not null, 
);*/

-- 创建通知主表
CREATE TABLE noticeTable (
    noticeId varchar(32) PRIMARY KEY,
    title varchar(255) not null,
    publishTime DATE not null,
    publishKinds varchar(20) not null,
	content nvarchar(MAX)
);

-- 创建通知链接表（一个通知可能有多个文件）
CREATE TABLE noticeLink (
    noticeId varchar(32) not null,      
    filePath nvarchar(500) not null,
);
