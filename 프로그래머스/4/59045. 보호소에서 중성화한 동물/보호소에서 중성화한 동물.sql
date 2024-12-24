SELECT O.ANIMAL_ID, O.ANIMAL_TYPE, O.NAME
FROM ANIMAL_INS I JOIN ANIMAL_OUTS O ON I.ANIMAL_ID = O.ANIMAL_ID
WHERE I.SEX_UPON_INTAKE != O.SEX_UPON_OUTCOME 
AND O.SEX_UPON_OUTCOME IN ('Neutered Male', 'Spayed Female')
GROUP BY O.ANIMAL_ID, O.ANIMAL_TYPE, O.NAME
ORDER BY O.ANIMAL_ID;