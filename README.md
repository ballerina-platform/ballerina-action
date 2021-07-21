# GitHub Action for the Ballerina CLI

The GitHub Action for the [Ballerina CLI](https://ballerina.io/) wraps the `ballerina` command inside an Action.

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
            build -c

      - name: Ballerina Push 
        uses: ballerina-platform/ballerina-action@master 
        env:  
          BALLERINA_CENTRAL_ACCESS_TOKEN: ${{ secrets.BALLERINATOKEN }} 
        with: 
          args:  
            push 

```

### Environment variables

- `BALLERINA_CENTRAL_ACCESS_TOKEN` – Required only for the "push" action to represent the Ballerina Central access token.
- `WORKING_DIR` – Required only if we need to change the current working directory of the repository to another relative path. 

