# 🎯 Sistema de Gerenciamento de Atividades

> **Projeto educacional desenvolvido em Java com Spring Boot para aprendizado de relacionamentos JPA e APIs REST**

## 📋 Sobre o Projeto

Este é um sistema simples para gerenciar **atividades**, **participantes** e **blocos de horário**. O projeto foi desenvolvido como parte dos estudos de Java/Spring Boot, focando em:

- Relacionamentos entre entidades (OneToMany, ManyToOne, ManyToMany)
- Configuração de banco de dados H2
- Formatação de datas em APIs REST
- Estrutura básica de um projeto Spring Boot

## 🏗️ Estrutura do Banco de Dados

### Entidades e Relacionamentos:

```
📁 CATEGORIA (1) ←→ (N) ATIVIDADE (1) ←→ (N) BLOCO
                           ↕
                    (N) ←→ (N) PARTICIPANTE
```

### Tabelas:
- **tb_categoria**: Armazena categorias das atividades (Curso, Oficina, etc.)
- **tb_atividades**: Atividades disponíveis com nome, descrição e preço
- **tb_participante**: Pessoas que participam das atividades
- **tb_bloco**: Blocos de horário para cada atividade (início e fim)
- **tb_participante_atividade**: Tabela de relacionamento N:N entre participantes e atividades

## 🚀 Tecnologias Utilizadas

- **Java 17+**
- **Spring Boot 3.x**
- **Spring Data JPA**
- **Banco H2** (em memória)
- **Maven** (gerenciamento de dependências)

## ⚙️ Como Executar o Projeto

### Pré-requisitos:
- Java 17 ou superior instalado
- IDE de sua preferência (IntelliJ IDEA, Eclipse, VS Code)
- Git (opcional)

### Passos:

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/seu-usuario/nome-do-repositorio.git
   cd nome-do-repositorio
   ```

2. **Execute o projeto:**
   ```bash
   # Via Maven
   ./mvnw spring-boot:run
   
   # Ou via IDE: Execute a classe TestConfig.java
   ```

3. **Acesse o console do H2:**
   - URL: http://localhost:8080/h2-console
   - Driver Class: `org.h2.Driver`
   - JDBC URL: `jdbc:h2:mem:testdb`
   - User: `sa`
   - Password: *(deixe em branco)*

## 📊 Dados de Exemplo

O projeto já vem com dados pré-carregados no arquivo `import.sql`:

### Categorias:
- Curso
- Oficina

### Atividades:
- Curso de HTML (Categoria: Curso) - R$ 80,00
- Oficina de GitHub (Categoria: Oficina) - R$ 50,00

### Participantes:
- José Silva (jose@gmail.com)
- Tiago Faria (tiago@gmail.com)
- Maria do Rosário (maria@gmail.com)
- Teresa Silva (teresa@gmail.com)

### Blocos de Horário:
- **Curso de HTML**: 25/09/2017 das 08:00 às 11:00
- **Oficina de GitHub**: 
  - 25/09/2017 das 14:00 às 18:00
  - 26/09/2017 das 08:00 às 11:00

## 🔍 Testando no Console H2

### Consultas Úteis:

```sql
-- Ver todas as atividades com suas categorias
SELECT a.nome, a.descricao, a.preco, c.descricao as categoria 
FROM tb_atividades a 
JOIN tb_categoria c ON a.categoria_id = c.id;

-- Ver blocos com datas formatadas (formato brasileiro)
SELECT * FROM vw_blocos_formatados;

-- Ver participantes de cada atividade
SELECT a.nome as atividade, p.nome as participante, p.email
FROM tb_atividades a
JOIN tb_participante_atividade pa ON a.id = pa.atividade_id
JOIN tb_participante p ON pa.participante_id = p.id
ORDER BY a.nome, p.nome;
```

## 📅 Formatação de Datas

O projeto está configurado para exibir datas no formato brasileiro (dd/MM/yyyy) através das configurações em `application.properties`:

```properties
spring.jackson.date-format=dd/MM/yyyy HH:mm:ss
spring.jackson.time-zone=America/Sao_Paulo
```

**Importante**: No banco H2, as datas são armazenadas no formato ISO (yyyy-MM-dd), mas quando consultadas via API aparecem no formato brasileiro.

## 🎯 Conceitos Aprendidos

### 1. Relacionamentos JPA:
- **@OneToMany**: Uma categoria tem muitas atividades
- **@ManyToOne**: Muitos blocos pertencem a uma atividade
- **@ManyToMany**: Participantes podem estar em várias atividades

### 2. Anotações Importantes:
- `@Entity`: Define uma classe como entidade JPA
- `@Table`: Especifica o nome da tabela no banco
- `@Id` + `@GeneratedValue`: Chave primária auto-incrementada
- `@JoinColumn`: Define a coluna de relacionamento
- `@JoinTable`: Configura tabela de relacionamento N:N

### 3. Configurações:
- Banco H2 em memória para desenvolvimento
- Formatação automática de datas
- Dados iniciais via `import.sql`

## 📁 Estrutura do Projeto

``` 
src/main/java/com/devsuperior/desafio2/
├── 📄 TestConfig.java          # Classe principal
├── 📄 Atividade.java          # Entidade Atividade
├── 📄 Bloco.java              # Entidade Bloco
├── 📄 Categoria.java          # Entidade Categoria
└── 📄 Participante.java       # Entidade Participante

src/main/resources/
├── 📄 application.properties   # Configurações da aplicação
└── 📄 import.sql              # Dados iniciais
```

## 👤 Autor

Willian Bruno
- GitHub: https://github.com/Sinnisterr
- LinkedIn: https://www.linkedin.com/in/willian-bruno-28924082/

## 🤝 Contribuindo

Este é um projeto educacional! Sinta-se à vontade para:

1. Fazer um fork do projeto
2. Criar uma branch para sua feature (`git checkout -b feature/nova-feature`)
3. Commit suas mudanças (`git commit -am 'Adiciona nova feature'`)
4. Push para a branch (`git push origin feature/nova-feature`)
5. Abrir um Pull Request

## 📚 Próximos Passos para Estudar

- [ ] Criar controllers REST para as entidades
- [ ] Implementar validações com Bean Validation
- [ ] Adicionar testes unitários
- [ ] Implementar paginação nas consultas
- [ ] Configurar profiles diferentes (dev, test, prod)
- [ ] Adicionar documentação com Swagger
- [ ] Implementar tratamento de exceções


---

**Desenvolvido com ❤️ para aprendizado de Java/Spring Boot**

> 💡 **Dica**: Use este projeto como base para entender relacionamentos JPA. Experimente modificar as entidades e observe como os relacionamentos funcionam!
