# AFT: Account Provisioning Customizations

This repository contains the [Account Factory for Terraform (AFT) account provisioning customizations](https://docs.aws.amazon.com/controltower/latest/userguide/aft-provisioning-framework.html). As described in the [AFT Code Repositories](https://github.com/clearscale/tf-aws-aft?tab=readme-ov-file#aft-code-repositories) section in the main AFT repo, AFT is a [GitOps](https://en.wikipedia.org/wiki/DevOps#:~:text=referenced%20as%20examples.-,GitOps,rolled%20back%20using%20version%2Dcontrolling.) solution and this is one of the five repositories related to deploying and managing accounts in AWS.

AWS Resources (customizations) can be created through Terraform or through Python, leveraging the API helpers. The customization execution is parameterized at runtime.

## What belongs here?

AFT provides flexibility to customize the provisioning process for new accounts and integrate with systems prior to the account customization stage.

The purpose of this repository is to facilitate provisioning of accounts. This configuration is more advanced and requres knowledge of [AWS Step Functions](https://aws.amazon.com/step-functions/). These are the first customizations that AWS will apply to your account, which will run during provisioning. Step Functions can integrate with other AWS services, such as launching a Lambda or Step Function, or writing to SNS topics or SQS queues.

While the customization stage does include integrations for pre- and post-
customization steps, the Account Provisioning standard allows for further
integration by using an AWS Step Functions State Machine to integrate with
additional environments.

Using this state machine integration, customers may define Account Provisioning
Customizations steps as:

- Lambda functions in the language of their choice
- ECS or Fargate Tasks using docker containers
- AWS Step Functions Activities using custom workers, hosted either in AWS or on-prem
- Amazon SNS or SQS integrations to decoupled consumer-based applications

More information:
https://docs.aws.amazon.com/controltower/latest/userguide/aft-provisioning-framework.html

## What does _not_ belong here?

Account definitions or Infrastructure as Code (IaC) scripts or code that are targeted at specific accounts or all (global) accounts should not be included here. See the list of other AFT Code Repositories below for proper placement of those definitions and customizations. Additionally, Non-essential or non-foundational resources not related to account setup are also outside the scope of all AFT repositories. The aim is to maintain the AFT framework with a minimal a footprint.

## AFT Code Repositories

2. [Primary AFT Module](https://github.com/clearscale/tf-aws-aft)
3. [Account Definitions](https://github.com/clearscale/tf-aws-aft-accounts)
4. [Account Customizations](https://github.com/clearscale/tf-aws-aft-customization-account)
5. [Global Account Customizations](https://github.com/clearscale/tf-aws-aft-customization-global)
6. [Account Provisioning Customizations](https://github.com/clearscale/tf-aws-aft-customization-account-provisioning)