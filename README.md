# Test Results Aggregator for Universal Resolver

## Goals of this project

- Pick up generated test reports from previous workflows
- Either host them as a github page in this repo or
- send them to a remote server

## Current status

- The action should checkout the test-results-aggregator repo, add the smoke-tests result file to the test-results folder and push it to the given branch. The idea is to host this branch on github pages which would be automatically updated with the push.
- While this repo is in a personal account it makes not much sense to enable SSH access. There is the possibility of Deploy keys, but they would work only for this account and repo.
- Atm there is no server which does handle the smoke-test file.

## Possible solutions

#### Github pages
It is possible to create [Machine Users](https://developer.github.com/v3/guides/managing-deploy-keys/#machine-users) and add them to organizations. This user can then get a [Deploy Key](https://developer.github.com/v3/guides/managing-deploy-keys/#deploy-keys) which can be used like described in this [blog](https://devops.ionos.com/tutorials/configure-a-docker-container-to-automatically-pull-from-github-using-oauth/).

#### Remote server
There are several [actions](https://github.com/marketplace?before=Y3Vyc29yOjIx&query=upload&type=actions) on the Marketplace which upload files to remote servers.