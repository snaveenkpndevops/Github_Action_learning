# Github_Action_learning
This repository contains my GitHub learning files, README examples, and related resources.

## Reference:

```
Youtube: TechTrapture
link:  https://www.youtube.com/watch?v=zH8hz_21x_0&list=PLLrA_pU9-Gz2GnvKN0kzVfIZVEUApgjTN
```


## Note:

For Learning the Github Action, Please refer the `Learning_README.md` to check the order of Readme files.


### Runners in Github Action:

There are 2 types of runner in github action.

1. Github-hosted Runner. [Shared Runner]
2. Self-hosted Runner.



![Runners](./images/Runners.png)



### 1. Github-hosted Runner. [Shared Runner]:


```
// .github/workflows/simple.yml

name: simple-workflow

on:
  # push:
  #   branches:
  #     - main

  workflow_dispatch:    # This line makes the workflow run only when user's manual trigger (eliminates automatic trigger on push)

jobs:
  build:
    runs-on: ubuntu-latest
    
    steps:
      - name: helloworld
        run: echo 'Hello my name is naveen'

```


![Runners](./images/Github-hosted%20runner.png)



### 2. Self-hosted Runner:



