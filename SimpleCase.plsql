DECLARE

sayi            number:=&sayi;
cikti           varchar2(2000);

BEGIN



CASE mod(sayi,2)
    when 1 then cikti := sayi||' Tek Sayidir';
    else        cikti := sayi||' Çift Sayidir';
END CASE; 

dbms_output.put_line(cikti);

END; 