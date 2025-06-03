# Projeto de Testes Automatizados com Robot Framework

Este projeto contém testes automatizados desenvolvidos com Robot Framework para validar o processo de cadastro de cards.

## 📋 Pré-requisitos

Para executar este projeto, você precisará ter instalado:

- Python 3.x
- Robot Framework
- Selenium Library para Robot Framework
- Navegador web (Chrome ou Firefox)

## 🚀 Instalação

1. Clone este repositório:
```bash
git clone [URL_DO_SEU_REPOSITORIO]
cd curso-robot
```

2. Instale as dependências:
```bash
pip install robotframework
pip install robotframework-seleniumlibrary
```

## 📁 Estrutura do Projeto

```
.
├── resources/
│   ├── main.robot
│   ├── pages/
│   │   └── cadastro.robot
│   └── shared/
│       └── setup_teardown.robot
├── testes/
│   ├── cadastro-card-correto.robot
│   └── cadastro-card-incorreto.robot
└── README.md
```

## ⚡ Executando os Testes

Para executar todos os testes:
```bash
robot testes/
```

Para executar um teste específico:
```bash
robot testes/cadastro-card-correto.robot
```

## 📊 Relatórios

Após a execução dos testes, o Robot Framework gera automaticamente relatórios em HTML:

- `log.html`: Log detalhado da execução
- `report.html`: Relatório resumido dos resultados
- `output.xml`: Dados brutos da execução

## 🔍 Casos de Teste

### Cadastro de Card Correto
- Verificação do preenchimento correto do formulário
- Validação da criação do card no time esperado
- Teste de múltiplos cadastros

### Cadastro de Card Incorreto
- Validações de campos obrigatórios
- Tratamento de dados inválidos

## 🤝 Contribuindo

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/NovaFeature`)
3. Faça commit das mudanças (`git commit -m 'Adicionando nova feature'`)
4. Faça push para a branch (`git push origin feature/NovaFeature`)
5. Abra um Pull Request

## 📝 Licença

Este projeto está sob a licença [SUA_LICENCA]. Veja o arquivo LICENSE para mais detalhes.
