/*
 * Copyright 2019 Colin Samples
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Convert a number into a circled unicode version of that number
 */

#include <stdbool.h>
#include <stdio.h>

int main(int argc, char **argv)
{
	int n, ret;
	bool inverted = false;
	char circled_digit[4] = { 0xE2, 0x0, 0x0, 0x0 };

	if (!(argc == 2 || (argc == 3 && argv[1][0] == '!'))) {
		fprintf(stderr, "usage: %s [!] <n>\n", argv[0]);
		return 1;
	}

	if (argc == 3) {
		inverted = true;
	}

	ret = sscanf(argv[argc - 1], "%d", &n);

	if (ret == EOF) {
		fprintf(stderr, "%s: argument empty\n", argv[0]);
		return 1;
	}

	if (ret < 0) {
		perror("sscanf");
		return 1;
	}

	if (ret == 0) {
		fprintf(stderr, "%s: could not parse number\n", argv[0]);
		return 1;
	}

	if (n < 0 || n > 999) {
		fprintf(stderr, "%s: number must be between 0 and 999\n", argv[0]);
		return 1;
	}

	if (n == 0) {
		circled_digit[1] = 0x93;
		circled_digit[2] = inverted ? 0xBF : 0xAA;
	} else if (n <= 20) {
		circled_digit[1] = inverted ? 0x9D : 0x91;
		circled_digit[2] = (inverted ? 0xB6 : 0xA0) + n - 1;
	} else {
		snprintf(circled_digit, sizeof(circled_digit), "%d", n);
	}

	printf("%s", circled_digit);

	return 0;
}

