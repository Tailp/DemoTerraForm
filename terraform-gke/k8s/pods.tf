resource "kubernetes_replication_controller" "pingpong" {
  metadata {
    name = "pingpong"

    labels {
      app  = "pingpong"
      tier = "pingpong"
    }
  }

  spec {
    replicas = 1

    selector = {
      app  = "pingpong"
      tier = "pingpong"
    }

    template {
      container {
        image = "gcr.io/natural-metric-235613/pingpong:latest"
        name  = "pingpong"

        port {
          container_port = 80
        }

        env {
          name  = "GET_HOSTS_FROM"
          value = "dns"
        }

        resources {
          requests {
            cpu    = "100m"
            memory = "100Mi"
          }
        }
      }
    }
  }
}

resource "kubernetes_replication_controller" "tetris" {
  metadata {
    name = "tetris"

    labels {
      app  = "tetris"
      tier = "tetris"
    }
  }

  spec {
    replicas = 1

    selector = {
      app  = "tetris"
      tier = "tetris"
    }

    template {
      container {
        image = "gcr.io/natural-metric-235613/tetris:latest"
        name  = "tetris"

        port {
          container_port = 82
        }

        env {
          name  = "GET_HOSTS_FROM"
          value = "dns"
        }

        resources {
          requests {
            cpu    = "100m"
            memory = "100Mi"
          }
        }
      }
    }
  }
}

resource "kubernetes_replication_controller" "snake" {
  metadata {
    name = "snake"

    labels {
      app  = "snake"
      tier = "snake"
    }
  }

  spec {
    replicas = 1

    selector = {
      app  = "snake"
      tier = "snake"
    }

    template {
      container {
        image = "gcr.io/natural-metric-235613/snake:latest"
        name  = "snake"

        port {
          container_port = 81
        }

        env {
          name  = "GET_HOSTS_FROM"
          value = "dns"
        }

        resources {
          requests {
            cpu    = "100m"
            memory = "100Mi"
          }
        }
      }
    }
  }
}
