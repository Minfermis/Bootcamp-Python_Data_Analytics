CREATE table usuarios (
	id int,
    nome varchar (255) not null comment 'Nome do usuário',
    email varchar (150) not null comment 'E-mail de usuário',
    endereco varchar (300) not null comment 'Endereço do usuário',
    data_nascimento date not null comment 'Data de nascimento de usuário');
    
    
    