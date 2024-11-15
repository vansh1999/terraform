terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_image" "nginx_image" {
  name = "nginx"
  keep_locally = false
}


resource "docker_container" "nginx_container" {
  image = docker_image.nginx_image.name
  name = "nginx_container"
  ports {
    internal = 80
    external = 80
  }

}
 

  


