# Bash scripting assignment
1. Assignment 1
- Given a directory to a code repos, print out a list of contributor’s name along with number of commits. If names of author are provided as arguments, return only commits for those.
- Print out usage instruction if arguments are not given correctly
- For example:
```
./count-commits.sh ~/react-project
./count-commits.sh ~/react-project “Alex Max” “Mr. Bean”
```
- The output should be something like:

```
Mr. A - 100
Mr. B - 200
Mr. C - 300
```
2. Assignment 2
- Given a directory of a React project repos, count number of times a component with a given name is used (the component name should be given as argument of the script & multiple names can be given)
- Print out usage instruction if arguments are not given
- For example: ./component-count.sh Button Header Footer
- The output should be like:

```
Button - 10
Header - 2
Footer - 1
```
3. Assignment 3 [https://restcountries.com/](https://restcountries.com/)
Write a script that
- Given a name (or names) of a country, print out information about the country name, population, capital, languages. The name should be argument of the script (hint: use jq for parsing json)
- Print out usage instruction if arguments are not given
- For example: ./country.sh Vietnam Finland
- The output should be something like:

```
Name: Vietnam
Capital: Hanoi
Population: 92700000
Languages: Vietnamese

Name: Finland
Capital: Helsinki
Population: 5491817
Languages: Finnish, Swedish

```

