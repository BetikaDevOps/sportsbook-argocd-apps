sportbook/
│── charts/                      # Holds Helm dependencies (if any)
│── common/                      # Common templates and helpers
│   ├── _helpers.tpl             # Common template helpers (labels, naming)
│── values/                      # Stores separate environment values
│   ├── devel/                   # Environment-specific values for devel
│   │   ├── betengine-reserve-api.yaml
│   │   ├── sportsbook-bet-api.yaml
│   │   ├── sportsbook-bet-validation-api.yaml
│   ├── prod_ug/                 # Environment-specific values for prod_ug
│   │   ├── betengine-reserve-api.yaml
│   │   ├── sportsbook-bet-api.yaml
│   ├── prod_ke/                 # Environment-specific values for prod_ke
│   ├── prod_cd/                 # Environment-specific values for prod_cd
│── helm-chart/                   # Single common Helm chart
│   ├── Chart.yaml                # Helm metadata
│   ├── values.yaml               # Base config (overridden per environment)
│   ├── templates/                # Contains Kubernetes manifests
│   │   ├── deployment.yaml
│   │   ├── service.yaml
│   │   ├── ingress.yaml
│   │   ├── configmap.yaml
│   │   ├── _helpers.tpl
│── argocd-apps/                 # ArgoCD ApplicationSets for environments
│   ├── applicationset-devel.yaml  # ApplicationSet for devel
│   ├── applicationset-prod.yaml   # ApplicationSet for prod_ug, prod_ke, prod_cd
│── .github/workflows/            # CI/CD pipelines for Helm deployment
│   ├── helm-deploy.yml           # GitHub Actions pipeline
│── .gitignore                    # Ignore unnecessary files
│── README.md                     # Overview of the repo