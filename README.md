> [!WARNING]
> **This repository is no longer maintained and has been archived.**
>
> The Chocolatey packages built from here are outdated. For current versions on Windows, use:
> * **terragrunt** – `winget install Gruntwork.Terragrunt` or `scoop install terragrunt` (the Chocolatey package source now lives at [MrZablah/chocolatey-packages](https://github.com/MrZablah/chocolatey-packages))
> * **terraformer** – `scoop install terraformer` or the [upstream releases](https://github.com/GoogleCloudPlatform/terraformer/releases)
> * **kubergrunt** – the [upstream releases](https://github.com/gruntwork-io/kubergrunt/releases)

# Chocolatey Packages

[Chocolatey](https://chocolatey.org/) Package sources for the following tools:

* [terragrunt](https://github.com/gruntwork-io/terragrunt)
* ~~[terraform-docs](https://github.com/segmentio/terraform-docs)~~
* ~~[tfsec](https://github.com/liamg/tfsec)~~
* [kubergrunt](https://github.com/gruntwork-io/kubergrunt)
* [terraformer](https://github.com/GoogleCloudPlatform/terraformer)


## Terragrunt
The current version is 0.29.4, install it using choco:
```
choco install terragrunt
```

## Kubergrunt
The current version is 0.6.16, install it using choco:
```
choco install kubergrunt
```
   
## Terraformer
The current version is 0.8.13, install it using choco:
```
choco install terraformer
```   



# Calculating SHA256

Calculating SHA256 for packages where not applicable
```batch
certUtil -hashfile pathToFileToCheck SHA256
```
