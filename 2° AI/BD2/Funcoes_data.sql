Função data
nomes das partes de data:
Year = yy, yyyy
Month = mm, m
Dayofyear = dy, y
Day = dd, d
Week = wk, ww
Hour = hh
Minute = mi, n
Second = ss, s

DATEADD (parte, numero, data) = adiciona um valor a parte de uma data
DATEDIFF (parte, data inicial, data final) = subtrai a data inicial da data final, indicando o resultado na unidade definida em “parte”
GETDATE() = retorna a data atual do sistema
DATENAME (parte, data) = retorna o nome da parte de uma data
DATEPART(parte, data) = retorna a parte de uma data
exemplo:
SELECT GETDATE() 'Dt Atual', dateadd(day,10, getdate()) 'Adicionar valor(es) a Dt',
DATEDIFF (day, getdate(), getdate()) 'Diferença entre datas',
DATENAME (day, getdate()) 'Parte da data', DATEPART(mm, getdate())' Parte da data';  
