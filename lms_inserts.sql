USE sistema_lms
GO

/********************
	   USU�RIOS
*********************/
INSERT INTO Usuario([Login], Senha)
VALUES
('Murilo', CONVERT(VARBINARY, 'Impacta@2022')), -- Login Coordenador
('Luis', CONVERT(VARBINARY,'Impacta@2022')), -- Login Aluno
('Italo', CONVERT(VARBINARY,'Impacta@2022')), -- Login Aluno
('Gustavo', CONVERT(VARBINARY,'Impacta@2022')), -- Login Aluno
('Ana', CONVERT(VARBINARY,'Impacta@2022')), -- Login Aluno
('Flavia', CONVERT(VARBINARY,'Impacta@2022')), -- Login Aluno
('Elvis', CONVERT(VARBINARY,'Impacta@2022')), -- Login Aluno
('Lionel', CONVERT(VARBINARY,'Impacta@2022')), -- Login Aluno
('Cristiano', CONVERT(VARBINARY,'Impacta@2022')), -- Login Aluno
('Adalberto', CONVERT(VARBINARY,'Impacta@2022')), -- Login Aluno
('Michele', CONVERT(VARBINARY,'Impacta@2022')), -- Login Aluno
('Fernando', CONVERT(VARBINARY,'Impacta@2022')), -- Login professor
('Thiago', CONVERT(VARBINARY,'Impacta@2022')), -- Login professor
('Denilson', CONVERT(VARBINARY,'Impacta@2022')), -- Login professor
('Rafaela', CONVERT(VARBINARY,'Impacta@2022')), -- Login professor
('Janete', CONVERT(VARBINARY,'Impacta@2022')) -- Login professor
GO

/*
Cadastrem: 1 Coordenador, 10 Alunos, 5 Professores ( INSERT )
*/

/********************
	 COORDENADOR
*********************/
INSERT INTO Coordenador(idUsuario, Nome, Email, Celular)
VALUES((SELECT id FROM Usuario WHERE [Login] = 'Ana'), 'Ana Cristina', 'ana.cristina@cod.faculdadeimpacta.com.br', '11 98739-9742')
GO

/********************
	   ALUNOS
*********************/
insert into Aluno(idUsuario,Nome,Email,Celular,RA,Foto)
values
((SELECT ID FROM Usuario WHERE [Login] ='Luis'), 'Luis Fernando', 'Luis@aluno.faculdadeimpacta.com.br','68 99561-3786' , '2004100', CONVERT(VARBINARY, 'https://t.ctcdn.com.br/WCmZ_LU_RoCZL1jCno7fE153Z_U=/400x400/smart/filters:format(webp)/i489932.jpeg')),
((SELECT ID FROM Usuario WHERE [Login] ='Italo'), 'Italo Andrew', 'Italo@aluno.faculdadeimpacta.com.br','14 97355-0383', '2009200', NULL),
((SELECT ID FROM Usuario WHERE [Login] ='Gustavo'), 'Gustavo Bianchi', 'Gustavo@aluno.faculdadeimpacta.com.br','19 97256-7234', '2008300', NULL),
((SELECT ID FROM Usuario WHERE [Login] ='Ana'), 'Ana Cristina', 'Ana@aluno.faculdadeimpacta.com.br','17 99602-7884' , '2004400', NULL),
((SELECT ID FROM Usuario WHERE [Login] ='Flavia'), 'Flavia Silva', 'Flavia@aluno.faculdadeimpacta.com.br','12 99943-1307', '2003500',  NULL),
((SELECT ID FROM Usuario WHERE [Login] ='Elvis'), 'Elvis de Sousa', 'Elvis@aluno.faculdadeimpacta.com.br','17 98874-6114', '2004600', NULL),
((SELECT ID FROM Usuario WHERE [Login] ='Lionel'), 'Lionel Messi', 'Lionel@aluno.faculdadeimpacta.com.br','19 96766-7704', '2009700' , NULL),
((SELECT ID FROM Usuario WHERE [Login] ='Cristiano'), 'Cristiano Ronaldo', 'Cristiano@aluno.faculdadeimpacta.com.br','15 99956-8334', '2007800' , NULL),
((SELECT ID FROM Usuario WHERE [Login] ='Adalberto'), 'Adalberto Pereira', 'Adalberto@aluno.faculdadeimpacta.com.br','18 97429-4491', '2005900', NULL), 
((SELECT ID FROM Usuario WHERE [Login] ='Michele'), 'Michele Obama', 'Michele@aluno.faculdadeimpacta.com.br','15 98747-7479', '2001000', NULL)
GO

/********************
	 PROFESSORES
*********************/
INSERT INTO Professor(idUsuario, Email, Celular, Apelido)
VALUES
((SELECT ID FROM Usuario WHERE [login] = 'Fernando'), 'fernando@prof.faculdadeimpacta.com.br', '17 98675-7374', 'fefedp'),
((SELECT ID FROM Usuario WHERE [login] = 'Thiago'), 'thiago@prof.faculdadeimpacta.com.br', '15 96824-8433', 'ThiagoOPA'),
((SELECT ID FROM Usuario WHERE [login] = 'Denilson'), 'denilson@prof.faculdadeimpacta.com.br', '12 97313-3494', 'Gamba'),
((SELECT ID FROM Usuario WHERE [login] = 'Rafaela'), 'rafaela@prof.faculdadeimpacta.com.br', '18 99801-8308', 'Farela'),
((SELECT ID FROM Usuario WHERE [login] = 'Janete'), 'janeteo@prof.faculdadeimpacta.com.br', '12 99749-8442', 'Joanete')
GO

/********************
	    CURSOS
*********************/
INSERT INTO Curso(Nome)
VALUES
('Banco de Dados'),
('An�lise e Desenvolvimento de Sistemas'),
('Sistemas da Informa��o'),
('Engenharia de Software'),
('Defesa Cibern�tica'),
('Redes de Computadores')
GO

/********************
	 DISCIPLINAS
*********************/

-- Disciplina: Linguagem SQL
INSERT INTO Disciplina(Nome, PlanoDeEnsino, CargaHoraria, Competencias, Habilidades, Ementa, ConteudoProgramatico, 
					   BibliografiaBasica, BibliografiaComplementar, PercentualPratico, PercentualTeorico, IdCoordenador)
VALUES
('Linguagem SQL', CONVERT(varbinary, 'https://drive.google.com/file/d/17rRD4oRRW_k5bPaDpMLz1ePX-VT5qGjx/view'), 80, 
'Arquitetar um Bancos de dados capaz de atender �s necessidades especificadas.
Desenvolvimento de rotinas de defini��o, manipula��o e recupera��o de dados.
Garantir a integridade dos dados armazenados utilizando-se de restri��es estruturais e funcionais.
Criar relat�rios para an�lise e consolida��o das informa��es armazenadas.',
'Conhecimento das regras de mapeamento dos modelos l�gico/conceitual para o f�sico.
Conhecimento da sub-linguagem SQL de Defini��o de dados (DDL): Cria��o, altera��o e remo��o
de estruturas e regras de armazenamento.
Conhecimento da sub-linguagem SQL de Manipula��o de dados (DML): Inser��o, remo��o e
atualiza��o de dados.
Conhecimento da sub-linguagem SQL de Pesquisa de dados (DQL): Consulta de dados,
Predicados, Fun��es built-in, Agrupamento e Jun��es.
Conhecimento sobre conex�es, sess�es e transa��es em banco de dados.',
'Introdu��o � Linguagem SQL. Conceitos B�sicos. Linguagem de Defini��o de dados ( tabelas e
vis�es ), Linguagem de Manipula��o de dados ( insert, delete, update ) e Linguagem de Consulta
aos Dados ( fun��es built-in, joins, agrupamentos e sub-selects ).',
'Introdu��o: Hist�ria da Linguagem SQL.
Conceitos b�sicos: tabela, campo, tipos de dados, campos chave.
Linguagem de Defini��o de Dados: cria��o / altera��o / remo��o de objetos.
Linguagem de Manipula��o de Dados: inser��o / atualiza��o / remo��o de registros.',
'CORONEL, C.; MORRIS, S. Database Systems: design, implementation and management. 
11 a .ed. S�o Paulo: Cengage do Brasil, 2014.
DATE, C.J. SQL e Teoria Relacional: como escrever c�digos SQL precisos. 1.ed. S�o Paulo:
Novatec, 2015.',
'ELMASRI, R. E.; NAVATHE, S. B. Sistemas de Banco de Dados. 6. Ed. S�o Paulo: Pearson, 2011.
SILBERCHATZ, A.; KORTH, H. F. Sistema de Banco de Dados. 6.ed. Rio de Janeiro: Elsevier, 2012.
TEOREY, T. J.; LIGHSTONE, S.; NADEAU, T. Projeto e Modelagem de Banco de Dados. 2.ed. Rio
de Janeiro: Elsevier. 2014.
VIESCAS, J. L.; HERNANDEZ, M.J. SQL Queries for mere mortals: A hands-on guide to data
manipulation in SQL. 3rd. Ed. Upper Sadle River: Addison-Wesley, 2014.
DATE, C. J.; FERNANDES, A. Projeto de Banco de Dados e Teoria Relacional. 1. ed. S�o Paulo:
Novatec, 2015.',
75, 25, (SELECT ID FROM Coordenador WHERE Nome = 'Ana Cristina'))
GO

-- Disciplina: Ambientes Operacionais
INSERT INTO Disciplina(Nome, PlanoDeEnsino, CargaHoraria, Competencias, Habilidades, Ementa, ConteudoProgramatico, 
					   BibliografiaBasica, BibliografiaComplementar, PercentualPratico, PercentualTeorico, IdCoordenador)
VALUES
('Ambientes Operacionais', CONVERT(VARBINARY, 'https://drive.google.com/file/d/1KjuhXVxI2e4irnxfoxyo_KrC-RH79B7v/view'), 80,
'Esta disciplina visa desenvolver nos alunos um entendimento geral dos conceitos de computa��o em nuvem,
independentemente de fun��es t�cnicas espec�ficas. A disciplina prov� uma vis�o geral detalhada dos
conceitos de nuvem, bem como principais servi�os da Amazon Web Services (AWS), seguran�a, arquitetura,
defini��o de pre�o e suporte. Este curso tamb�m os ajudar� na prepara��o para o exame da AWS Certified
Cloud Practitioner.',
'Definir a Nuvem AWS; 
Explicar a filosofia de defini��o de pre�o da AWS;
Identificar os componentes de infraestrutura global da AWS;
Descrever as medidas de seguran�a e conformidade da Nuvem AWS, incluindo o AWS Identity and
Access Management (IAM);
Criar uma AWS Virtual Private Cloud (Amazon VPC);
Demonstrar quando usar o Amazon Elastic Compute Cloud (EC2), o AWS Lambda e o AWS Elastic
Beanstalk;
Diferenciar o Amazon S3 do Amazon EBS, Amazon EFS e Amazon S3 Glacier;
Demonstrar quando usar os servi�os de banco de dados da AWS, incluindo o Amazon Relational
Database Service (RDS), o Amazon DynamoDB, o Amazon Redshift e o Amazon Aurora;
Explicar os princ�pios b�sicos da arquitetura da Nuvem AWS;
Explorar os principais conceitos relacionados ao Elastic Load Balancing (ELB), Amazon CloudWatch
e Auto Scaling.',
'Esta disciplina visa desenvolver nos alunos um entendimento geral dos conceitos de computa��o em nuvem,
independentemente de fun��es t�cnicas espec�ficas.',
'Modulo 1: Vis�o geral dos conceitos de nuvem;
M�dulo 2: Economia e faturamento da nuvem;
M�dulo 3: Vis�o geral da infraestrutura global da AWS;
M�dulo 4: Seguran�a na nuvem;
M�dulo 5: Redes e entrega de conte�do',
'LECHETA, R. R. - AWS Para Desenvolvedores. S�o Paulo: Novatec, 2014
AWS ACADEMY. AWS Academy Cloud Foundations, 2022.
WHITE, C. Redes de computadores e comunica��o de dados. S�o Paulo: Cengage Learning, 2012.',
'KUROSE, J. F.; ROSS. K. W. Redes de Computadores e a Internet: uma abordagem top-down. 6.ed.
S�o Paulo: Pearson, 2013.
AMAZON WEB SERVICES ACADEMY - What is AWS Lambda?
https://docs.aws.amazon.com/lambda/latest/dg/welcome.html',
50, 50, (SELECT ID FROM Coordenador WHERE Nome = 'Ana Cristina'))
GO

/*
Ofertem a Disciplina �Linguagem SQL� neste ano, neste semestre, turma C,
para os cursos de SI e ADS. ( INSERT )
*/

-- ADS
INSERT INTO DisciplinaOfertada(IdCoordenador, IdDisciplina, IdCurso, Ano, Semestre, Turma)
VALUES
((SELECT ID FROM Coordenador WHERE Nome = 'Ana Cristina'), 
 (SELECT ID FROM Disciplina WHERE Nome = 'Linguagem SQL'),
 (SELECT ID FROM Curso WHERE Nome = 'An�lise e Desenvolvimento de Sistemas'),
 2022, 1, 'C'  
)
GO

-- SI
INSERT INTO DisciplinaOfertada(IdCoordenador, IdDisciplina, IdCurso, Ano, Semestre, Turma)
VALUES
((SELECT ID FROM Coordenador WHERE Nome = 'Ana Cristina'), 
 (SELECT ID FROM Disciplina WHERE Nome = 'Linguagem SQL'),
 (SELECT ID FROM Curso WHERE Nome = 'Sistemas da Informa��o'),
 2022, 1, 'C'  
)
GO

/*
Atribuam um Professor diferente � cada uma das disciplinas ofertadas (
utilizem o UPDATE alterar uma disciplina ofertada j� criada ), preenchendo as
demais colunas com dados reais ( ver plano de ensino ). ( UPDATE )
*/
-- ADS
UPDATE Disciplinaofertada 
SET IdProfessor = (SELECT ID FROM Professor WHERE idUsuario = (SELECT id FROM Usuario WHERE Login = 'Rafaela')),
	Metodologia = 'Aulas expositivas utilizando projetor, lousa eletr�nica e computador nas quais se apresenta e discute os
				   t�picos da disciplina, bem como trabalhos em grupo com apresenta��o escrita e defesa oral,
				   apresenta��o de v�deos.
				   Cada per�odo de aula de 50 minutos ser� completado com atividades a serem realizadas via ambiente
				   virtual para um tempo de 10 minutos.
				   Atividades cont�nuas di�rias para acompanhamento do processo ensino aprendizagem, em duas
				   modalidades: em sala de aula ( AC presencial ) e em ambiente virtual ( AC TAE )',
	Recursos = 'Servidor Microsoft SQL Server Database Engine 2014 (ou superior) Enterprise Edition.
				Cliente Microsoft SQL Server Management Studio 2014 (ou superior).',
	CriterioAvaliacao = 'Nota Final = 50% MAC + 50% Prova
						 ou
						 Nota Final = [30% MAC + 40% Prova + 30% MPAI]
						 SE (Nota Final >= 6,0 e Frequ�ncia >= 75%)
						 ENT�O Aprovado
						 SEN�O Reprovado
						 Em que:
						 MAC (M�dia de Atividades Cont�nuas):
						 M�dia das 04 melhores m�dias de cada AC semanal em um total de 5 ACs.
						 Prova = Avalia��o Semestral
						 MPAI = M�dia das provas do PAI para Disciplinas Incidentes do PAI
						 O aluno tem direito a uma Prova Substitutiva, com todo o conte�do do semestre letivo, para substituir a
						 Prova Semestral. A Prova Substitutiva somente ser� utilizada se for maior que a Prova.',
	PlanoDeAulas = CONVERT(VARBINARY, 'https://drive.google.com/file/d/17rRD4oRRW_k5bPaDpMLz1ePX-VT5qGjx/view')
WHERE ID = (SELECT ID FROM DisciplinaOfertada WHERE ID = 1)
GO

-- SI
UPDATE Disciplinaofertada 
SET IdProfessor = (SELECT ID FROM Professor WHERE idUsuario = (SELECT id FROM Usuario WHERE Login = 'Thiago')),
	Metodologia = 'Aulas expositivas utilizando projetor, lousa eletr�nica e computador nas quais se apresenta e discute os
				   t�picos da disciplina, bem como trabalhos em grupo com apresenta��o escrita e defesa oral,
				   apresenta��o de v�deos.
				   Cada per�odo de aula de 50 minutos ser� completado com atividades a serem realizadas via ambiente
				   virtual para um tempo de 10 minutos.
				   Atividades cont�nuas di�rias para acompanhamento do processo ensino aprendizagem, em duas
				   modalidades: em sala de aula ( AC presencial ) e em ambiente virtual ( AC TAE )',
	Recursos = 'Servidor Microsoft SQL Server Database Engine 2014 (ou superior) Enterprise Edition.
				Cliente Microsoft SQL Server Management Studio 2014 (ou superior).',
	CriterioAvaliacao = 'Nota Final = 50% MAC + 50% Prova
						 ou
						 Nota Final = [30% MAC + 40% Prova + 30% MPAI]
						 SE (Nota Final >= 6,0 e Frequ�ncia >= 75%)
						 ENT�O Aprovado
						 SEN�O Reprovado
						 Em que:
						 MAC (M�dia de Atividades Cont�nuas):
						 M�dia das 04 melhores m�dias de cada AC semanal em um total de 5 ACs.
						 Prova = Avalia��o Semestral
						 MPAI = M�dia das provas do PAI para Disciplinas Incidentes do PAI
						 O aluno tem direito a uma Prova Substitutiva, com todo o conte�do do semestre letivo, para substituir a
						 Prova Semestral. A Prova Substitutiva somente ser� utilizada se for maior que a Prova.',
	PlanoDeAulas = CONVERT(VARBINARY, 'https://drive.google.com/file/d/1wzGg0oUfzmUUhlMb0SK1XnHLhdctjVei/view')
WHERE ID = (SELECT ID FROM DisciplinaOfertada WHERE ID = 2) 
GO

-- Atribuam datas de in�cio e fim de matr�cula �s disciplinas ofertadas ( utilizem o
-- UPDATE para alterar uma disciplina ofertada j� criada ). (UPDATE )

-- ADS
UPDATE DisciplinaOfertada 
SET DtInicioMatricula = '20220207', DtFimMatricula = '20220606'
WHERE ID = (SELECT ID FROM DisciplinaOfertada WHERE ID = 1) 
GO

-- SI
UPDATE DisciplinaOfertada 
SET DtInicioMatricula = '20220210', DtFimMatricula = '20220609'
WHERE ID = (SELECT ID FROM DisciplinaOfertada WHERE ID = 2) 
GO
SELECT * FROM DisciplinaOfertada

/*
Preencham a solicita��o de matricula de pelo menos 3 alunos em cada uma das 2 Disciplinas ofertadas. ( INSERT )
*/

-- SolicitacaoMatricula 
INSERT INTO SolicitacaoMatricula(IdAluno, IdDisciplinaOfertada, DtSolicitacao, IdCoordenador, [Status])
VALUES((SELECT ID FROM Aluno WHERE RA = '2004100'), (SELECT ID FROM DisciplinaOfertada WHERE ID = 1), 
	   GETDATE(), (SELECT ID FROM Coordenador WHERE Nome = 'Ana Cristina'), NULL),
	   ((SELECT ID FROM Aluno WHERE RA = '2009200'), (SELECT ID FROM DisciplinaOfertada WHERE ID = 1), 
	   GETDATE(), (SELECT ID FROM Coordenador WHERE Nome = 'Ana Cristina'), NULL),
	   ((SELECT ID FROM Aluno WHERE RA = '2008300'), (SELECT ID FROM DisciplinaOfertada WHERE ID = 1),
	   GETDATE(), (SELECT ID FROM Coordenador WHERE Nome = 'Ana Cristina'), NULL),
	   ((SELECT ID FROM Aluno WHERE RA = '2004400'), (SELECT ID FROM DisciplinaOfertada WHERE ID = 2),
	   GETDATE(), (SELECT ID FROM Coordenador WHERE Nome = 'Ana Cristina'), NULL),
	   ((SELECT ID FROM Aluno WHERE RA = '2003500'), (SELECT ID FROM DisciplinaOfertada WHERE ID = 2), 
	   GETDATE(), (SELECT ID FROM Coordenador WHERE Nome = 'Ana Cristina'), NULL),
	   ((SELECT ID FROM Aluno WHERE RA = '2004600'), (SELECT ID FROM DisciplinaOfertada WHERE ID = 2),
	   GETDATE(), (SELECT ID FROM Coordenador WHERE Nome = 'Ana Cristina'), NULL)
GO

-- Atualize as solicita��es de matricula, atribuindo status diversos �s mesmas,
-- aprovando algumas, rejeitando outras ( UPDATE )

-- Disciplina Ofertada 1
UPDATE SolicitacaoMatricula 
SET [Status] = 'Aprovada'
WHERE IdDisciplinaOfertada = 1

-- Disciplina Ofertada 2
UPDATE SolicitacaoMatricula 
SET [Status] = 'Rejeitada'
WHERE IdDisciplinaOfertada = 2