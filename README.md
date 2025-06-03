# Projeto de Testes Automatizados com Robot Framework

Este projeto contém testes automatizados desenvolvidos com Robot Framework para validar o processo de cadastro de cards. Ele foi projetado para garantir a qualidade e a confiabilidade do sistema, utilizando boas práticas de automação de testes.

## 📋 Pré-requisitos

Para executar este projeto, você precisará ter instalado:

- **Python 3.x**: Linguagem de programação utilizada para executar o Robot Framework.
- **Robot Framework**: Framework de automação de testes baseado em palavras-chave.
- **Selenium Library para Robot Framework**: Biblioteca que permite a automação de navegadores web.
- **Faker Library para Robot Framework**: Biblioteca usada para gerar dados fictícios, como nomes e cargos.
- **Navegador web**: Recomendado Google Chrome ou Firefox.

## 🚀 Instalação

1. Clone este repositório:
```bash
git clone https://github.com/flameuss/teste-local-BDD-robot.git
cd curso-robot
```

2. Instale as dependências:
```bash
pip install robotframework
pip install robotframework-seleniumlibrary
pip install robotframework-faker
```

3. Certifique-se de que o ChromeDriver ou GeckoDriver está instalado e configurado no PATH do sistema.

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

- **resources/**: Contém os recursos reutilizáveis, como palavras-chave e configurações de setup e teardown.
- **testes/**: Contém os casos de teste organizados por funcionalidade.

## ⚡ Executando os Testes

Para executar todos os testes:
```bash
robot testes/
```

Para executar um teste específico:
```bash
robot testes/cadastro-card-correto.robot
```

### Links para os Testes

- [Cadastro de Card Correto](testes/cadastro-card-correto.robot)
- [Cadastro de Card Incorreto](testes/cadastro-card-incorreto.robot)

## 📊 Relatórios

Após a execução dos testes, o Robot Framework gera automaticamente relatórios em HTML:

- **log.html**: Log detalhado da execução.
- **report.html**: Relatório resumido dos resultados.
- **output.xml**: Dados brutos da execução.

Os relatórios podem ser encontrados na raiz do projeto após a execução dos testes.

## 🔍 Casos de Teste

### Cadastro de Card Correto
- Verificação do preenchimento correto do formulário.
- Validação da criação do card no time esperado.
- Teste de múltiplos cadastros.

### Cadastro de Card Incorreto
- Validações de campos obrigatórios.
- Tratamento de dados inválidos.

## 🛠️ Ferramentas Utilizadas

- **Robot Framework**: Framework principal para automação de testes.
- **SeleniumLibrary**: Para interagir com elementos da interface web.
- **FakerLibrary**: Para gerar dados fictícios e dinâmicos durante os testes.
- **GitHub Actions**: Para integração contínua e execução automatizada dos testes.

## 🤝 Contribuindo

1. Faça um fork do projeto.
2. Crie uma branch para sua feature (`git checkout -b feature/NovaFeature`).
3. Faça commit das mudanças (`git commit -m 'Adicionando nova feature'`).
4. Faça push para a branch (`git push origin feature/NovaFeature`).
5. Abra um Pull Request.

## 📝 Licença

Este projeto está sob a licença [MIT](https://opensource.org/licenses/MIT). Veja o arquivo LICENSE para mais detalhes.
