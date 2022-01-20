alter table customer
add constraint ck_email check(email like '% @% . %')
GO
