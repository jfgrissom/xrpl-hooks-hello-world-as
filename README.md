# XRP Ledger Hello World Hook - AssemblyScript

This repository is meant to help you get familiar with a useful developer workflow for creating Hooks (smart contracts) on the XRP Ledger.

If the following describes you then you're in the right place.

> As someone new to AssemblyScript and XRP Ledger Smart Contracts</br>
> I need to get a development environment up quickly</br>
> so that I can better understand the environment and workflow for creating XRPL hooks with AssemblyScript.

## Steps

1. Clone this repo.
1. Follow the rest of this README.md (below this steps section).
1. Enjoy your new development environment for creating an XRPL smart contract by running your first "Hello World".

## Developer Setup:

To get setup be sure you have docker installed.

**_Note:_** If these instructions are not enough submit an issue to this repo for more clarification also links to additional documentation is at the bottom of this README.

1. After cloning this repo be sure to run `npm install` from the root of this repo on your local development machine.
1. <a href="https://www.typescriptlang.org/download" target="_blank">Install typescript</a>.
1. <a href="https://docs.docker.com/get-docker/" target="_blank">Install docker</a> and confirm it's running.
1. Pull the docker image that has XRPL Hooks setup within it.

   ```
   docker pull xrpllabsofficial/xrpld-hooks-testnet
   ```

1. Start the container.

   ```
   docker run -p 127.0.0.1:6005:6005/tcp -p 127.0.0.1:5005:5005/tcp -d --name xrpld-hooks xrpllabsofficial/xrpld-hooks-testnet
   ```

1. Open a shell on the container to execute commands on.

   ```
   docker exec -it xrpld-hooks /bin/bash
   ```

1. Open another shell on the container to see the log output.

   ```
   docker exec -it xrpld-hooks tail -f log
   ```

1. Get an account and tokens from the "Get Some" button at the <a href="https://hooks-testnet.xrpl-labs.com/" target="_blank">XRPL-Labs Instance of the TestNet</a>.
1. Setup a .env to work from locally. This file is in the .gitignore file so it won't get uploaded on a push.

   ```
   # For now this is just a place to keep these keys but in the future
   #   this might be pulled in by the env module of AssemblyScript
   #   or used during deployment of the hook.
   XRP_ADDRESS=rKnZEHRiT8k4CXERshnvSSrq9xLjxUcRuE
   XRP_SECRET=shLFAePb8kjyVAPdnjssDv69E4pcD
   XRPL_HOST=localhost
   XRPL_PORT=6005
   ```

1. Develop your hook.
1. Run `npm run asbuild` to compile your hook.
1. Unit test your hook.
1. Run `npm run deploy` to deploy the hook to the XRPL Labs Testnet.
1. Integration test your hook.
1. Enjoy.

## Usage

1. Pull the library into your project.

   ```
   # From a terminal in the root of your project
   npm i xrpl-hooks-api-assembly-script -D
   ```

1. import the declarations you want to use into your source code.

   ```
   # assembly/index.ts
   import { _g as GUARD } from '../node_modules/xrpl-hooks-api-assembly-script/dist'
   ```

1. Use the new declaration in your hook or cback functions.

   ```
   # assembly/index.ts
   export function hook(reserved: i64): i64 {
      GUARD(1,1)
      // Unreached code.
      return 42
   }
   ```

## Compiler Options

In the scripts section of your `package.json` using these compiler options are currently working when importing these declarations.

```
"scripts": {
    ...
    "asbuild:untouched": "asc assembly/index.ts --target debug -O3 --noAssert --runtime minimal -b build/untouched.wasm -t build/untouched.wat -d build/untouched.d.ts",
    "asbuild:optimized": "asc assembly/index.ts --target release  -O3 --noAssert --runtime minimal -b build/optimized.wasm -t build/optimized.wat -d build/optimized.d.ts",
    "asbuild": "npm run asbuild:untouched && npm run asbuild:optimized",
    ...
  }
```
