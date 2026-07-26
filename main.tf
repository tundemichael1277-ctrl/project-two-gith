resource "aws_instance" "project_two_app" {
    ami = "ami-011c04cb040289c2a"
    instance_type = "t3.micro"
    key_name = "mine"
    security_groups = [ aws_security_group.project_two_sg.name ]
    tags = {
      Name = "project_two_app"
    }
     user_data = file("userdata.sh")

  
}