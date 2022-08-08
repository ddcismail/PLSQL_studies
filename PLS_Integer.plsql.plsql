DECLARE 


p1 PLS_INTEGER :=2147483647;
p2 PLS_INTEGER :=0;
b NUMBER;

BEGIN


b:=p1+p2;
dbms_output.put_line(b);
--to_char istedigimiz formatta yazmak icin kullanilir.
dbms_output.put_line(to_char(b,'999,999,999,9999.99')); 


END; 