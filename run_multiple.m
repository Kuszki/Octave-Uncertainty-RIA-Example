clear

pkg load parallel
pkg load statistics

# number of single experiment iterations
num = 1e5

# selected confidence level (in percentage)
cl = 95

# range of error signals number
n_min = 2
n_max = 9

# range of expanded uncertainty values
u_min = 1
u_max = 30

# allowed error signal shapes
shapes = "nuts";

# generate number of error signals for each experiment iteration
rn = randi([n_min n_max], num, 1);

# create function to enable parallel execution for iterations
fn = @(x) gen_redtest(x, u_min, u_max, cl, shapes);

# run experiment using all cpu cores
[~, ~, ~, errs_u, errs_n] = pararrayfun(nproc, fn, rn);

# print table header
printf("\nMETHOD\t[   U-  ;   U+  ] (mean ; std)\n");

# calculate 95% expanded uncertainty for expanded uncertainty estimation error
# in case of using RIA method, then print info about all parameters
[up, um] = get_uncertainty(errs_u, 95, false);
printf("RII:\t[ %0.2f ; %0.2f ] (%0.2f ; %0.2f)\n", um, up, mean(errs_u), std(errs_u));

# calculate 95% expanded uncertainty for expanded uncertainty estimation error
# in case CLT is met assumption, then print info about all parameters
[up, um] = get_uncertainty(errs_n, 95, false);
printf("CLT:\t[ %0.2f ; %0.2f ] (%0.2f ; %0.2f)\n", um, up, mean(errs_n), std(errs_n));

