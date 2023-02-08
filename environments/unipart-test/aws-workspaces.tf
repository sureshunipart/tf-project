data "aws_workspaces_bundle" "Unipart_Digital" {
  bundle_id = var.bundleid # Value with Windows 10 (English)
}

data "aws_workspaces_directory" "Unipart" {
  directory_id = var.directoryid # Value with Windows 10 (English)
}

resource "aws_workspaces_workspace" "workspace-user-1" {
  directory_id = data.aws_workspaces_directory.Unipart.id
  bundle_id    = data.aws_workspaces_bundle.Unipart_Digital.id
  user_name    = "test"

  root_volume_encryption_enabled = true
  user_volume_encryption_enabled = true
  volume_encryption_key          = "alias/aws/workspaces"

  workspace_properties {
    compute_type_name                         = "VALUE"
    user_volume_size_gib                      = 10
    root_volume_size_gib                      = 80
    running_mode                              = "AUTO_STOP"
    running_mode_auto_stop_timeout_in_minutes = 60
  }

  tags = {
    Client          = var.client
    Environment     = var.environment
    Cost-Center     = var.cost-center
    CreatedOn       = timestamp()
  }
}

resource "aws_workspaces_workspace" "workspace-user-2" {
  directory_id = data.aws_workspaces_directory.Unipart.id
  bundle_id    = data.aws_workspaces_bundle.Unipart_Digital.id
  user_name    = "giles.rushton"

  root_volume_encryption_enabled = true
  user_volume_encryption_enabled = true
  volume_encryption_key          = "alias/aws/workspaces"

  workspace_properties {
    compute_type_name                         = "VALUE"
    user_volume_size_gib                      = 10
    root_volume_size_gib                      = 80
    running_mode                              = "AUTO_STOP"
    running_mode_auto_stop_timeout_in_minutes = 60
  }

  tags = {
    Client          = var.client
    Environment     = var.environment
    Cost-Center     = var.cost-center
    CreatedOn       = timestamp()
  }
}
