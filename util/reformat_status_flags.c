/*
 * Copyright 2019 Colin Samples
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Helper script to convert tmux status flags into a unicode icon
 */

#include <stdio.h>
#include <string.h>

int main(int argc, const char **argv)
{
	const char *str;
	size_t i, len;

	if (argc != 2) {
		fprintf(stderr, "invalid arguments\n");
		return 1;
	}

	len = strlen(argv[1]);

	for (i = 0; i < len; i++) {
		switch (argv[1][i]) {
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
	}

	return 0;
}

