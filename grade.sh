CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
git clone $1 student-submission


if [[ -e student-submission/ListExamples.java ]]
then 
    echo "File found"
    javac ListExamples.java

else 
    error
fi

javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java

java -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar org.junit.runner.JUnitCore TestListExamples > compile.txt

Failure='grep -c "FAILURES" compile.txt'

if [[ $? == 0 ]]
then 
    echo "Compiled successfully"
else 
    echo "Compile not successful"
fi 


echo 'Finished cloning'
