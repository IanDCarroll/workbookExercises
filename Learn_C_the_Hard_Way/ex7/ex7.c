#include <stdio.h>

int BUGS = 100;
double BUG_RATE = 1.2;

long calc_universe() {
    return 1L * 1024L * 1024L * 1024L * 1024L; 
}

double calc_bugs(int bugs, double bug_rate) {
    return bugs * bug_rate;
}

double calc_part(double expected_bugs, long universe_of_defects) {
    return expected_bugs / universe_of_defects;
}

void basic_status() {
    int distance = 100;
    float power = 2.345f;
    double super_power = 56789.4532;
    char initial = 'A';
    char first_name[] = "Zed";
    char last_name[] = "Shaw";

    printf("You are %d miles away.\n", distance);
    printf("You have %f levels of power.\n", power);
    printf("You have %f awesome super powers.\n", super_power);
    printf("I have an initial %c\n", initial);
    printf("I have a first name %s.\n", first_name);
    printf("I have a last name %s.\n", last_name);
    printf("My whole name is %s %c %s.\n",
           first_name, initial, last_name);
}

void bug_status(int bugs, double bug_rate) {
     printf("You have %d bugs at the imaginary rate of %f.\n",
           bugs, bug_rate);
}

void universe_status(long universe_of_defects) {
    printf("The entire universe has %ld bugs.\n", universe_of_defects);
}

void predicted_status(double expected_bugs) {
    printf("You are expected to have %f bugs.\n", expected_bugs);
}

void percent_status(double part_of_universe) {
    printf("that is only a %e portion of the universe.\n",
           part_of_universe);
}

void demo_something_weird(int bugs) {
    char nul_byte = '\0';
    int care_percentage = bugs * nul_byte;
    printf("Which means you should care %d%%.\n", care_percentage);
}

void run_ex7() {
    int bugs = BUGS;
    double bug_rate = BUG_RATE;
    long universe_of_defects = calc_universe();
    double expected_bugs = calc_bugs(bugs, bug_rate);
    double part_of_universe = calc_part(expected_bugs, universe_of_defects);

    basic_status();
    bug_status(bugs, bug_rate);
    universe_status(universe_of_defects);
    predicted_status(expected_bugs);
    percent_status(part_of_universe);
    demo_something_weird(bugs);
}

int main(int argc, char*argv[]) {
    run_ex7();
    return 0;
}
