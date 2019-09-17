/*
 * Copyright 2019 Colin Samples
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Helper script to convert tmux status flags into a unicode icon
 */

#include <stdio.h>

int main(int argc, const char **argv)
{
	const char *str;

	if (argc != 2) {
		fprintf(stderr, "invalid arguments\n");
		return 1;
	}

	switch (argv[1][0]) {
		case '*':
			str = "*";
			break;
		case '-':
			str = "⍅";
			break;
		case '#':
			str = "⎃";
			break;
		case '!':
			str = "🔔";
			break;
		case '~':
			str = "⎚";
			break;
		case 'M':
			str = "⍟";
			break;
		case 'Z':
			str = "z⃢";
			break;
		default:
			fprintf(stderr, "invalid character\n");
			return 1;
	}

	printf("%s", str);

	return 0;
}

