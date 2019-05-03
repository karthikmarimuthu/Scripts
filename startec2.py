import boto3
import logging

ec2 = boto3.resource('ec2')

def lambda_handler(event, context):

    filters = [{
            'Name': 'tag:Name', 
            'Values': ['Hotshow hotshow4 *'] 
        },
        {
            'Name': 'instance-state-name', 
            'Values': ['stopped']
        }
    ]
    
    instances = ec2.instances.filter(Filters=filters)
    
    stoppedInstances = [instance.id for instance in instances]
    
    
    if len(stoppedInstances) > 0:
        startingUp = ec2.instances.filter(InstanceIds=stoppedInstances).start()		