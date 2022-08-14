DECLARE

sayac binary_integer;

BEGIN

loop
	sayac:= nvl(sayac,0)+1;  --null deger arar
	
	/*  if mod (sayac,2) := 0 then,
		contine;
		end if;
	*/	
	
	contine when mod(sayac,2) := 0 ;  -- Bu sekilde de yazabiliriz !!
	
	dbms_output.put_line('sayac= ' || sayac);
	
	
	/*  if sayac = 5 then,
		exit;
		end if;
	*/	
	
	exit when sayac = 5;
	
end loop;

END;