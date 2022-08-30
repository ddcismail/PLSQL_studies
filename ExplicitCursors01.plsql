--BEGIN END arasında SELECT sadece 1 kayit okur. Eger birden fazla kayit okunacaksa CORSOR kullanmak zorundayiz.
DECLARE 
    CURSOR c_emp IS select employee_id,last_name from employees order by employee_id;
    wemployee_id    employees.employee_id%type;
    wlast_name      employees.last_name%type;
BEGIN 

    OPEN c_emp;
    
    LOOP
    
    FETCH c_emp into wemployee_id,wlast_name;
    EXIT WHEN c_emp%notfound;
    dbms_output.put_line('Sira No:' || c_emp%rowcount || 'Sicil No:' || wemployee_id || ' Soyisim:' || wlast_name);
    END LOOP;
    
    CLOSE c_emp;

END