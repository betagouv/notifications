# Notifications

Notifications est un clone de GC Notification, lui-même un clone de
GOV.UK Notify. Il vise à répondre aux mêmes enjeux.

## Structure

Nous utilisons un monorepo (celui-ci) pour lancer en concert
[l'API](https://github.com/betagouv/notification-api) et [l'interface
admin](https://github.com/betagouv/notification-admin). Ainsi il
devrait rester simple en ne contenant que des références de commit
pour les sous-modules et un `Makefile`/`docker-compose.yml` pour
orchestrer leur lancement.

## Mise en route

### Création des fichiers `.env`

Les applications se servent de fichier `.env` qu'on peut initialiser
en copiant le fichier exemple:

```shell
git submodules foreach cp .env.example .env
```

### Lancement des services

```shell
make run
```

`make run` se charge de lancer `docker-compose up` en transmettant les
bonnes valeurs pour les commits des sous-modules qui sont plus
difficiles à calculer une fois dans le conteneur lui-même.

## Débogage

Pour opérer dans leurs containeurs respectifs sont fournies les
commandes `make api-prompt` et `make admin-prompt`.
