DEV_INSTANCE_ID=$(aws ec2 describe-instances \
  --filters "Name=tag:Name,Values=dev" \
  --query 'Reservations[].Instances[].[InstanceId]' \
  --output text)

echo $(aws ec2 start-instances \
 --instance-ids $DEV_INSTANCE_ID)
