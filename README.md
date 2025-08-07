# 🌦️ POC - Dashboard de Clima e Câmbio com Grafana

Este projeto é uma **prova de conceito (POC)** para construir um pipeline de dados completo, utilizando ferramentas modernas de infraestrutura como código, extração e visualização de dados.

---

## 🎯 Objetivo

Criar um **dashboard no Grafana** com:

- 🌡️ **Temperatura atual** de Santa Maria (ou outra localidade)
- 💱 **Cotação de moedas** (ex: dólar, euro, bitcoin)

---

## 🧰 Tecnologias Utilizadas

| Camada               | Ferramenta         | Função                              |
|----------------------|--------------------|-------------------------------------|
| Infraestrutura       | Terraform          | Provisionamento (S3, RDS, etc)     |
| Versionamento        | Git + GitHub       | Repositório e automações CI/CD     |
| Pipeline de dados    | Meltano            | Extração de APIs (clima e câmbio)  |
| Armazenamento bruto  | AWS S3             | Dados extraídos no formato raw     |
| Banco relacional     | PostgreSQL         | Persistência para visualização     |
| Visualização         | Grafana            | Dashboard final                     |

---

## 📁 Estrutura do Projeto


poc-dados-clima-cotacao/
├── infra/
│ └── terraform/
│ ├── envs/
│ │ ├── dev/
│ │ └── prod/
│ └── modules/
│ └── s3/
├── meltano_pipeline/
├── .github/
│ └── workflows/
│ ├── terraform-dev.yml
│ └── terraform-prod.yml
└── README.md


---

## 🚀 CI/CD com GitHub Actions

- O ambiente `dev` aplica o Terraform automaticamente a cada `push`
- O ambiente `prod` está configurado para aplicar **apenas após Pull Requests aprovados**
- As credenciais da AWS são gerenciadas via **GitHub Secrets**

---

## 🔐 Requisitos

- Conta na AWS com permissão para S3 e (futuramente) RDS
- AWS CLI instalado e configurado (para uso local)
- Terraform instalado
- Python/Meltano instalado
- Docker (para PostgreSQL local)
- Grafana rodando localmente ou via contêiner

---

## 📦 Próximos passos

- [x] Infra `dev` com S3 provisionada via CI
- [ ] Implementar extração de dados com Meltano (clima e câmbio)
- [ ] Armazenar dados no S3 (camada staging)
- [ ] Carregar dados no PostgreSQL (camada trusted)
- [ ] Construir dashboards no Grafana

---

## 📄 Licença

Este projeto é livre para uso educacional ou profissional como base para estudos de pipelines de dados modernos com foco em automação e boas práticas.

