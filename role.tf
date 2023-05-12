# IAM role to start and stop VMs
resource "google_project_iam_custom_role" "start-stop" {
  role_id     = "StartStop"
  title       = "Start and Stop VM"
  permissions = ["compute.instances.start", "compute.instances.stop"]
}