CREATE TABLE consultas (
    id BIGSERIAL PRIMARY KEY,
    data_consulta TIMESTAMP NOT NULL,
    medico_id BIGINT NOT NULL,
    paciente_id BIGINT NOT NULL,
    CONSTRAINT fk_medico FOREIGN KEY (medico_id) REFERENCES medicos(id),
    CONSTRAINT fk_paciente FOREIGN KEY (paciente_id) REFERENCES pacientes(id)
);
