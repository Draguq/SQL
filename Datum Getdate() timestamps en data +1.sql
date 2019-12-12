select *
from dbo.Peronal_Todo_Main

select *
from dbo.Personal_Todo_sub

insert into 
	dbo.Personal_Todo_sub (MainTodoID,MainTodoText,SubTodoText,Invoerder,Dateinput,DateBefore,Done)
select 
	AutoID as mainTodoID, 
	ToDO as maintodotext, 
	'Hoe maakt een de database op 2 computers beschikbaar' as subtodotext, 
	'DavidB' as invoerder, 
	cast(getdate() as datetime) as dateinput,
	Cast(getdate() as datetime) as datebefore,
	0 as Done
from
	dbo.Peronal_Todo_Main
where
	Autoid = 1

insert into dbo.Personal_Todo_sub
values (1,'TestMain','TestSub', 'David', Cast(getdate() as datetime), Cast(getdate() as datetime), 0);



select *
from INFORMATION_SCHEMA.COLUMNS

select *
from dbo.Personal_Todo_sub

select Dateadd(day, 1, getdate())

SELECT Dateadd(day,1 ,(CAST(CAST(GETDATE() AS DATE) AS DATETIME)))

select (cast(cast(getdate() as date) as datetime))

select dateadd(day, 1, (cast(cast(getdate() as date) as datetime)))