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
├── relatorios/
│   ├── log.html
│   ├── report.html
│   ├── output.xml
│   └── imagens/
│       ├── card_criado.png
│       └── card_campo_obrigatorio.png
└── README.md
```

- **resources/**: Contém os recursos reutilizáveis, como palavras-chave e configurações de setup e teardown.
- **testes/**: Contém os casos de teste organizados por funcionalidade.
- **relatorios/**: Pasta onde são salvos os relatórios e capturas de tela gerados durante a execução dos testes.

## ⚡ Executando os Testes

Para executar todos os testes:
```bash
robot --outputdir output testes/
```

Para executar um teste específico:
```bash
robot --outputdir output testes/cadastro-card-correto.robot
```

### Links para os Testes

- [Cadastro de Card Correto](testes/cadastro-card-correto.robot)
- [Cadastro de Card Incorreto](testes/cadastro-card-incorreto.robot)

## 📊 Relatórios

Após a execução dos testes, o Robot Framework gera automaticamente relatórios em HTML e capturas de tela:

- **log.html**: Log detalhado da execução.
- **report.html**: Relatório resumido dos resultados.
- **output.xml**: Dados brutos da execução.
- **Capturas de tela**: Imagens geradas durante os testes, como `name=card_criado.png` e `name=card_campo_obrigatorio.png`.

Os relatórios e capturas de tela são salvos na **raiz do projeto** para facilitar o acesso e consulta.

## 📊 Resultados dos Testes (CI)

Os testes são executados automaticamente pelo GitHub Actions e geraram os seguintes resultados:

```plaintext
==============================================================================
Testes
==============================================================================
Testes.Cadastro-Card-Correto                                                  
==============================================================================
Verificar se ao preencher os campos do formulário corretamente os ... | PASS |
------------------------------------------------------------------------------
Verificar se é possivel criar mais um card se preenchermos os camp... | PASS |
------------------------------------------------------------------------------
Verificar se é possivel criar um card para cada time disponivel se... | PASS |
------------------------------------------------------------------------------
Testes.Cadastro-Card-Correto                                          | PASS |
3 tests, 3 passed, 0 failed
==============================================================================
Testes.Cadastro-Card-Incorreto                                                
==============================================================================
Verificar se quando o campo obrigatório não for preenchido correta... | PASS |
------------------------------------------------------------------------------
Testes.Cadastro-Card-Incorreto                                        | PASS |
1 test, 1 passed, 0 failed
==============================================================================
Testes                                                                | PASS |
4 tests, 4 passed, 0 failed
==============================================================================
Output:  /output/output.xml
Log:     /output/log.html
Report:  /output/report.html
```

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

### Integração Contínua (CI)

Este projeto utiliza **GitHub Actions** para executar os testes automaticamente em cada push ou pull request para as branches principais (`main` ou `master`).

O workflow está configurado para:

1. Configurar o ambiente Python.
2. Instalar as dependências do projeto.
3. Executar os testes automatizados.
4. Gerar e armazenar os relatórios de teste como artefatos no GitHub.

Os resultados dos testes podem ser visualizados diretamente na aba **Actions** do repositório no GitHub.

## 🌐 Link do Projeto para Testes

O projeto pode ser acessado para fins de teste através do seguinte link:

[Organo Teste](https://organo-teste.vercel.app/)

---

## 🤝 Contribuindo

1. Faça um fork do projeto.
2. Crie uma branch para sua feature (`git checkout -b feature/NovaFeature`).
3. Faça commit das mudanças (`git commit -m 'Adicionando nova feature'`).
4. Faça push para a branch (`git push origin feature/NovaFeature`).
5. Abra um Pull Request.

## 📝 Licença

Este projeto está sob a licença [MIT](https://opensource.org/licenses/MIT). Veja o arquivo LICENSE para mais detalhes.
