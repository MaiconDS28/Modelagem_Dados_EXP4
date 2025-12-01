-- INSERT script
INSERT INTO Paciente (nome, cpf, data_nascimento, endereco, telefone) VALUES
('João Pereira', '123.456.789-00', '1990-05-12', 'Rua A, 123', '(61)99999-1111'),
('Maria Souza', '987.654.321-00', '1985-09-23', 'Rua B, 987', '(61)98888-2222'),
('Lucas Martins', '456.789.123-00', '2000-01-15', 'Rua C, 55', '(61)97777-3333');

INSERT INTO Medico (nome, crm) VALUES
('Dr. Pedro Lima', 'CRM-10001'),
('Dra. Ana Ribeiro', 'CRM-20002'),
('Dr. João Mendes', 'CRM-30003');

INSERT INTO Especialidade (nome) VALUES
('Clínico Geral'),
('Dermatologia'),
('Cardiologia');

INSERT INTO Agenda_Horario (id_medico, data, hora, disponivel) VALUES
(1, '2025-11-20', '09:00:00', TRUE),
(1, '2025-11-20', '10:00:00', TRUE),
(2, '2025-11-21', '08:30:00', TRUE),
(3, '2025-11-22', '11:00:00', TRUE);

INSERT INTO Consulta (id_paciente, id_medico, id_horario, status) VALUES
(1, 1, 1, 'agendada'),
(2, 2, 3, 'agendada');

INSERT INTO Prontuario (id_consulta, diagnostico, sintomas, orientacoes, data_registro) VALUES
(1, 'Gripe', 'Febre, dor de cabeça', 'Hidratação e repouso', NOW()),
(2, 'Alergia de pele', 'Coceira e vermelhidão', 'Evitar exposição ao sol', NOW());

INSERT INTO Prescricao_Medica (id_prontuario, medicamento, quantidade, instrucoes) VALUES
(1, 'Paracetamol', '500mg - 3x ao dia', 'Tomar após as refeições'),
(2, 'Pomada antialérgica', 'Aplicar 2x ao dia', 'Evitar exposição solar');
