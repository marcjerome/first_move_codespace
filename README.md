### Instructions
- The docker files will only be used in Codespace to be able to use aptos command in codespace command line
- If you are working on your own machine. See instructions here: https://aptos.dev/en/build/cli/install-cli/install-cli-linux

### Codespace instruction
- Clone this repo
- move to cloned directory
- `docker compose up -d --build`
- `docker compose exec aptos bash`

### Account Creation
- aptos init

### Move Project Creation
- `aptos move init --name hello_blockchain` (Since we have the directories in this repo, we don't need to execute this anymore)

### Unit tests
- `aptos move test`

### Deploy
- `aptos move deploy`

