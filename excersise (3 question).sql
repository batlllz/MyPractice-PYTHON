select Cr_Title , Bk_Title from course , book ;

select Bk_Title from BOOK as booknames  where Bk_TotalCopies BETWEEN 50 AND 100;

select distinct Br_Dept from BORROWER  where Br_City ='seeb' order by Br_Dept DESC ;