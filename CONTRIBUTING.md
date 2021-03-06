# Contributing to Pyload Cookbook

We're glad that you want to contribute to the Pyload cookbook! The first step is the desire to improve the project.

## Quick Contributing Steps

1. Create an account on [GitHub](https://github.com).
2. Create an issue on on [GitHub](https://github.com) (see [Issue Tracker](https://github.com/gridtec/cookbook-pyload/issues))
3. Create a pull request for your change on [GitHub](https://github.com).
4. Link to your patch as a rebased git branch or pull request from the ticket

We regularly review contributions and will get back to you if we have any suggestions or concerns.

### Branches and Commits

You should submit your patch as a git branch named after the Github issue, such as GH-22. This is called a *topic branch* and allows users to associate a branch of code with the ticket.

It is a best practice to have your commit message have a *summary line* that includes the ticket number, followed by an empty line and then a brief description of the commit. This also helps other contributors understand the purpose of changes to the code.

Remember that not all users use Chef in the same way or on the same operating systems as you, so it is helpful to be clear about your use case and change so they can understand it even when it doesn't apply to them.

### Github and Pull Requests

We don't require you to use Github, and we will even take patch diffs attached to tickets on the issue tracker. However Github has a lot of convenient features, such as being able to see a diff of changes between a pull request and the main repository quickly without downloading the branch.

## Functional and Unit Tests

This cookbook is tested with integration tests using Test Kitchen to ensure changes don't cause regressions for other use cases. Ideally all changes include either functional or unit tests.

This cookbook is set up to run tests under Test Kitchen. It uses [inspec](https://github.com/chef/inspec) to run integration tests after the node has been converged to verify the state of the node.

Test Kitchen should run completely without exception using the default baseboxes provided by Chef. Because Test Kitchen creates VirtualBox machines and runs through every configuration in the .kitchen.yml file, it may take some time for these tests to complete.

If your changes are only for a specific recipe, run only its configuration with Test Kitchen. If you are adding a new recipe, or other functionality such as a custom resource, please add appropriate tests and ensure they run with Test Kitchen.

If any don't pass, investigate them before submitting your patch.

Any new feature should have unit tests included with the patch with good code coverage to help protect it from future changes. Similarly, patches that fix a bug or regression should have a regression test. Simply put, this is a test that would fail without your patch but passes with it. The goal is to ensure this bug doesn't regress in the future. Consider a regular expression that doesn't match a certain pattern that it should, so you provide a patch and a test to ensure that the part of the code that uses this regular expression works as expected. Later another contributor may modify this regular expression in a way that breaks your use cases. The test you wrote will fail, signalling to them to research your ticket and use case and accounting for it.

See the TESTING.md file for additional information on testing in this cookbook.

## Code Review

Cookbook maintainers regularly review code contributions and provides suggestions for improvement in the code itself or the implementation.

## Contribution Do's and Don't's

Please do include tests for your contribution. If you need help, ask on the [chef-dev mailing list](https://discourse.chef.io/c/dev) or the [#chef-hacking IRC channel](https://community.chef.io/chat/chef-hacking). Not all platforms that a cookbook supports may be supported by Test Kitchen. Please provide evidence of testing your contribution if it isn't trivial so we don't have to duplicate effort in testing.

Please do indicate new platform (families) or platform versions in the commit message, and update the relevant ticket. If a contribution adds new platforms or platform versions, indicate such in the body of the commit message(s), and update the relevant issues.

Please do ensure that your changes do not break or modify behavior for other platforms supported by the cookbook. For example if your changes are for Debian, make sure that they do not break on CentOS.

Please do **not** modify the version number in the `VERSION` file or change the versiion section of `metadata.rb`, a maintainer will select the appropriate version regarding your change.

Please do **not** modify the following files of this project, which are `chefignore`, `.gitignore`, `LICENSE` or `Rakefile`.
