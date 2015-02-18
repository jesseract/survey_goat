Find SurveyGoat on Heroku at https://surveygoat.herokuapp.com.

SurveyGoat is a clean, easy-to-use application that allows users to create custom surveys.  

A new user can sign up and create an account as an author.  When they log in, they see a list of the surveys that they have created.

Homework:
First, install the Faker gem and use it in your seed file to create at least 1000 records in each of the following tables: authors, surveys, questions, and answers. You may need to put records in other tables as well to support these.

Second, write SQL statements (in your gist) and model methods (in your model files) to accomplish the following:

Find all authors with an email address of "shakespeare@example.com"
Find the author who was created most recently
Find the number (count) of each type of question in the database
Find the most common answer to a particular question (given a question_id)
Find all survey names, and show their author's email addresses with them
Find all authors who have never created a survey
