--SQL%FOUND : Kayit varsa:True / Kayit yoksa:False
--SQL%NOTFOUND : Kayit varsa:False / Kayit yoksa:True
--SQL%ROWCOUNT : Kayit sayisini verir.

DECLARE
	rec_emp 	employee2%rowtype
BEGIN

	select * into rec_emp from employee2 where employee_id = 100 ;
	
	if sql%found then
		dbms_output.out_line('Kayit var' || sql%rowcount);          --sql%rowcount = kayit sayisini verir.
	else
		dbms_output.out_line('Kayit yok' );
	end if;
	
	if sql%notfound then
		dbms_output.out_line('Kayit yok 1' );          --sql%rowcount = kayit sayisini verir.
	else
		dbms_output.out_line('Kayit var 1' || sql%rowcount);
	end if;
	
	exception when no_data_found then
		dbms_output.out_line('Kayit yok 2' );    
		
END;
