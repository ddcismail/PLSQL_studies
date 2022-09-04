--SQL%FOUND : Kayit varsa:True / Kayit yoksa:False
--SQL%NOTFOUND : Kayit varsa:False / Kayit yoksa:True
--SQL%ROWCOUNT : Kayit sayisini verir.

DECLARE
	rec_emp 	employee2%rowtype
BEGIN
		--id si 50 olan departmanin maasina %20 zam yapıyoruz.
		--UPDATE [tablo adi] SET [yeni bilgiler] WHERE [sartlar]
	UPDATE EMPLOYEE2 SET SALARY=SALARY * 1.20 WHERE DEPARTMENT_ID =50;
	
	if sql%found then
		dbms_output.out_line( sql%rowcount || 'Kayit UPDATE edildi 1' );          -
	else
		dbms_output.out_line('UPDATE edilecek kayit bulunamadi a' );
	end if;
	
	if sql%notfound then
		dbms_output.out_line('UPDATE edilecek kayit bulunamadi b');          
	else
		dbms_output.out_line(sql%rowcount || 'Kayit UPDATE edildi 2');
	end if;
	
		--id si 100,80 olan departmani sayisini siliyoruz.
		--DELETE FROM [tablo adi] WHERE [sartlar]
	DELETE FROM EMPLOYEE2 WHERE DEPARTMENT_ID IN (100,80);  -- 100 VE 80 ID var idyelim tabloda.O zaman sql%found true döner.
	
	if sql%found then
		dbms_output.out_line( sql%rowcount || 'Kayit DELETE edildi 1' );          -
	else
		dbms_output.out_line('DELETE edilecek kayit bulunamadi a' );
	end if;
	
	if sql%notfound then
		dbms_output.out_line('DELETE edilecek kayit bulunamadi b');          
	else
		dbms_output.out_line(sql%rowcount || 'Kayit DELETE edildi 2');
	end if;
END;
