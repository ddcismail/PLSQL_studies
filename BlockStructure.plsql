DECLARE 

 v_adi employees.firstname%type;
 v_soyadi employees.lastname%type;
 v_dtarihi employees.birthdate%type :=to_date('20.05.2022','dd.MM.yyyy');
 v_repo employees.reportsto%type;
 v_sistem_kullanici varchar2(50);
 v_kayit_zamani date;


BEGIN

--select into -- select sonucu gelen deger veya degerleri degiskenlere atamak icin kullanilir.

select user , sysdate into v_sistem_kullanici, v_kayit_zamani from dual;

select t.firistname, t.lastname, t.birthdate, t.reportsto
into v_adi, v_soyadi, v_dtarihi, v_repo from employees t where t.employeeid:=12;

insert into employees(employeeid,firstname,lastname,birthdate,reportsto)
                  values(2000,v_adi,v_soyadi,v_dtarihi,v_repo);
                  
   dbms_output.put_line('Sistem Kullanici Adi:'||v_sistem_kullanici||'Kayit Zamani:'||v_kayit_zamani);               
END;