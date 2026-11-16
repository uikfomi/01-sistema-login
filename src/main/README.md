[🏠 Início](../../README.md) / [⬆️ src](../README.md) / 📂 main

# 🚀 Aplicação principal

Contém o código executável e os recursos necessários à aplicação JavaFX.

Os arquivos Java e os recursos FXML/CSS são compilados e copiados pelo Maven em etapas distintas.

## Explore as subpastas e arquivos

| Caminho | Conteúdo e responsabilidade |
|---|---|
| [java/](java/) | Pacotes de código Java. [Abrir guia](java/README.md). |
| [resources/](resources/) | Recursos institucionais ou recursos JavaFX, conforme a localização. [Abrir guia](resources/README.md). |
| [README.md](README.md) | Guia de navegação e explicações desta pasta. |

## Árvore estrutural comentada

O ponto inicial é `src/main/`; cada comentário apresenta o caminho completo relativo à raiz do repositório.

```text
src/main/  # Contém o código executável e os recursos necessários à aplicação JavaFX.
├── java/  # src/main/java/ — Pacotes de código Java.
│   ├── com/  # src/main/java/com/ — Raiz de pacotes Java.
│   │   ├── salgaderia/  # src/main/java/com/salgaderia/ — Pacote da aplicação Salgaderia.
│   │   │   ├── app/  # src/main/java/com/salgaderia/app/ — Componentes da aplicação e suas camadas.
│   │   │   │   ├── controller/  # src/main/java/com/salgaderia/app/controller/ — Controllers das telas e testes de interface, conforme a localização.
│   │   │   │   │   ├── LoginController.java  # src/main/java/com/salgaderia/app/controller/LoginController.java — Tela de login e cadastro público.
│   │   │   │   │   └── SelecaoModulosController.java  # src/main/java/com/salgaderia/app/controller/SelecaoModulosController.java — Seleção de módulos administrativos.
│   │   │   │   ├── dao/  # src/main/java/com/salgaderia/app/dao/ — Contratos de acesso a dados ou testes JDBC.
│   │   │   │   │   ├── impl/  # src/main/java/com/salgaderia/app/dao/impl/ — Implementações JDBC dos contratos DAO, com comandos parametrizados.
│   │   │   │   │   │   ├── ContatoDAOImpl.java  # src/main/java/com/salgaderia/app/dao/impl/ContatoDAOImpl.java — Operações JDBC de contatos com filtros de clientes e fornecedores.
│   │   │   │   │   │   └── UsuarioDAOImpl.java  # src/main/java/com/salgaderia/app/dao/impl/UsuarioDAOImpl.java — Persiste usuários, consulta credenciais e atualiza hashes de senha.
│   │   │   │   │   ├── ContatoDAO.java  # src/main/java/com/salgaderia/app/dao/ContatoDAO.java — Contrato para cadastro, edição, exclusão e busca filtrada de contatos.
│   │   │   │   │   ├── README.md  # src/main/java/com/salgaderia/app/dao/README.md — Guia de navegação e explicações desta pasta.
│   │   │   │   │   └── UsuarioDAO.java  # src/main/java/com/salgaderia/app/dao/UsuarioDAO.java — Contrato para inserir usuários, consultar login e atualizar senhas.
│   │   │   │   ├── exception/  # src/main/java/com/salgaderia/app/exception/ — Exceções personalizadas de domínio e persistência.
│   │   │   │   │   ├── AutenticacaoInvalidaException.java  # src/main/java/com/salgaderia/app/exception/AutenticacaoInvalidaException.java — Falha de autenticação.
│   │   │   │   │   └── PersistenciaException.java  # src/main/java/com/salgaderia/app/exception/PersistenciaException.java — Encapsula erro de persistência.
│   │   │   │   ├── model/  # src/main/java/com/salgaderia/app/model/ — Entidades de domínio ou testes dessas entidades.
│   │   │   │   │   ├── enums/  # src/main/java/com/salgaderia/app/model/enums/ — Enumerações com comportamento e respectivos testes.
│   │   │   │   │   │   ├── CategoriaInsumo.java  # src/main/java/com/salgaderia/app/model/enums/CategoriaInsumo.java — Categorias de insumos de fornecedores.
│   │   │   │   │   │   └── PerfilUsuario.java  # src/main/java/com/salgaderia/app/model/enums/PerfilUsuario.java — Perfis de acesso do usuário.
│   │   │   │   │   ├── Cliente.java  # src/main/java/com/salgaderia/app/model/Cliente.java — Contato especializado em cliente.
│   │   │   │   │   ├── Contato.java  # src/main/java/com/salgaderia/app/model/Contato.java — Abstração comum de contatos.
│   │   │   │   │   ├── Fornecedor.java  # src/main/java/com/salgaderia/app/model/Fornecedor.java — Contato especializado em fornecedor.
│   │   │   │   │   ├── README.md  # src/main/java/com/salgaderia/app/model/README.md — Guia de navegação e explicações desta pasta.
│   │   │   │   │   ├── Usuario.java  # src/main/java/com/salgaderia/app/model/Usuario.java — Abstração de usuário e permissões.
│   │   │   │   │   ├── UsuarioAdmin.java  # src/main/java/com/salgaderia/app/model/UsuarioAdmin.java — Usuário administrativo.
│   │   │   │   │   ├── UsuarioCliente.java  # src/main/java/com/salgaderia/app/model/UsuarioCliente.java — Usuário vinculado a um cliente.
│   │   │   │   │   └── Validacao.java  # src/main/java/com/salgaderia/app/model/Validacao.java — Validações compartilhadas das entidades.
│   │   │   │   ├── service/  # src/main/java/com/salgaderia/app/service/ — Contratos, regras de negócio e testes de serviços.
│   │   │   │   │   ├── impl/  # src/main/java/com/salgaderia/app/service/impl/ — Implementações de regras e orquestração dos serviços.
│   │   │   │   │   │   └── AutenticacaoServiceImpl.java  # src/main/java/com/salgaderia/app/service/impl/AutenticacaoServiceImpl.java — Orquestra login, verificação de senha e cadastro de cliente e usuário.
│   │   │   │   │   └── AutenticacaoService.java  # src/main/java/com/salgaderia/app/service/AutenticacaoService.java — Contrato para autenticação única e cadastro público de clientes.
│   │   │   │   ├── util/  # src/main/java/com/salgaderia/app/util/ — Conexão, autenticação auxiliar e navegação.
│   │   │   │   │   ├── ConnectionFactory.java  # src/main/java/com/salgaderia/app/util/ConnectionFactory.java — Pool HikariCP e transações JDBC.
│   │   │   │   │   ├── Navegacao.java  # src/main/java/com/salgaderia/app/util/Navegacao.java — Navegação entre telas FXML.
│   │   │   │   │   ├── README.md  # src/main/java/com/salgaderia/app/util/README.md — Guia de navegação e explicações desta pasta.
│   │   │   │   │   ├── Senhas.java  # src/main/java/com/salgaderia/app/util/Senhas.java — Geração e verificação de hashes de senha.
│   │   │   │   │   └── TelaAutenticada.java  # src/main/java/com/salgaderia/app/util/TelaAutenticada.java — Contrato para telas com usuário autenticado.
│   │   │   │   ├── Main.java  # src/main/java/com/salgaderia/app/Main.java — Inicialização da aplicação JavaFX.
│   │   │   │   └── README.md  # src/main/java/com/salgaderia/app/README.md — Guia de navegação e explicações desta pasta.
│   │   │   └── README.md  # src/main/java/com/salgaderia/README.md — Guia de navegação e explicações desta pasta.
│   │   └── README.md  # src/main/java/com/README.md — Guia de navegação e explicações desta pasta.
│   └── README.md  # src/main/java/README.md — Guia de navegação e explicações desta pasta.
├── resources/  # src/main/resources/ — Recursos institucionais ou recursos JavaFX, conforme a localização.
│   ├── css/  # src/main/resources/css/ — Folhas de estilo das telas JavaFX.
│   │   └── global.css  # src/main/resources/css/global.css — Estilos compartilhados da aplicação.
│   ├── fxml/  # src/main/resources/fxml/ — Descrições de interface JavaFX.
│   │   ├── login.fxml  # src/main/resources/fxml/login.fxml — Estrutura visual de login e cadastro.
│   │   └── selecao-modulos.fxml  # src/main/resources/fxml/selecao-modulos.fxml — Estrutura visual da seleção de módulos.
│   ├── database.properties  # src/main/resources/database.properties — Template de configuração JDBC; não contém credenciais locais.
│   └── README.md  # src/main/resources/README.md — Guia de navegação e explicações desta pasta.
└── README.md  # src/main/README.md — Guia de navegação e explicações desta pasta.
```

[🏠 Voltar ao README principal](../../README.md)
