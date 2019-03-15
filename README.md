# Deploy many workloads with a large environment variable #

## Requirements #
python: v2.7

curl: v7.54

## How to Use ##
1. Open chrome inspector and select networking tab
2. Deploy a workload in rancher UI with name `abcdefghr0`
3. Right click the request in the inpsect and select copy as curl
4. Paste into load_vars.sh on line with paste comment, copy portion between --data-binary and --compressed (exclusive), save
5. Paste into input file, delete outter-most single quotes, save
6. Open load_vars.sh, Replace portion between --data-binary and --compressed with `"@input"`, save
5. Copy contents of enviroment file into "environment" field of input file
6. run `chmod +x load_vars.sh`
7. run `./load_vars.sh <number of deployments> <start index (you can just set this to 0)>`

