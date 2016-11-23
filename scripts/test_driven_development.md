
# https://en.wikipedia.org/wiki/Software_testing

Testing levels:

lowest

1. unit testing: 
 * component testing
 * test the functionality of a specific chunk of code
 
```
Object oriented env.
    class level test.
    * case:
        1. create
        2. do x
        3. destruct
    * goal:
        ensure the building block of the software works independently from each other.
    * x can be:
        static code analysis
        dataflow analysis
        metrics analysis
        peer code review
        code coverage
        ..* 
    
```
2. Integration test        
 *  test that seeks to verify the interfaces between components against a software design

```
    module level test.
    * case: 
        test a connection contract between modules, with all possible combinations
        
    
   