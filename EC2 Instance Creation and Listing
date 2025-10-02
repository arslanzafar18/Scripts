aws ec2 run-instances 
--image-id ami-0a716d3f3b16d290c  
--count 2   
--key-name drhistory 
--instance-type t3.micro
                     ^^ To Create EC2 instances ^^
aws ec2 describe-instances \
  --region eu-north-1 \
  --query "Reservations[*].Instances[*].{ID:InstanceId,State:State.Name,Type:InstanceType,IP:PublicIpAddress}" \
  --output table
                          List as the EC2 Instances
