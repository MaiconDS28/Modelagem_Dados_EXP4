-- SELECT script

-- Listar pacientes ordenados por nome
SELECT id_paciente, nome, cpf, data_nascimento, endereco, telefone
FROM Paciente
ORDER BY nome ASC;

-- Consultas com JOIN: prontuário + paciente + médico
SELECT p.nome    AS paciente,
       m.nome    AS medico,
       pr.diagnostico
FROM Prontuario pr
JOIN Consulta c     ON c.id_consulta = pr.id_consulta
JOIN Paciente p     ON p.id_paciente = c.id_paciente
JOIN Medico m       ON m.id_medico = c.id_medico;

-- Buscar agenda disponível de um médico específico
SELECT id_horario, id_medico, data, hora, disponivel
FROM Agenda_Horario
WHERE id_medico = 1
  AND disponivel = 1;   -- use `= TRUE` em PostgreSQL se preferir

-- Limitar resultados (últimos prontuários)
SELECT id_prontuario, id_consulta, diagnostico, data_registro
FROM Prontuario
ORDER BY data_registro DESC
LIMIT 5;

-- Consultar medicamentos prescritos em um prontuário específico
SELECT pr.id_prontuario, pm.medicamento, pm.instrucoes
FROM Prescricao_Medica pm
JOIN Prontuario pr ON pr.id_prontuario = pm.id_prontuario
WHERE pr.id_prontuario = 1;