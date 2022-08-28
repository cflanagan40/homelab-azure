[azure-servers]
%{ for index, ip in azure_ip ~}
${format("azure-%02d", index)} ansible_host=${ip}
%{ endfor ~}

[azure-servers:vars]
ansible_user=ansible