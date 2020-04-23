## Guide
1. Navigate to the repo directory
2. Create an image (needed only for the first use)
 ```
  docker build -t moss .
  ```
3. Set the results header name and the programming language of the code to be matched from the `config` file
4. copy all the submissions inside `submissions` folder, they must be direct childs `e.g submissions/sub1.py`
5. Run the container (Must be in the same directory of the `submissions` folder and `config` file)
```
  docker run -v $PWD/submissions:/src/app/submissions --env-file ./config moss
```
6. If no problems encountered the output should end with a link to the results