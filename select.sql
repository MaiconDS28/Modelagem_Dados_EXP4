-- SELECT script
SELECT * FROM Paciente ORDER BY nome ASC;

SELECT p.nome AS paciente, m.nome AS medico, pr.diagnostico
FROM Prontuario pr
JOIN Consulta c ON c.id_consulta = pr.id_consulta
JOIN Paciente p ON p.id_paciente = c.id_paciente
JOIN Medico m ON m.id_medico = c.id_medico;

SELECT * FROM Agenda_Horario
WHERE id_medico = 1 AND disponivel = TRUE;

SELECT * FROM Prontuario
ORDER BY data_registro DESC
LIMIT 5;

SELECT pr.id_prontuario, pm.medicamento, pm.instrucoes
FROM Prescricao_Medica pm
JOIN Prontuario pr ON pr.id_prontuario = pm.id_prontuario
WHERE pr.id_prontuario = 1;
