[🏠 Início](../../../../../../../README.md) / [⬆️ app](../README.md) / 📂 dao

# 🗃️ Contratos de persistência

Define operações de acesso a dados independentes da implementação JDBC.

Mantenha as responsabilidades desta camada separadas das demais e consulte os arquivos relacionados antes de alterações.

## Explore as subpastas e arquivos

| Caminho | Conteúdo e responsabilidade |
|---|---|
| [impl/](impl/) | Implementações JDBC dos contratos DAO, com comandos parametrizados. |
| [ContatoDAO.java](ContatoDAO.java) | Contrato para cadastro, edição, exclusão e busca filtrada de contatos. |
| [README.md](README.md) | Guia de navegação e explicações desta pasta. |
| [UsuarioDAO.java](UsuarioDAO.java) | Contrato para inserir usuários, consultar login e atualizar senhas. |

## Árvore estrutural comentada

O ponto inicial é `src/main/java/com/salgaderia/app/dao/`.

```text
src/main/java/com/salgaderia/app/dao/  # Define operações de acesso a dados independentes da implementação JDBC.
├── impl/  # Implementações JDBC dos contratos DAO, com comandos parametrizados.
│   ├── ContatoDAOImpl.java  # Operações JDBC de contatos com filtros de clientes e fornecedores.
│   └── UsuarioDAOImpl.java  # Persiste usuários, consulta credenciais e atualiza hashes de senha.
├── ContatoDAO.java  # Contrato para cadastro, edição, exclusão e busca filtrada de contatos.
├── README.md  # Guia de navegação e explicações desta pasta.
└── UsuarioDAO.java  # Contrato para inserir usuários, consultar login e atualizar senhas.
```

[🏠 Voltar ao README principal](../../../../../../../README.md)
