# etebar-iac
Etebar Infrastructure-as-Code

## Prerequisites

#### Dependencies
- _docker_ to be installed using [this link](https://docs.docker.com/v17.09/engine/installation/).
- _docker-compose_ to be installed using [this link](https://docs.docker.com/compose/install/)

## How To Run

#### Environment
Create a `.env` file at the root of this repository directory to contain a valid value for the variables in [`.env.example`](.env.example).

_Note_: The Service Principal must have the following roles:
```
    "Microsoft.Authorization/*/write",
    "Microsoft.Authorization/*/delete",
    "Microsoft.Authorization/*/read"
```

#### Create an executable plan and apply it
```
make up
```

#### Change Target Location
In order to change location from `eastus2`, you will need to update the following lines in:
- [`config.tfvars`](config/config.tfvars)
```
location = "eastus2"
```

## Service Account Setup
```
az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/b1d2b0c9-671c-4a9e-b1b8-be68c6941b31" --name Infrastructure
```