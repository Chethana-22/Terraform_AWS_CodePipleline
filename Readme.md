# **Terraform IaC DevOps using AWS CodePipeline** 🛠️

## **Overview**
This project demonstrates the creation of an **AWS CodePipeline** using **Terraform** to automate the deployment of **Infrastructure as Code (IaC)** across multiple environments, such as **Development (Dev)** and **Staging**. The pipeline ensures seamless integration and deployment of infrastructure changes with a focus on **reliability**, **scalability**, and **automation**.

---

## **Key Features**
- 🌟 **Multi-Environment Setup**:  
  - Separate stages for **Dev** and **Staging** ensure robust testing before production.  
  - Easily extendable to include **Production** or other environments.

- ⚙️ **Infrastructure as Code**:  
  - Fully automated pipeline for provisioning resources using **Terraform**.  
  - Ensures consistent and repeatable infrastructure deployments.

- 🕒 **Continuous Integration & Deployment**:  
  - Integration with **AWS CodeBuild** and **AWS S3** for automated IaC updates.  
  - Automatically triggers deployments on code changes.

- 🔍 **Monitoring & Logs**:  
  - Centralized logging and monitoring through **AWS CloudWatch** for pipeline activities.  
  - Provides visibility into pipeline execution and error tracking.

- 📈 **Scalability**:  
  - Modular Terraform scripts enable easy extension to other environments.  
  - Designed to handle growing infrastructure needs.

---

## **Technologies Used**
- **Terraform** – Infrastructure as Code (IaC) tool to automate resource provisioning.
- **AWS CodePipeline** – Orchestrates the CI/CD pipeline for infrastructure deployment.
- **AWS CodeBuild** – Builds and tests the Terraform code.
- **AWS S3** – Stores Terraform state files and artifacts.
- **AWS IAM** – Manages permissions and roles for secure pipeline execution.
- **AWS CloudWatch** – Provides logging and monitoring for pipeline activities.

---

<!--## **Architecture Diagram**
![Architecture image](image.png)
-->
---

## **How to Run the Project**

Follow these steps to deploy the AWS CodePipeline for Terraform IaC:

### **Prerequisites**
1. **Terraform** installed on your local machine ([Installation Guide](https://learn.hashicorp.com/tutorials/terraform/install-cli)).
2. **AWS CLI** installed and configured with appropriate credentials ([Configuration Guide](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html)).
3. An **S3 bucket** for storing Terraform state files.
4. **AWS IAM roles** with necessary permissions for CodePipeline, CodeBuild, and S3.

---

### **Steps to Deploy**

## Clone the repository
```bash
git clone https://github.com/your-repo/terraform-iac-codepipeline.git
cd terraform-iac-codepipeline
```

## Initialize Terraform

```bash
terraform init
```
This downloads the required provider plugins and initializes the working directory.

## Review the Execution Plan

```bash
terraform plan
```
This command generates an execution plan, showing the resources that Terraform will create.

## Apply the Configuration

```bash
terraform apply
```
Type `yes` when prompted to confirm the resource creation.
Wait for Terraform to complete provisioning the resources.

## Access the Pipeline

1. Navigate to the AWS CodePipeline console.
2. Locate the pipeline created by Terraform (e.g., `terraform-iac-pipeline`).
3. Monitor the pipeline execution and verify deployments to Dev and Staging environments.

## Cleanup

To delete the resources created by Terraform, run:

```bash
terraform destroy
```
Type `yes` when prompted to confirm the resource deletion.

## Pipeline Workflow

### Source Stage
- Fetches the Terraform code from a specified repository (e.g., GitHub, S3).
- Triggers the pipeline on code changes.

### Build Stage
- Uses AWS CodeBuild to validate and build the Terraform code.
- Generates artifacts for deployment.

### Deploy to Dev
- Provisions infrastructure in the Development environment using Terraform.
- Validates the deployment.

### Deploy to Staging
- Provisions infrastructure in the Staging environment using Terraform.
- Ensures readiness for production.


## Monitoring and Logging

### AWS CloudWatch Logs
- Tracks pipeline execution and logs errors or warnings.
- Provides insights into build and deployment activities.

### AWS CloudWatch Alarms
- Configures alarms for pipeline failures or performance issues.
- Sends notifications via SNS for quick resolution.


## Conclusion

This project provides a robust and scalable solution for automating infrastructure deployments using Terraform and AWS CodePipeline. By leveraging CI/CD best practices, it ensures reliable and efficient management of infrastructure across multiple environments. 🚀
