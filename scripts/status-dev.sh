DEV_INSTANCE_ID=$(aws ec2 describe-instances \
  --filters "Name=tag:Name,Values=dev" \
  --query 'Reservations[].Instances[].[InstanceId]' \
  --output text)

echo $(aws ec2 describe-instances \
 --instance-ids $DEV_INSTANCE_ID \
 --query 'Reservations[].Instances[].[State.Name]' \
 --output text)
