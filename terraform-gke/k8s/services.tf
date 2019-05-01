resource "kubernetes_service" "pingpong" {
  metadata {
    name = "pingpong"

    labels {
      app  = "pingong"
      tier = "pingpong"
    }
  }

  spec {
    selector {
      app  = "pingpong"
      tier = "pingpong"
    }

    type = "LoadBalancer"

    port {
      port = 80
    }
  }
}

resource "kubernetes_service" "snake" {
  metadata {
    name = "snake"

    labels {
      app  = "snake"
      tier = "snake"
    }
  }

  spec {
    selector {
      app  = "snake"
      tier = "snake"
    }

    type = "LoadBalancer"

    port {
      port = 81
    }
  }
}

resource "kubernetes_service" "tetris" {
  metadata {
    name = "tetris"

    labels {
      app  = "tetris"
      tier = "tetris"
    }
  }

  spec {
    selector {
      app  = "tetris"
      tier = "tetris"
    }

    type = "LoadBalancer"

    port {
      port = 82
    }
  }
}