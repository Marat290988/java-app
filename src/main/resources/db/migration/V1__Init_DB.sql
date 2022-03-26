create sequence hibernate_sequence start with 1 increment by  1;

create table message (
    id number(19,0) not null,
    filename varchar2(255 char),
    tag varchar2(255 char),
    text varchar2(2048 char),
    user_id number(19,0),
    primary key (id)
);

create table swusr (
    id number(19,0) not null,
    activation_code varchar2(255 char),
    active number(1, 0) not null,
    email varchar2(255 char),
    password varchar2(255 char) not null,
    username varchar2(255 char) not null,
    primary key (id)
);
create table user_role (
    user_id number(19,0) not null,
    roles varchar2(255 char)
);

alter table message
    add constraint message_user_fk
    foreign key (user_id) references swusr;

alter table user_role
    add constraint user_role_fk
    foreign key (user_id) references swusr;
