#!/usr/bin/env gst

Character extend [
	rot13 [
		| cipherchar |

		cipherchar := self isLowercase ifTrue: [
			((((self asInteger - ($a asInteger)) + 13) \\ 26) + ($a asInteger)) asCharacter
		]
		ifFalse: [
			self isUppercase ifTrue: [
			((((self asInteger - ($A asInteger)) + 13) \\ 26) + ($A asInteger)) asCharacter
			]
			ifFalse: [
				self
			]
		].

		^cipherchar
	]
]

String extend [
    rot13 [
		| ciphertext |

		ciphertext := self collect: [ :c | c rot13 ].

		^ciphertext
	]
]

[
	[ stdin atEnd ] whileFalse: [
	    Transcript show: (stdin nextLine rot13); cr.
	]
] on: ExUserBreak do: [].