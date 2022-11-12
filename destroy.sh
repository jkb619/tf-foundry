#!/bin/bash

#terraform state rm 'module.foundry_server.aws_efs_file_system.foundry_server_data'

terraform destroy --auto-approve -target=module.foundry_server.data.aws_iam_policy_document.foundry_data_efs
terraform destroy --auto-approve -target=module.foundry_server.data.aws_iam_policy_document.foundry_server
terraform destroy --auto-approve -target=module.foundry_server.data.aws_iam_policy_document.foundry_server_assume_role
terraform destroy --auto-approve -target=module.foundry_server.data.aws_iam_policy_document.foundry_server_kms_key
terraform destroy --auto-approve -target=module.foundry_server.data.aws_region.current
terraform destroy --auto-approve -target=module.foundry_server.aws_ecs_cluster.foundry_server
terraform destroy --auto-approve -target=module.foundry_server.aws_ecs_cluster_capacity_providers.foundry_server
terraform destroy --auto-approve -target=module.foundry_server.aws_ecs_service.foundry_server
terraform destroy --auto-approve -target=module.foundry_server.aws_ecs_task_definition.foundry_server
terraform destroy --auto-approve -target=module.foundry_server.aws_efs_access_point.foundry_server_data
#terraform destroy --auto-approve -target=module.foundry_server.aws_efs_file_system.foundry_server_data
terraform destroy --auto-approve -target=module.foundry_server.aws_efs_file_system_policy.foundry_server_data
terraform destroy --auto-approve -target=module.foundry_server.aws_efs_mount_target.private_subnets[0]
terraform destroy --auto-approve -target=module.foundry_server.aws_efs_mount_target.private_subnets[1]
terraform destroy --auto-approve -target=module.foundry_server.aws_eip.nat
terraform destroy --auto-approve -target=module.foundry_server.aws_iam_policy.foundry_server
terraform destroy --auto-approve -target=module.foundry_server.aws_iam_role.foundry_server
terraform destroy --auto-approve -target=module.foundry_server.aws_iam_role_policy_attachment.foundry_server
terraform destroy --auto-approve -target=module.foundry_server.aws_internet_gateway.foundry
terraform destroy --auto-approve -target=module.foundry_server.aws_kms_key.foundry_server_credentials
terraform destroy --auto-approve -target=module.foundry_server.aws_lb.foundry_server
terraform destroy --auto-approve -target=module.foundry_server.aws_lb_listener.foundry_server_https
terraform destroy --auto-approve -target=module.foundry_server.aws_lb_target_group.lb_foundry_server_https
terraform destroy --auto-approve -target=module.foundry_server.aws_nat_gateway.foundry
terraform destroy --auto-approve -target=module.foundry_server.aws_route.foundry_internet_gw
terraform destroy --auto-approve -target=module.foundry_server.aws_route.foundry_nat_gw
terraform destroy --auto-approve -target=module.foundry_server.aws_route53_record.cloud-foundry
terraform destroy --auto-approve -target=module.foundry_server.aws_route_table.foundry_private
terraform destroy --auto-approve -target=module.foundry_server.aws_route_table.foundry_public
terraform destroy --auto-approve -target=module.foundry_server.aws_route_table_association.private_table[0]
terraform destroy --auto-approve -target=module.foundry_server.aws_route_table_association.private_table[1]
terraform destroy --auto-approve -target=module.foundry_server.aws_route_table_association.public_table[0]
terraform destroy --auto-approve -target=module.foundry_server.aws_route_table_association.public_table[1]
terraform destroy --auto-approve -target=module.foundry_server.aws_security_group.foundry_data_mount
terraform destroy --auto-approve -target=module.foundry_server.aws_security_group.foundry_load_balancer
terraform destroy --auto-approve -target=module.foundry_server.aws_security_group.foundry_server
terraform destroy --auto-approve -target=module.foundry_server.aws_security_group_rule.allow_foundry_port_ingress
terraform destroy --auto-approve -target=module.foundry_server.aws_security_group_rule.allow_outbound
terraform destroy --auto-approve -target=module.foundry_server.aws_security_group_rule.foundry_data_mount_allow_nfs
terraform destroy --auto-approve -target=module.foundry_server.aws_security_group_rule.foundry_data_mount_allow_outbound
terraform destroy --auto-approve -target=module.foundry_server.aws_security_group_rule.lb_allow_foundry_port_egress
terraform destroy --auto-approve -target=module.foundry_server.aws_security_group_rule.lb_allow_inbound_443
terraform destroy --auto-approve -target=module.foundry_server.aws_ssm_parameter.foundry_admin_key[0]
terraform destroy --auto-approve -target=module.foundry_server.aws_ssm_parameter.foundry_password
terraform destroy --auto-approve -target=module.foundry_server.aws_ssm_parameter.foundry_username
terraform destroy --auto-approve -target=module.foundry_server.aws_subnet.foundry_privates[0]
terraform destroy --auto-approve -target=module.foundry_server.aws_subnet.foundry_privates[1]
terraform destroy --auto-approve -target=module.foundry_server.aws_subnet.foundry_publics[0]
terraform destroy --auto-approve -target=module.foundry_server.aws_subnet.foundry_publics[1]
terraform destroy --auto-approve -target=module.foundry_server.aws_vpc.foundry