#!/bin/bash

az group create --location eastus --name rg-terraformstate
az storage account create --name terrastatestorage00114 --resource-group rg-terraformstate --location eastus --sku Standard_LRS
az storage container create --name terraform-state-container --account-name terrastatestorage00114
az storage container list --account-name terrastatestorage00114 -o table
