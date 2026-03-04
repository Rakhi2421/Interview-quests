# Terraform Questions
<details><summary></summary><br><b>
  
</b></details>
<details><summary></summary><br><b>
  
</b></details>
<details><summary></summary><br><b>
  
</b></details>
<details><summary></summary><br><b>
  
</b></details>
<details><summary></summary><br><b>
  
</b></details>
<details><summary></summary><br><b>
  
</b></details>
<details><summary></summary><br><b>
  
</b></details>
<details><summary>09. </summary><br><b>
  
</b></details>

<details><summary>10. What is a Variable?</summary><br><b>

  - **Terraform variables** are input parameters that allow infrastructure code to be flexible, reusable, and environment-independent.
- Terraform Variables are used to parameterize configurations, allowing you to pass values into Terraform so the same code can be reused across environments (dev, test, prod).
- Variables make Terraform code dynamic and reusable.
- They help avoid hard-coding values
- Values can be overridden without changing the code

 ## Variable Block Syntax:
 ```bash
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}
```

## Parts of a Variable Block
|Field          |	Description                                        |
|---------------|----------------------------------------------------|
|variable	      | Block type                                         |
|"instance_type"| Variable name                                      |
|description    | Explains the variable                              |
|type         	| Data type (string, number, bool, list, map, object)|
|default        | Optional default value                             |

## Using a Variable

```bash

resource "aws_vpc" "learning-vpc" {
    cidr_block = var.cidr_block[0]
    tags = {
        Name: "development"
        vpc_env: "dev"
    }
}
```
**var.cidr_block[0] references the variable**

There are 3 ways to pass the value to the input variable.

1. Terraform apply
 - When we use this command, it prompts to enter the value. There we have to enter the required data

2. terraform apply -var "subnet_cidr_block=10.0.30.0/24"
 - We can pass the values to a variable in command only.

3. creating a file with name terraform.tfvars
- If it is created with anothername.tfvars,we have to set a file in command, as terraform looks for terraform.tfvars file.
  ```bash
  terraform apply -var-file anothername.tfvars
  ```

## Variable Types:
Primitive Types
```bash
string
number
bool
```

Complex Types

```bash
   list(string)
map(string)
object({
  name = string
  size = number
})
```

Variable Validation

```bash
variable "instance_type" {
  type = string

  validation {
    condition     = contains(["t2.micro", "t3.micro"], var.instance_type)
    error_message = "Instance type must be t2.micro or t3.micro"
  }
}
```
</b></details>
<details><summary>11. State File (Local vs Remote Backend – S3)</summary><br><b>

  Terraform state file maintains the mapping between my Terraform configuration and the real infrastructure. It helps Terraform determine what to create, update, or delete.
  - Q1: Why is state file required?
    - Terraform is declarative. It compares the desired configuration with the current state stored in the state file to generate an execution plan.
  - Q2: Difference between local and remote backend?
    - Local backend stores state in a local file, suitable for individual use. Remote backend like S3 stores state centrally, enabling team collaboration and state locking.
  ```bash
    terraform {
  backend "s3" {
    bucket         = "my-terraform-state"
    key            = "prod/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
```
</b></details>
<details><summary>12. Modules?</summary><br><b>

  Modules are reusable Terraform configurations that help standardize infrastructure and avoid duplication across environments.
  - Q: Why use modules?
    - For reusability, maintainability, environment consistency, and clean code structure."
      ```bash
      module "vpc" {
      source     = "./modules/vpc"
      cidr_block = "10.0.0.0/16"
      }
      ```
</b></details>
<details><summary>13. Variables & Outputs</summary><br><b>

  Variables are used to parameterize Terraform code, making it flexible across environments. Outputs are used to expose resource attributes after deployment.
  - Q: How can you pass variables?
    - Using terraform.tfvars file, CLI -var option, environment variables, or default values.
      ```bash
      variable:
        variable "instance_type" {
        type    = string
        default = "t2.micro"
        }

      Output:

      output "public_ip" {
      value = aws_instance.web.public_ip
       }
      ```
</b></details>
<details><summary>14. Provisioners</summary><br><b> 

  Provisioners execute scripts on local or remote machines after resource creation.
  - Q: Why are provisioners not recommended?
    - They break idempotency and are difficult to manage in production. Configuration management tools are preferred.
      ```bash
      resource "aws_instance" "web" {
        provisioner "remote-exec" {
         inline = [
          "sudo yum install nginx -y"
         ]
        }
      }
      ```
</b></details>

<details><summary>15. Workspaces</summary><br><b>

  Workspaces allow us to manage multiple environments using the same Terraform configuration but different state files.
  - Q: Workspace vs separate directories?
    - Workspaces provide logical separation using same backend, but separate directories provide better isolation for production environments.
      ```bash
      terraform workspace new dev
      terraform workspace select prod
      ```
</b></details>
<details><summary>16. Backend Configuration</summary><br><b>

  - Backend configuration defines where Terraform stores its state file.
  - Q: Can backend use variables?
    - No, backend configuration does not support variables.
      ```bash
      terraform {
        backend "s3" {}
       }
     ```
</b></details>
<details><summary>17. depends_on</summary><br><b> 

  depends_on is used to define explicit dependency between resources when Terraform cannot automatically detect it.
  - Q: When do you use depends_on?
    - When dependency is not obvious through attribute reference, such as provisioners or external resources.
      ```bash
      resource "aws_instance" "web" {
       depends_on = [aws_security_group.sg]
      }
     ```
</b></details>
<details><summary>18. Resource Lifecycle</summary><br><b>

  Lifecycle block controls how Terraform handles resource creation and deletion.
</b></details>
<details><summary>19. What is create_before_destroy?</summary><br><b>

  It creates a new resource before destroying the old one to avoid downtime.
  ```bash
resource "aws_instance" "web" {
  lifecycle {
    create_before_destroy = true
    prevent_destroy       = true
  }
}
```
</b></details>
<details><summary>20. Data Sources</summary><br><b>

  Data sources are used to fetch existing infrastructure details without creating new resources.
  - Q: Difference between resource and data?
    - Resource creates infrastructure. Data source only reads existing infrastructure.
      ```bash
      data "aws_ami" "latest" {
       most_recent = true
       owners      = ["amazon"]
      }
      ```
</b></details>
<details><summary>21. Remote State Locking (DynamoDB)</summary><br><b>

  State locking prevents multiple users from modifying the Terraform state file simultaneously. In AWS, we use DynamoDB with S3 backend for locking.
  - Q: What happens without locking?
    - Concurrent terraform apply operations can corrupt the state file and cause infrastructure inconsistency.
      ```bash
      resource "aws_dynamodb_table" "lock" {
       name         = "terraform-lock"
       billing_mode = "PAY_PER_REQUEST"
       hash_key     = "LockID"

      attribute {
       name = "LockID"
       type = "S"
      }
      }
      ```
</b></details>
<details><summary>22. How do you implement Terraform in production?</summary><br><b>

  In production, I use modular structure, environment-specific variable files, S3 remote backend with DynamoDB locking, lifecycle rules to prevent downtime, and data sources to integrate with existing infrastructure.
</b></details>
<details><summary>23. count (Meta-Argument)</summary><br><b>

  count is a meta-argument used to create multiple instances of a resource using a numeric value.
  - Q1: When do you use count?
    - When I need multiple identical resources, like creating 3 EC2 instances.
  - Q2: Limitation of count?
    - If we remove one element from middle, Terraform may recreate resources because it is index-based.
      ```bash
      resource "aws_instance" "web" {
       count         = 3
       ami           = "ami-123456"
       instance_type = "t2.micro"

       tags = {
         Name = "web-${count.index}"
        }
      }

      Access Specific Instance:
      aws_instance.web[0].id
      ```
</b></details>
<details><summary>24. for_each (Better than count)</summary><br><b>
  
  - for_each is used to create multiple resources using a map or set of values. It is more stable than count because it uses keys instead of index.
  - Q1: Difference between count and for_each?
    - count uses numeric index and can cause resource recreation if order changes. for_each uses unique keys, making it safer for production.
      ```bash
      variable "instances" {
       default = {
        dev  = "t2.micro"
        prod = "t2.medium"
      }
      }

      resource "aws_instance" "web" {
      for_each      = var.instances
      ami           = "ami-123456"
      instance_type = each.value

      tags = {
        Name = each.key
       }
      }

      Access:
       aws_instance.web["dev"].id

      ```
  
</b></details>
<details><summary>25. what are Dynamic Blocks?</summary><br><b>

  - Dynamic blocks are used to generate nested blocks dynamically inside a resource, especially when block repetition depends on variables.
    - Q: When do you use dynamic block?
      -  When I need to generate multiple nested blocks like multiple ingress rules inside security group.
        ```bash
        variable "ports" {
          default = [22, 80, 443]
        }

        resource "aws_security_group" "sg" {
          name = "dynamic-sg"

          dynamic "ingress" {
           for_each = var.ports
           content {
             from_port   = ingress.value
             to_port     = ingress.value
             protocol    = "tcp"
             cidr_blocks = ["0.0.0.0/0"]
          }
         }
       }
        ```
    
</b></details>
<details><summary>26. What is Terraform Lifecycle Block?</summary><br><b>

  Lifecycle block controls how Terraform handles resource creation, update, and deletion to avoid downtime or accidental destruction.
  - 1. create_before_destroy
       - Creates new resource before deleting old one to ensure zero downtime.
       ```bash
       lifecycle {
         create_before_destroy = true
       }
       ```
    2. prevent_destroy
       - Prevents accidental deletion of critical resources like production database.
         ```bash
         lifecycle {
           prevent_destroy = true
         }
         ```
    3. ignore_changes
       - Tells Terraform to ignore changes to specific attributes, useful when external systems modify resource.
         ```bash
         lifecycle {
         ignore_changes = [tags]
         }

         Ignore specific attribute:
         ignore_changes = [ami]
         ```
    4. replace_triggered_by
       - Forces resource replacement when another resource changes.
         ```bash
         lifecycle {
           replace_triggered_by = [
           aws_security_group.sg
           ]
         }
    - Q: What happens if lifecycle create_before_destroy is not supported?
      - Some resources like unique names cannot be created before destroy due to API constraints.
    - Q: Can we use lifecycle in module?
      - Yes, lifecycle block can be defined inside resource within module.
    - Q: Real-world example of ignore_changes?
      - If autoscaling group modifies desired capacity automatically, we ignore that attribute.
        
         ```  
</b></details>
<details><summary>27. How do you avoid downtime in Terraform?</summary><br><b>

  I use create_before_destroy lifecycle rule, prefer for_each over count for stable resource mapping, and use dynamic blocks for scalable configurations.
</b></details>
<details><summary>28. What are Conditional Expressions?</summary><br><b>

  Conditional expressions in Terraform allow us to assign values dynamically based on conditions, similar to ternary operators in programming languages.
  ```bash
   condition ? true_value : false_value
   ```
   - Q1: Where do you use conditional expressions?
     - I use them to create environment-specific configurations like instance types, resource count, or enabling/disabling resources.
   - Q2: Can you conditionally create a resource?
     - Yes, using count or for_each with conditional expressions.
       ```bash
       Example 1: Conditional Instance Type

       variable "environment" {
         default = "dev"
       }

       resource "aws_instance" "web" {
         ami           = "ami-123456"
         instance_type = var.environment == "prod" ? "t2.medium" : "t2.micro"
       }

       Example 2: Conditional Resource Creation
       resource "aws_instance" "web" {
        count = var.environment == "prod" ? 1 : 0

         ami           = "ami-123456"
         instance_type = "t2.medium"
         }
     
</b></details>
<details><summary>29. What are Locals Block?</summary><br><b>

  Locals are used to define reusable expressions or computed values within Terraform configuration to improve readability and avoid repetition.
  - Q1: Difference between variables and locals?
    - Variables accept input values from users. Locals are internal computed values used within the configuration.
  - Q2: Why use locals?
    - To simplify complex expressions and maintain DRY principle.
      ```bash
      locals {
       common_tags = {
          Environment = var.environment
          Owner       = "DevOps"
       }

      instance_type = var.environment == "prod" ? "t2.medium" : "t2.micro"
      }

      resource "aws_instance" "web" {
       ami           = "ami-123456"
       instance_type = local.instance_type
       tags          = local.common_tags
      }
      ```
</b></details>
<details><summary></summary><br><b>
  
</b></details>
<details><summary>30. What are Terraform Functions? </summary><br><b>

  - Terraform has built-in functions to manipulate strings, lists, maps, etc.
  - 1. 🔹 lookup()
        lookup function retrieves a value from a map, with an optional default if key is not found.
       ```bash
       variable "instance_types" {
        default = {
        dev  = "t2.micro"
        prod = "t2.medium"
        }
       }

       instance_type = lookup(var.instance_types, var.environment, "t2.micro")
       ```
    2. length()
       length function returns the number of elements in a list or characters in a string.
       ```bash
       variable "subnets" {
        default = ["subnet-1", "subnet-2"]
       }

       output "subnet_count" {
         value = length(var.subnets)
       }
       ```
    3. join()
       join function concatenates list elements into a single string using a separator.
       ```bash
       variable "names" {
        default = ["web", "app", "db"]
       }

       output "joined_names" {
         value = join(",", var.names)
       }
       Output: web,app,db
       ```
    4. Q: Why use functions in Terraform?
       - To make configurations dynamic, reusable, and environment-aware. 
</b></details>
<details><summary>31. What are Terraform Triggers?</summary><br><b>

  - Triggers are mainly used in null_resource.
  - Triggers are used inside null_resource to force re-execution when specific values change.
  - Terraform normally runs provisioners only during creation.
  - Triggers allow us to rerun them when input changes.
  - Q1: When do you use triggers?
    - When I need to rerun provisioners based on changes like file hash, configuration updates, or script changes.
  - Q2: What is null_resource?
    - It is a placeholder resource used to execute provisioners without creating real infrastructure.
      ```bash
      resource "null_resource" "deploy" {
        triggers = {
          file_hash = filesha256("app.zip")
        }

       provisioner "local-exec" {
         command = "echo Deploying new version"
       }
     }
    ```
</b></details>
<details><summary>32. How do you make Terraform dynamic and production-ready?</summary><br><b>

  I use conditional expressions for environment-specific configurations, locals for reusable computed values, built-in functions for dynamic data handling, and triggers with null_resource when I need controlled re-execution.
</b></details>




