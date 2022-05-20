insert INTO category(name) VALUES ('Доски и лыжи'),('Крепления'),('Ботинки'),('Одежда'),('Инструменты'),('Разное'); /*Запрос на добавление категории*/
insert into bet(date, amount, id_user,id_lot) values ('2022-05-20 12:00:00.000000', 5000, 1, 1), ('2022-05-20 12:00:00.000000', 10000, 2, 2);
insert into user(registration_date, email, name, password, avatar, contact) values ('2022-05-20 12:00:00.000000', 'test1@mail.ru', 'Artem', '12345', 'img.jpeg', '+79254785252'),
                                                                              ('2022-05-20 12:00:00.000000', 'test2@mail.ru', 'Sanya', '12345', 'img.jpeg', '+79277884742');
insert into lot(id_user, id_category,id_winner, create_date, name, description, image, start_price, end_date, step) values (1, 1, null, '2022-05-17 10:20:00.000000', 'Хороший товар',
                                                                                                                           'Подойдет', 'image,jpeg', 10000, '2022-05-20 23:59:59.000000', 1000),
                                                                                                                           (1, 1, null, '2022-05-17 10:20:00.000000', 'Плохой товар',
                                                                                                                            'Неподойдет', 'image,jpeg', 1000, '2022-05-20 23:59:59.000000', 100);
select * from category
select lot.name, start_price, image, bet.amount as 'Последня ставка', count(bet.id_lot) as 'Количество ставок', category.name from lot inner join bet on bet.id_lot = lot.id_lot inner join category on
category.id_category = lot.id_category where id_winner is null GROUP by lot.id_lot, lot.name, start_price, image, bet.amount order by create_date desc
SELECT id_lot, lot.name as 'Лот' , category.name as 'Категория' FROM lot INNER JOIN category ON lot.id_category = category.id_category 

UPDATE lot SET name = 'Теперь достойно' where id_lot = 2

SELECT id_bet, bet.id_user as 'Пользователь',date as 'Дата ставки',amount as 'Сумма', lot.id_lot FROM bet INNER JOIN user ON bet.id_user = user.id_user INNER join lot on lot.id_lot = bet.id_lot WHERE DATE(date) = CURRENT_DATE order by id_bet desc;