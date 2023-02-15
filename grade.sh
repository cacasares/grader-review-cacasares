CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
git clone $1 student-submission


if [[ -e student-submission/ListExamples.java ]]
then 
    echo "File found"
else 
    error
fi
cp../ListExamplesTest.java



echo 'Finished cloning'
