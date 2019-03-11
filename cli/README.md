# GitHub Action for the Ballerina CLI

The GitHub Action for the [Ballerina CLI](https://ballerina.io/) wraps the `ballerina` command inside an Action.

## Usage

```
action "Ballerina Build" {
  uses = "ballerina-platform/github-actions/cli/latest@master"
  args = "build"
}

action "Ballerina Push" {
  uses = "ballerina-platform/github-actions/cli/latest@master"
  env = {
    BALLERINA_CENTRAL_ACCESS_TOKEN = "Ballerina Central Access Token"
  }
  args = "push"
}

```

### Environment variables

- `BALLERINA_CENTRAL_ACCESS_TOKEN` – Required only for the "push" action to represent the Ballerina Central access token.


