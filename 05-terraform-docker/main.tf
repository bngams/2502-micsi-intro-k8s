resource "docker_image" "my_ubuntu_img" {
  name = "ubuntu:precise"
}

resource "docker_container" "my_ubuntu_ct" {
  image = docker_image.my_ubuntu_img.id
  name = "foo"
  command = ["sleep", "infinity"]
}