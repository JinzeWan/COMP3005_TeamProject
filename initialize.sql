drop table if exists gamer;
drop table if exists game;
drop table if exists achievements;
drop table if exists gamer_achi;


create table gamer(
    gamer_id integer primary key not null,
    nickname text not null
);

create table game(
    game_id integer primary key not null,
    game_name text not null,
    game_discription text
);

create table achievements(
    a_id integer not null,
    game_id integer not null,
    title text not null,
    discription text,
    primary key (a_id, game_id),
    foreign key (game_id) references game(game_id)
);

create table gamer_achi(
    gamer_id integer not null,
    game_id integer not null,
    a_id integer not null,
    primary key (gamer_id, game_id, a_id),
    foreign key (gamer_id) references gamer(gamer_id),
    foreign key (game_id) references game(game_id),
    foreign key (a_id) references achievements(a_id)
);



insert into gamer(gamer_id, nickname) values (1, "Aieeeee");
insert into gamer(gamer_id, nickname) values (2, "Budai");
insert into gamer(gamer_id, nickname) values (3, "Chris___tttinaaa");
insert into gamer(gamer_id, nickname) values (4, "D day");
insert into gamer(gamer_id, nickname) values (5, "Ezio");

insert into game(game_id, game_name) values (101, "Crusader Kings III");
insert into game(game_id, game_name) values (102, "Europa Universalis IV");
insert into game(game_id, game_name, game_discription) values (103, "Victoria III", "When will I can play this game?");
insert into game(game_id, game_name) values (104, "Hearts of Iron IV");
insert into game(game_id, game_name) values (105, "Stellaris");

insert into achievements(a_id, game_id, title) values (1, 101, "It's not a Cult!");
insert into achievements(a_id, game_id, title) values (2, 101, "Until Death Do Us Part");
insert into achievements(a_id, game_id, title) values (3, 101, "A House of My Own");
insert into achievements(a_id, game_id, title) values (4, 101, "Not So Feudal System");
insert into achievements(a_id, game_id, title) values (5, 101, "The Emerald Isle");
insert into achievements(a_id, game_id, title) values (1, 102, "A Golden Empire");
insert into achievements(a_id, game_id, title) values (2, 102, "AAA credit");
insert into achievements(a_id, game_id, title) values (3, 102, "Czechs and Balances");
insert into achievements(a_id, game_id, title) values (4, 102, "Isn't this the way to India?");
insert into achievements(a_id, game_id, title) values (5, 102, "Kow-Tow");
insert into achievements(a_id, game_id, title) values (1, 103, "VA1");
insert into achievements(a_id, game_id, title) values (2, 103, "VA2");
insert into achievements(a_id, game_id, title) values (3, 103, "VA3");
insert into achievements(a_id, game_id, title) values (4, 103, "VA4");
insert into achievements(a_id, game_id, title) values (5, 103, "VA5");
insert into achievements(a_id, game_id, title) values (1, 104, "Braaaaains!");
insert into achievements(a_id, game_id, title) values (2, 104, "Hellenic Civility");
insert into achievements(a_id, game_id, title) values (3, 104, "Play It, Sam");
insert into achievements(a_id, game_id, title) values (4, 104, "We'll Build it in a Day");
insert into achievements(a_id, game_id, title) values (5, 104, "Australia-Hungary");
insert into achievements(a_id, game_id, title) values (1, 105, "Brave New World");
insert into achievements(a_id, game_id, title) values (2, 105, "Clever Girl");
insert into achievements(a_id, game_id, title) values (3, 105, "Faster, Stronger, Better");
insert into achievements(a_id, game_id, title) values (4, 105, "Imperial Highway");
insert into achievements(a_id, game_id, title) values (5, 105, "Paradise Found");

insert into gamer_achi(gamer_id, game_id, a_id) values (1, 101, 1);
insert into gamer_achi(gamer_id, game_id, a_id) values (1, 101, 4);
insert into gamer_achi(gamer_id, game_id, a_id) values (1, 105, 3);
insert into gamer_achi(gamer_id, game_id, a_id) values (1, 105, 5);
insert into gamer_achi(gamer_id, game_id, a_id) values (2, 103, 4);
insert into gamer_achi(gamer_id, game_id, a_id) values (2, 103, 5);
insert into gamer_achi(gamer_id, game_id, a_id) values (2, 104, 1);
insert into gamer_achi(gamer_id, game_id, a_id) values (2, 104, 5);
insert into gamer_achi(gamer_id, game_id, a_id) values (3, 103, 3);
insert into gamer_achi(gamer_id, game_id, a_id) values (3, 103, 4);
insert into gamer_achi(gamer_id, game_id, a_id) values (3, 105, 1);
insert into gamer_achi(gamer_id, game_id, a_id) values (3, 105, 2);
insert into gamer_achi(gamer_id, game_id, a_id) values (4, 102, 1);
insert into gamer_achi(gamer_id, game_id, a_id) values (4, 102, 3);
insert into gamer_achi(gamer_id, game_id, a_id) values (4, 104, 2);
insert into gamer_achi(gamer_id, game_id, a_id) values (4, 104, 5);
insert into gamer_achi(gamer_id, game_id, a_id) values (5, 101, 3);
insert into gamer_achi(gamer_id, game_id, a_id) values (5, 101, 4);
insert into gamer_achi(gamer_id, game_id, a_id) values (5, 102, 1);
insert into gamer_achi(gamer_id, game_id, a_id) values (5, 102, 5);

