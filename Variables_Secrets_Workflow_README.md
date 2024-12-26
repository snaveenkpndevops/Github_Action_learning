# Github_Action_learning
This repository contains my GitHub learning files, README examples, and related resources.

## Reference:

```
Youtube: TechTrapture
link:  https://www.youtube.com/watch?v=zH8hz_21x_0&list=PLLrA_pU9-Gz2GnvKN0kzVfIZVEUApgjTN
```

## Note:

For Learning the Github Action, Please refer the `Learning_README.md` to check the order of Readme files.


### Variables and Secrets in Github Action

There are few Variable types and secret in Github Action:

1. Workflow Variable  →  Variable that is created and used inside the single workflow.  (local Variable)


2. Configuration Variables for Multiple Workflow   →   Variable used for multiple workflow   (Global Variable)

	                                                   [ These variable are not configured in our yml file but it is defined on organization, repository. ]

3. Context Variables from github metadata  (Most Important Variable)    (Inbuilt Variable)


4. Input for manually triggered variable workflow    


5. Secrets


### 1. Workflow Variable:  [Local Variable]

Variable that is created and used inside the single workflow. These variables cannot be used in other workflows.


```
// .github/workflows/workflow_variable.yml

name: workflow-variable

on:
  workflow_dispatch:  # This line makes the workflow run only when triggered manually

env:
  name: naveen

jobs:
  build:
    runs-on: ubuntu-latest
    env:
      country: india

    steps:
      - name: Hello World
        run: echo "Hello, my name is ${{ env.name }}, I'm from ${{ env.country }}"

```


![Workflow Variable](./images/Workflow%20variable.png)



### 2. Configuration Variable:  [Global Variable]

Variable used for multiple workflow

[ These variable are not configured in our yml file but it is defined on organization, repository. ]


```
// .github/workflows/Configuration_variable.yml

name: Configuration_variable

on:
  workflow_dispatch:  # This line makes the workflow run only when triggered manually

env:
  name: naveen

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Hello World
        run: echo "${{ env.name }} from ${{ vars.Department }} department"

```


![Configuration_variable](./images/Configuration%20variable1.png)


![Configuration_variable](./images/Configuration%20variable2.png)


![Configuration_variable](./images/Configuration%20variable3.png)


![Configuration_variable](./images/Configuration%20variable4.png)