-- UPDATE & DELETE script
UPDATE Consulta SET status = 'realizada' WHERE id_consulta = 1;

UPDATE Agenda_Horario SET disponivel = FALSE WHERE id_horario = 1;

UPDATE Paciente SET endereco = 'Rua Z, 1000' WHERE id_paciente = 3;

DELETE FROM Prescricao_Medica WHERE id_prescricao = 2;

DELETE FROM Prontuario WHERE id_prontuario = 1;

DELETE FROM Agenda_Horario WHERE id_horario = 4 AND disponivel = TRUE;
