# Guide d'installation et d'utilisation du projet

Ce guide vous aidera à installer et à utiliser le projet pour déployer une instance EC2 sur AWS à l'aide de Terraform, installer Docker, cloner un dépôt Git, lancer une application et ouvrir les ports nécessaires pour accéder à l'application.

## Prérequis

Avant de commencer, assurez-vous d'avoir les éléments suivants installés et configurés sur votre système :

- Terraform (version X.X.X)
- AWS CLI (avec des clés d'accès IAM configurées)
- Git
- Une paire de clés SSH pour accéder à l'instance EC2

## Instructions d'installation

1. Clonez ce dépôt Git sur votre machine locale :

```bash
git clone git@github.com:Ilies77/Interface_web_hello.git
```

2. Accédez au répertoire du projet :

```bash
cd projet_vm
```

3. Initialisez Terraform pour configurer le backend et les modules :

```bash
terraform init
```


4. Exécutez la commande Terraform pour planifier les modifications :

```bash
terraform plan
```

5. Vérifiez le plan Terraform et assurez-vous qu'il correspond à vos attentes.

6. Appliquez les modifications pour déployer l'infrastructure sur AWS :

```bash
terraform apply
```


7. Suivez les instructions affichées pour confirmer et appliquer les modifications en tapant `yes`.

Une fois l'exécution de Terraform terminée, l'infrastructure devrait être déployée sur AWS et prête à être utilisée.


## Accès à l'application

Après le déploiement de l'infrastructure, vous pouvez accéder à l'application en suivant ces étapes :

1. Trouvez l'adresse IP publique de l'instance EC2 déployée sur AWS.

2. Utilisez un navigateur Web pour accéder à l'adresse IP publique de l'instance EC2.

3. Vérifiez que l'application fonctionne comme prévu.


## Nettoyage

Après avoir terminé l'utilisation du projet, vous pouvez nettoyer les ressources déployées en exécutant la commande Terraform suivante :

```bash
terraform destroy
```


Suivez les instructions affichées pour confirmer la suppression des ressources.

---

Ce guide devrait vous aider à installer et à utiliser le projet de manière efficace. Si vous rencontrez des problèmes ou si vous avez des questions, n'hésitez pas à consulter la documentation de Terraform ou à contacter le support technique.
