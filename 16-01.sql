CREATE TABLE JOGADOR 
(ID_JOGADOR   NUMBER NOT NULL,
NOME          VARCHAR2(200) NOT NULL,
DT_NASCIMENTO DATE NOT NULL,
SALARIO       NUMBER(14,2),
ID_TIME       NUMBER NOT NULL);

CREATE TABLE TIME 
(ID_TIME      NUMBER NOT NULL,
NOME          VARCHAR2(200) NOT NULL);


CREATE TABLE TECNICO 
(ID_TECNICO   NUMBER NOT NULL,
NOME          VARCHAR2(200) NOT NULL,
DT_NASCIMENTO DATE  NOT NULL,
SALARIO       NUMBER(14,2),
ID_TIME       NUMBER NOT NULL);

alter table TIME  add constraint PK_TIME primary key (ID_TIME);
alter table JOGADOR  add constraint PK_JOGADOR primary key (ID_JOGADOR);
alter table TECNICO  add constraint PK_TECNICO primary key (ID_TECNICO);

alter table JOGADOR  add constraint FK_JOGADOR foreign key (ID_TIME)  references time(ID_TIME);
alter table TECNICO  add constraint FK_TIME foreign key (ID_TIME)  references time (ID_TIME);


-- JOGADOR
comment on table JOGADOR  is 'TABELA QUE ARMAZENA DADOS DOS JOGADORES';
comment on column JOGADOR.id_jogador  is 'IDENTIFICADOR DO JOGADOR';
comment on column JOGADOR.nome  is 'NOME DO JOGADOR';
comment on column JOGADOR.id_time  is 'IDENTIFICADOR DO TIME';
comment on column JOGADOR.dt_nascimento  is 'DATA DE NASCIMENTO';
comment on column JOGADOR.salario  is 'SALARIO';
-- TIME
comment on table TIME  is 'TABELA DE TIMES';
comment on column TIME.id_time  is 'IDENTIFICADOR DO TIME';
comment on column TIME.nome  is 'NOME DO TIME';
-- TECNICO
comment on table TECNICO  is 'TABELA DE TECNICOS';
comment on column TECNICO.id_tecnico  is 'IDENTIFICADOR DO TECNICO';
comment on column TECNICO.nome  is 'NOME DO TECNICO';
comment on column TECNICO.dt_nascimento  is 'DATA DE NASCIMENTO';
comment on column TECNICO.salario  is 'SALARIO';
comment on column TECNICO.id_time  is 'IDENTIFICADOR DO TIME';
