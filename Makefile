#start web server
dialogflow-api:
	sam local start-api

#send dialogflow json to local api
dialogflow-welcome:
	curl -X POST -d @events/welcome.json http://127.0.0.1:3000 --header "Content-Type:application/json"

#upload to S3 current project and API Gateway configuration
package:
	sam package --template-file template.yaml --s3-bucket shirka-ops --s3-prefix lambda/shirkalab/demo  --output-template-file packaged.yaml

#create or update API Gateway/Lambda 
deploy:
	sam deploy --template-file ./packaged.yaml --stack-name demo --capabilities CAPABILITY_IAM

