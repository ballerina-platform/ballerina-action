# GitHub Action for the Ballerina CLI

The GitHub Action for the [Ballerina CLI](https://ballerina.io/) wraps the `bal` command inside an Action.

## Usage

```
name: Ballerina example

on: [push]

jobs:
  build:
    
    runs-on: ubuntu-latest
    
    steps:
      - name: Checkout
        uses: actions/checkout@v1
    
      - name: Ballerina Build
        uses: ballerina-platform/ballerina-action@master
        with:
          args: 
            pack

      - name: Ballerina Push
        uses: ballerina-platform/ballerina-action@master
        with:
          args: 
            push 
        env: 
            BALLERINA_CENTRAL_ACCESS_TOKEN: ${{ secrets.BallerinaToken }}

```

### Environment variables

- `BALLERINA_CENTRAL_ACCESS_TOKEN` – Required only for the "push" action to represent the Ballerina Central access token. [Preparing for Publishing](https://ballerina.io/learn/publishing-packages-to-ballerina-central/#preparing-for-publishing) will guide to create the token.
- `WORKING_DIR` – Required only if we need to change the current working directory of the repository to another relative path. 

