# Projeto de Automação de Testes usando Cucumber e Capybara no Ruby

## Sobre o Projeto

Este projeto consiste na automação de alguns testes da página web do banco: [AdvantageOnlineShopping](https://bugbank.netlify.app/)

## :desktop_computer: Tecnologias Utilizadas

* ```Visual Studio Code (1.81.1)```
* ```ruby (3.2.2)```
* ```rspec (3.12.0)```
* ```cucumber (7.1.0)```
* ```capybara (3.35.3)```
* ```faker (2.22.0)```
* ```pry (0.14.2)```
* ```selenium-webdriver (3.142.7)```
* ```site_prism (3.7.3)```
* ```parallel_tests (4.2.2)```
* ```parallel (1.23.0)```

## 💾 Pré-requisitos

Antes de começar, certifique-se de ter instalado os seguintes pré-requisitos:

- Ruby: [Instalação Ruby](https://www.ruby-lang.org/pt/documentation/installation/)
- ChromeDriver: [Download ChromeDriver](https://sites.google.com/chromium.org/driver/)

## :memo: Instalção do ambiente

Para começar é preciso fazer a intalção do bundle de gem's, por meio do terminal de comando:

```
bundle install
```

## :white_check_mark: Executando o Projeto

Para executar todos os testes implementados vamos executar o seguinte comando no terminal:

```
bundle exec cucumber -p default
```

Se você quiser executar algum teste especifico execute o seguinte comando no terminal:

```
bundle exec cucumber -p default -t@TAG
```
As TAG's disponiveis para esse projeto são:
* **@regression**
  * **@pagina_account**
    * **@acesso_transferencia**
    * **@acesso_extrato**
    * **@acesso_pagamentos**
    * **@acesso_saque**
  * **@extrato**
  * **@login**
    * **@valid_login**
    * **@invalid_login**
      * **@invalid_login_email**
      * **@invalid_login_password**
      * **@empty_login**
    * **@logout**
    * **@redirecionamento_botao_requisitos**
  * **@registro**
    * **@valid_register**
    * **@valid_register_saldo**
  * **@transferencia**
   * **@transfer_sucess**
   * **@transfer_failure**
   * **@transfer_failure2**

Para executar usando o paralelismo execute o seguinte comando no terminal:

```
bundle exec parallel_cucumber -n 4 -o "-p default -t @regression" features/specs
```

## Contato

<a href = "mailto:juliocaetanovds@gmail.com"><img loading="lazy" src="https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white" target="_blank"></a>
<a href="https://www.linkedin.com/in/juliocaetano15/" target="_blank"><img loading="lazy" src="https://img.shields.io/badge/-LinkedIn-%230077B5?style=for-the-badge&logo=linkedin&logoColor=white" target="_blank"></a> 
