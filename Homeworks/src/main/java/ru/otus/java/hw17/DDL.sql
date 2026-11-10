CREATE TABLE question ( id INT PRIMARY KEY,  text_question VARCHAR(255) NOT NULL,  answer1 VARCHAR(100) NOT NULL, answer2 VARCHAR(100) NOT NULL, answer3 VARCHAR(100), answer4 VARCHAR(100), answer5 VARCHAR(100));

CREATE TABLE test_questions (test_id INT NOT NULL, question_id INT  NOT NULL REFERENCES question(id), PRIMARY KEY (test_id, question_id) );

CREATE TABLE answer ( id INT PRIMARY KEY,  question_id INT NOT NULL UNIQUE REFERENCES question(id) , right_answer INT NOT NULL CHECK (right_answer BETWEEN 1 AND 5));
