-- 1.Отсортируйте поле “зарплата” (salary) в порядке убывания и возрастания
select *
from staff
order by salary;

select *
from staff
order by salary desc;

-- 2. Выведите 5 максимальных зарплат (salary)
select *
from staff
order by salary desc
limit 5;


-- 3. Подсчитать суммарную зарплату(salary) по каждой специальности (speciality)
select speciality, sum(salary)
from staff
group by speciality;

-- 4. Найти количество сотрудников по специальности “Рабочий” (speciality) в возрасте от 24 до 42 лет.
select count(*)
from staff
where speciality='рабочий' and age between 24 and 49;

-- 5. Найти количество специальностей
select count(*)
from (select distinct speciality from staff) as temp;

-- 6. Вывести специальности, у которых средний возраст сотрудника меньше 44 лет
select speciality, avg(age)
from staff
group by speciality
having avg(age)<30;
