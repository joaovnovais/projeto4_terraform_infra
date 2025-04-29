# Infraestrutura como Código com Terraform e CI/CD

Este projeto demonstra a criação automatizada de infraestrutura na AWS utilizando **Terraform** e **GitHub Actions** (CI). É parte de um portfólio prático voltado para Engenharia de Dados com foco em boas práticas de infraestrutura como código.

## Objetivo

Provisionar de forma automática:
- Um bucket S3 para armazenar dados brutos e processados.
- Um database no Glue Data Catalog para futura consulta via Athena.
- Pipeline CI para validar e formatar o código Terraform a cada push ou pull request.

## Tecnologias e Ferramentas

- [Terraform](https://www.terraform.io/) – Provisionamento de infraestrutura como código
- [GitHub Actions](https://github.com/features/actions) – Integração contínua
- [AWS S3](https://aws.amazon.com/s3/) – Armazenamento de dados
- [AWS Glue Catalog](https://aws.amazon.com/glue/) – Catálogo de metadados
- [Ubuntu via WSL2](https://learn.microsoft.com/pt-br/windows/wsl/) – Ambiente de desenvolvimento


##  Funcionalidades do Terraform

- Criação de bucket S3:
  - Nome único para armazenamento dos dados.
- Criação de database no Glue:
  - Nome e descrição definidos via variáveis.

## Integração Contínua (CI)

O workflow `terraform.yml` realiza as seguintes etapas automaticamente:

- `terraform init` – Inicialização do ambiente
- `terraform validate` – Validação da sintaxe
- `terraform fmt -check` – Verificação de formatação
- `terraform plan` – Plano de execução
- `terraform apply` (opcional) – Aplicação automática em push no `main`

## Como Executar Localmente

> Pré-requisitos: AWS CLI configurado, Terraform instalado.

```bash
# Acesse a pasta do projeto
cd terraform

# Inicialize o Terraform
terraform init

# Valide e gere plano de execução
terraform validate
terraform plan

# Aplique a infraestrutura
terraform apply

---
Segurança
Este projeto não utiliza Terraform Cloud ou secrets sensíveis. O código é 100% executado via GitHub Actions e Terraform local, mantendo segurança e portabilidade.
