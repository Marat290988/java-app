INSERT INTO swusr (id, username, password, active) VALUES (1, 'admin', '123', 1);

insert into user_role (user_id, roles)
values (1, 'USER');

insert into user_role (user_id, roles)
values (1, 'ADMIN');

