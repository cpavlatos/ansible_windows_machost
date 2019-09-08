# ansible_windows_machost
How to Launch Windows Server with Ansible from Mac OS Host.
You must have locally configured :
- Ansible installed and configured with your AWS account
- boto installed
- IAM credentials
- pywinrm installed

The following will launch a base Windows Server 2012 EC2 instance, by searching for an AMI named "Windows_Server-2012-R2_RTM-English-64Bit-Base-*". The **FIRST** AMI it find it will assign the ami_id value to a variable called **win_ami_id** (see infrastructure.yaml).

Also, this will be launched in the AWS REGION : us-west-2 (OREGON). If you wish to change this see vars.yaml.

To deploy, run the following command :

ansible-playbook -i inventory.yaml win-aws.yml

***Note: secret.yml is unencrypted from this pull. If you wish(and is highly recommended) to protect/encrypt:***
1. Change password after you pull
2. run: **ansible-vault create secret.yml** (from the directory secret.yml is residing)
3. to deploy playbook run: **ansible-playbook -i inventory.yaml win-aws.yml --ask-vault-pass** (it will ask for the password you assigned in step above)

