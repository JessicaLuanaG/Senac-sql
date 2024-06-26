create table if not exists animal {
  id int primary key auto_increment,
  nome varchar(255) not null,
  especie varchar(255) not null
}