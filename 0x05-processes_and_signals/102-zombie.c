#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

/**
 * infinite_while - Sleeps indefinitely
 *
 * Return: 0
 */
int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}

/**
 * main - Entry point
 *
 * Return: 0 on success, error code on failure
 */
int main(void)
{
	int i;
	pid_t child_pid;

	for (i = 0; i < 5; i++)
	{
		child_pid = fork();
		if (child_pid < 0)
		{
			perror("fork");
			return (1);
		}
		if (child_pid == 0)
		{
			exit(0);
		}
		printf("Zombie process created, PID: %d\n", child_pid);
	}

	infinite_while();

	return (0);
}
