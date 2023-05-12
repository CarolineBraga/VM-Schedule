# VM schedule
resource "google_compute_resource_policy" "start-stop" {
  name        = "start-stop-policy"
  description = "Start instance at 7:30am and stop instance at 19:00pm"
  instance_schedule_policy {
    vm_start_schedule {
      schedule = "30 7 * * 1,2,3,4,5"
    }
    vm_stop_schedule {
      schedule = "0 19 * * 1,2,3,4,5"
    }
    time_zone = "America/Sao_Paulo"
  }
}