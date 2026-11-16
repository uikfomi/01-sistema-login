[🏠 Início](../../../../README.md) / [⬆️ java](../README.md) / 📂 com

# 📦 Pacote com

Raiz dos pacotes Java qualificados pelo domínio com.

Mantenha as responsabilidades desta camada separadas das demais e consulte os arquivos relacionados antes de alterações.

## Explore as subpastas e arquivos

| Caminho | Conteúdo e responsabilidade |
|---|---|
| [salgaderia/](salgaderia/) | Pacote da aplicação Salgaderia. [Abrir guia](salgaderia/README.md). |
| [README.md](README.md) | Guia de navegação e explicações desta pasta. |

## Árvore estrutural comentada

O ponto inicial é `src/main/java/com/`.

```text
src/main/java/com/  # Raiz dos pacotes Java qualificados pelo domínio com.
├── salgaderia/  # Pacote da aplicação Salgaderia.
│   ├── app/  # Componentes da aplicação e suas camadas.
│   │   ├── controller/  # Controllers das telas e testes de interface, conforme a localização.
│   │   │   ├── LoginController.java  # Tela de login e cadastro público.
│   │   │   └── SelecaoModulosController.java  # Seleção de módulos administrativos.
│   │   ├── dao/  # Contratos de acesso a dados ou testes JDBC.
│   │   │   ├── impl/  # Implementações JDBC dos contratos DAO, com comandos parametrizados.
│   │   │   │   ├── ContatoDAOImpl.java  # Operações JDBC de contatos com filtros de clientes e fornecedores.
│   │   │   │   └── UsuarioDAOImpl.java  # Persiste usuários, consulta credenciais e atualiza hashes de senha.
│   │   │   ├── ContatoDAO.java  # Contrato para cadastro, edição, exclusão e busca filtrada de contatos.
│   │   │   ├── README.md  # Guia de navegação e explicações desta pasta.
│   │   │   └── UsuarioDAO.java  # Contrato para inserir usuários, consultar login e atualizar senhas.
│   │   ├── exception/  # Exceções personalizadas de domínio e persistência.
│   │   │   ├── AutenticacaoInvalidaException.java  # Falha de autenticação.
│   │   │   └── PersistenciaException.java  # Encapsula erro de persistência.
│   │   ├── model/  # Entidades de domínio ou testes dessas entidades.
│   │   │   ├── enums/  # Enumerações com comportamento e respectivos testes.
│   │   │   │   ├── CategoriaInsumo.java  # Categorias de insumos de fornecedores.
│   │   │   │   └── PerfilUsuario.java  # Perfis de acesso do usuário.
│   │   │   ├── Cliente.java  # Contato especializado em cliente.
│   │   │   ├── Contato.java  # Abstração comum de contatos.
│   │   │   ├── Fornecedor.java  # Contato especializado em fornecedor.
│   │   │   ├── README.md  # Guia de navegação e explicações desta pasta.
│   │   │   ├── Usuario.java  # Abstração de usuário e permissões.
│   │   │   ├── UsuarioAdmin.java  # Usuário administrativo.
│   │   │   ├── UsuarioCliente.java  # Usuário vinculado a um cliente.
│   │   │   └── Validacao.java  # Validações compartilhadas das entidades.
│   │   ├── service/  # Contratos, regras de negócio e testes de serviços.
│   │   │   ├── impl/  # Implementações de regras e orquestração dos serviços.
│   │   │   │   └── AutenticacaoServiceImpl.java  # Orquestra login, verificação de senha e cadastro de cliente e usuário.
│   │   │   └── AutenticacaoService.java  # Contrato para autenticação única e cadastro público de clientes.
│   │   ├── util/  # Conexão, autenticação auxiliar e navegação.
│   │   │   ├── ConnectionFactory.java  # Pool HikariCP e transações JDBC.
│   │   │   ├── Navegacao.java  # Navegação entre telas FXML.
│   │   │   ├── README.md  # Guia de navegação e explicações desta pasta.
│   │   │   ├── Senhas.java  # Geração e verificação de hashes de senha.
│   │   │   └── TelaAutenticada.java  # Contrato para telas com usuário autenticado.
│   │   ├── Main.java  # Inicialização da aplicação JavaFX.
│   │   └── README.md  # Guia de navegação e explicações desta pasta.
│   └── README.md  # Guia de navegação e explicações desta pasta.
└── README.md  # Guia de navegação e explicações desta pasta.
```

[🏠 Voltar ao README principal](../../../../README.md)
