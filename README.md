# Demo LocalStack and Terraform

This repository provides a demo of how to use LocalStack and Terraform to set up a local AWS-like environment for testing and developing infrastructure as code. LocalStack enables you to run AWS services locally, while Terraform automates the provisioning of infrastructure.

## Prerequisites

Before getting started, ensure you have the following prerequisites:

- [Docker](https://www.docker.com/get-started) installed
- [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli) installed

## Getting Started

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/dsgarcia8/demo_localstack.git
   ``````

2. Navigate to the project directory:

    ```bash
    cd localstack-terraform-demo
    ```

3. Start LocalStack using Docker Compose:

    This will launch LocalStack with the AWS services you specify in the docker-compose.yml file.

    Verify that LocalStack is running by opening the LocalStack web interface at http://localhost:4566 in your browser.

    ```bash
    docker-compose up -d
    ```

4. Initialize the Terraform configuration:

    ```bash
    cd infrastructure
    terraform init
    ```

5. Deploy the Terraform resources to LocalStack:

    ```bash
    terraform apply
    ```

6. Verify that the Terraform-managed resources are up and running in LocalStack:

    ```bash
    terraform show
    ```

## Clean Up

1. Destroy the Terraform-managed resources:

    ```bash
    terraform destroy
    ```

2. Stop and remove LocalStack containers:

    ```bash
    docker-compose down
    ```
