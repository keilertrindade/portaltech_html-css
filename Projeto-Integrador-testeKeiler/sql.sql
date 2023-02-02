CREATE TABLE Receitas (
    idReceita INT PRIMARY KEY,
    nomeReceita VARCHAR(255) NOT NULL,
    tempoPreparo INT NOT NULL,
    imagem VARCHAR(255) NOT NULL,
    vegano BOOLEAN NOT NULL,
    glutem BOOLEAN NOT NULL,
    soja BOOLEAN NOT NULL,
    amendoim BOOLEAN NOT NULL,
    ovo BOOLEAN NOT NULL,
    leite BOOLEAN NOT NULL,
    crustaceo BOOLEAN NOT NULL,
    doce BOOLEAN NOT NULL,
    salgado BOOLEAN NOT NULL,
    descricao TEXT NOT NULL,
    ingredientes TEXT NOT NULL,
    preparo TEXT NOT NULL,
    mediaNota FLOAT NOT NULL
);

--------------

