% Define your load balancing problem and parameters
function [Answer] = hb(Problem, BestChrom);
Problem.vm= 6; % Number of servers
Problem.nVar = 10; % Number of tasks
max_iterations = 200; % Maximum number of iterations
max_trials = 20; % Maximum number of trials without improvement before a scout bee is sent
neighborhood_size = 2; % Size of neighborhood for employed and onlooker bees

% Initialize population
population = BestChrom.Gene ; % Random assignment of tasks to servers
best_solution = population; % Initialize best solution
disp(best_solution)
best_fitness = objective_function(best_solution,Problem.vm, Problem.nVar); % Evaluate fitness of best solution

for iter = 1:max_iterations
    % Employed Bees Phase
    for i = 1:Problem.nVar
        for trial = 1:max_trials
            neighbor_solution = population;
            % Generate neighboring solution
            neighbor_solution(i) = mod(neighbor_solution(i) + randi([-neighborhood_size, neighborhood_size]), Problem.vm) + 1;
            % Evaluate fitness of neighboring solution
            neighbor_fitness = objective_function(neighbor_solution,Problem.vm, Problem.nVar);
            % Update solution if it's better
            if neighbor_fitness > best_fitness
                best_solution = neighbor_solution;
                best_fitness = neighbor_fitness;
            end
        end
    end

    % Onlooker Bees Phase
    for i = 1:Problem.nVar
        prob = rand;
        cum_prob = 0;
        for j = 1:Problem.nVar
            cum_prob = cum_prob + (1 / objective_function(population, Problem.vm,Problem.nVar));
            if cum_prob > prob
                break;
            end
        end
        neighbor_solution = population;
        neighbor_solution(i) = mod(neighbor_solution(i) + randi([-neighborhood_size, neighborhood_size]), Problem.vm) + 1;
        neighbor_fitness = objective_function(neighbor_solution, Problem.vm, Problem.nVar);
        if neighbor_fitness < objective_function(population, Problem.vm, Problem.nVar)
            population(j) = neighbor_solution(i);
        end
    end

    % Scout Bees Phase
    if mod(iter, max_trials) == 0
        % Replace solutions with randomly generated ones
        population = randi([1, Problem.vm], 1, Problem.nVar);
    end
end

% Output best solution found
disp('Best solution:');
disp(best_solution);
disp('Best fitness:');
disp(best_fitness);
Answer = best_solution


