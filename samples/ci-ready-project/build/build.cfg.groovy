config = [
'master': [
	build: 	true, 
	build_args: "--clean --test", 
	build_version: "1.0.SNAPSHOT",
	build_analysis: true,

	deploy: true, 
	deploy_args: "--deploy --deploy-environment dev"
	
	publish_artifact: true,
	promote_artifact: false
	],

'release/1.0.0':[
	build:	true, 
	clean:	true, 
	test:	true, 
	version: "1.0", 
	deploy: true, 
	deploy_env: 'sit',
	publish_artifact: true,
	promote_artifact: false
	],

'pull-request': [
	build: true, 
	clean: true, 
	test: true, 
	version: "PR-1.0.SNAPSHOT", 
	deploy: true, 
	deploy_env: 'integration'
	pulish_artifact: false,
	promote_artifact: false
	]
]
