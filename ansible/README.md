ansible-galaxy install gsoft.azure_devops_agent

ansible-playbook -i ../terraform/inventory --ask-vault-password build-agent.yaml