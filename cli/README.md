# GitHub Action for the Ballerina CLI

The GitHub Action for [Ballerina CLI](https://ballerina.io/) wraps the `ballerina` command inside of an Action.

## Usage

```
action "Ballerina Build" {
  uses = "ballerina-platform/github-actions/cli@master"
  args = "build"
}

action "Ballerina Push" {
  uses = "ballerina-platform/github-actions/cli@master"
  env = {
    BALLERINA_CENTRAL_ACCESS_TOKEN = "Ballerina Central Access Token"
  }
  args = "push"
}

```

### Environment variables

- `BALLERINA_CENTRAL_ACCESS_TOKEN` – Required only for the "push" action, representing the Ballerina Central access token


