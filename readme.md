## Terraform

### 

----

### O que é?

> > o Terraform é uma ferramenta para construção, manutenção e versionamento de infraestrutura de forma segura e eficiente. O Terraform pode gerenciar tanto provedores públicos quanto privados.



---

## Recursos



- Link: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources



---

## Comandos



```
# Baixar dependencias para executar
terraform init

# Validar codigo antes de aplicação
terraform validate

# Executar planejamento da implantação
terraform plan

# Implantar codigo ou alterações
terraform apply

# remover implatação
terraform destroy
```



----

### Projeto



> Crei um projetinho pra testar o uso de terraform junto como localstack.

#### Comandos

> Antes é necessário executar o comando `aws configure ` para configurar as credencias
>
> deve ficar dessa forma:
>
> ```
> [local]
> aws_access_key_id = mock
> aws_secret_access_key = mock
> region = us-east-1
> ```
>
> 

- Listar instancias ec2 

```shell
aws ec2 describe-instances  --endpoint http://localhost:4566 --profile local
```

- Listando com query pra mostra apenas campos 

```
aws ec2 describe-instances --query "Reservations[*].Instances[*].[InstanceId,Tags[*]]" --output yaml  --endpoint http://localhost:4566 --profile local 
```

- Listando com status 

```
aws ec2 describe-instances --query "Reservations[*].Instances[*].[InstanceId,Tags[*].Value,State.Name]" --output yaml  --endpoint http://localhost:4566 --profile local 
```

