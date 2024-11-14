

Custom Module
 This module creates an AWS EC2 instance.
## Inputs
- <span class="MathJax" id="MathJax-Element-141-Frame"| tabindex="0" style="position: relative;" data-mathm|="" role="presentation">ami " role="presentation">ami " role="presentation">ami : AMI ID for the EC2 instance.
- <span class="MathJax" id="MathJax-Element-142-Frame" tabindex="0" style="position: relative;" data-mathm|="" role="presentation"> € s tan ce, yperole="presentation">€ stan ce, yp'e role="presentation">E stan ce, ypelnstance type for the EC2 instance.

## output

- <span class="MathJax" id="MathJax-Element-143-Frame"

tabindex="0" style="position: relative;" data-mathm|=""

role="presentation"> € stan ce; role="presentation">E s tan ce; d

role="presentation">E stan ce;dID of the created EC2 instance.

• Description: This creates a README file to document the

module.


# Custom Module for AWS EC2 Instance

This module creates an AWS EC2 instance with customizable options such as AMI ID and instance type.

## Inputs

- `ami`: (Required) The Amazon Machine Image (AMI) ID to use for the EC2 instance.
- `instance_type`: (Required) The type of the EC2 instance (e.g., `t2.micro`, `t3.medium`, etc.).

## Outputs

- `instance_id`: (String) The ID of the created EC2 instance.
- `public_ip`: (String) The public IP address of the created EC2 instance. This is only applicable if the instance is assigned a public IP.

## Example Usage

```hcl
module "example" {
  source        = "../modules/custom-module"   
  ami           = "ami-0984f4b9e98be44bf"     
  instance_type = "t3.medium"                 
}


output "instance_id" {
  value       = aws_instance.example.id
}
