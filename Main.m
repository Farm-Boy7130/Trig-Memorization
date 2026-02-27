clc,clear

fprintf('Integrals (type int) or Derivatives (type dx)?\nEnter Yes for both.\n');
comfirmation = input('Input: ','s');

while ~strcmpi('int', comfirmation) || ~strcmpi('dx', comfirmation) || ~strcmpi('yes', comfirmation)

    clc;
    fprintf('Sorry, your input did not work, please try again: Integrals (type int) or Derivatives (type dx)?\nEnter Yes for both.\n');
    comfirmation = input('Input: ','s');

end

derivatives = {'sin(x)','cos(x)','tan(x)','cot(x)','sec(x)','csc(x)'};
integrals = {'cos(x)','-sin(x)','sec^2(x)','-csc^2(x)','sec(x)tan(x)','-csc(x)cot(x)'};

pauseTimer = 3;

if strcmpi('yes', comfirmation) % BOTH INTEGRALS AND DERIVATIVES
    fprintf('How many questions do you want?\n');
    qc = input('Input: ');

    for i = 1:qc
        clc;

        questionN = randi(length(integrals));
        type = randi(2);

        if type == 1
            question = derivatives{questionN};

            disp(['What is the derivative of ' question '?' newline]);
            userAnswer = input('Answer: ','s');
            answer = integrals{questionN};

            if strcmpi(answer, userAnswer)
                disp('Good job! You got it.');
                pause(pauseTimer); % WAIT 3 SECONDS BEFORE CONTINUING
            else
                disp(['Sorry, the answer was ' answer '. Press Enter to Continue.']);
                pause;
            end

        elseif type == 2
            question = integrals{questionN};

            disp(['What is the integral of ' question '?' newline]);
            userAnswer = input('Answer: ','s');
            answer = derivatives{questionN};

            if strcmpi(answer, userAnswer)
                disp('Good job! You got it.');
                pause(pauseTimer); % WAIT 3 SECONDS BEFORE CONTINUING
            else
                disp(['Sorry, the answer was ' answer '. Press Enter to Continue.']);
                pause;
            end
        end

    end

elseif strcmpi('int', comfirmation) % INTEGRALS EXCLUSIVELY, NO DERIVATIVES WILL COME OUT OF THIS
    fprintf('How many questions do you want?\n');
    qc = input('Input: ');

    for i = 1:qc
        clc;

        questionN = randi(length(integrals));
        question = integrals{questionN};

        disp(['What is the integral of ' question '?' newline]);
        userAnswer = input('Answer: ','s');
        answer = derivatives{questionN};

        if strcmpi(answer, userAnswer)
            disp('Good job! You got it.');
            pause(pauseTimer); % WAIT 3 SECONDS BEFORE CONTINUING
        else
            disp(['Sorry, the answer was ' answer '. Press Enter to Continue.']);
            pause;
        end

    end

elseif strcmpi('dx', comfirmation) % DERIVATIVES EXCLUSIVELY, NO INTEGRALS WILL COME OUT OF THIS
    fprintf('How many questions do you want?\n');
    qc = input('Input: ');

    for i = 1:qc
        clc;

        questionN = randi(length(integrals));
        question = derivatives{questionN};

        disp(['What is the derivative of ' question '?' newline]);
        userAnswer = input('Answer: ','s');
        answer = integrals{questionN};

        if strcmpi(answer, userAnswer)
            disp('Good job! You got it.');
            pause(pauseTimer); % WAIT 3 SECONDS BEFORE CONTINUING
        else
            disp(['Sorry, the answer was ' answer '. Press Enter to Continue.']);
            pause;
        end

    end

end
