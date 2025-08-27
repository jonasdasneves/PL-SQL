SET SERVEROUTPUT ON;

DECLARE
    v_id   NUMBER := 1;
    v_nota NUMBER;
BEGIN
    SELECT
        nota
    INTO v_nota
    FROM
        alunos
    WHERE
        id_aluno = v_id;

    dbms_output.put_line('A NOTA DO ALUNO INFORMADO É: ' || v_nota);
END;

--===========================================================================================--

DECLARE
    v_id   NUMBER := 1;
    v_nota NUMBER := 10;
BEGIN
    UPDATE alunos
    SET
        nota = v_nota
    WHERE
        id_aluno = v_id;

    COMMIT;
END;

--===========================================================================================--

DECLARE
    v_id NUMBER := 1;
BEGIN
    DELETE FROM alunos
    WHERE
        id_aluno = v_id;

    COMMIT;
END;