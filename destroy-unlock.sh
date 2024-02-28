#!/bin/bash

export TF_VAR_foundryvtt_docker_image=jobrown/foundryvtt:11.315.1

#terraform state rm 'module.foundry_server.aws_efs_file_system.foundry_server_data'

terraform destroy --auto-approve -target=module.foundry_server.data.aws_iam_policy_document.foundry_data_efs -lock=false
terraform destroy --auto-approve -target=module.foundry_server.data.aws_iam_policy_document.foundry_server -lock=false
terraform destroy --auto-approve -target=module.foundry_server.data.aws_iam_policy_document.foundry_server_assume_role -lock=false
terraform destroy --auto-approve -target=module.foundry_server.data.aws_iam_policy_document.foundry_server_kms_key -lock=false
terraform destroy --auto-approve -target=module.foundry_server.data.aws_region.current -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_ecs_cluster.foundry_server -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_ecs_cluster_capacity_providers.foundry_server -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_ecs_service.foundry_server -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_ecs_task_definition.foundry_server -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_efs_access_point.foundry_server_data -lock=false
#terraform destroy --auto-approve -target=module.foundry_server.aws_efs_file_system.foundry_server_data
terraform destroy --auto-approve -target=module.foundry_server.aws_efs_file_system_policy.foundry_server_data -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_efs_mount_target.private_subnets[0] -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_efs_mount_target.private_subnets[1] -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_eip.nat -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_iam_policy.foundry_server -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_iam_role.foundry_server -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_iam_role_policy_attachment.foundry_server -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_internet_gateway.foundry -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_kms_key.foundry_server_credentials -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_lb.foundry_server -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_lb_listener.foundry_server_https -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_lb_listener.foundry_server_ssh -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_lb_target_group.lb_foundry_server_https -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_lb_target_group.lb_foundry_server_ssh -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_nat_gateway.foundry -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_route.foundry_internet_gw -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_route.foundry_nat_gw -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_route53_record.cloud-foundry -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_route_table.foundry_private -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_route_table.foundry_public -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_route_table_association.private_table[0] -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_route_table_association.private_table[1] -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_route_table_association.public_table[0] -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_route_table_association.public_table[1] -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_security_group.foundry_data_mount -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_security_group.foundry_load_balancer -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_security_group.foundry_server -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_security_group_rule.allow_foundry_port_ingress -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_security_group_rule.allow_outbound -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_security_group_rule.foundry_data_mount_allow_nfs -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_security_group_rule.foundry_data_mount_allow_outbound -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_security_group_rule.lb_allow_foundry_port_egress -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_security_group_rule.lb_allow_inbound_443 -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_security_group_rule.lb_allow_inbound_22 -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_ssm_parameter.foundry_admin_key[0] -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_ssm_parameter.foundry_password -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_ssm_parameter.foundry_username -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_subnet.foundry_privates[0] -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_subnet.foundry_privates[1] -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_subnet.foundry_publics[0] -lock=false
terraform destroy --auto-approve -target=module.foundry_server.aws_subnet.foundry_publics[1] -lock-false
terraform destroy --auto-approve -target=module.foundry_server.aws_vpc.foundry -lock=false
