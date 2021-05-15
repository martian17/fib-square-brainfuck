# assembled program

# 11 1 1 (fib1) (fib2) (root) ((diff))
+>+>+>+
# fF r d]:0
#      ^

# end loop when diff flag 0
[
    - # reset the flag (garbage collection)
    
    # fF r 0
    #      ^
    # advance one step in fibonacci sequence
    <<<[->>>+<<<]
    # 0F r f
    # ^
    >[-<+>>>+<<]
    # F0 r F'
    #  ^
    >>[-<<+>>]
    # FF' r 0
    #       ^
    
    # first task is the catching up of root to fib2
    # resulting state from this code block will result in output like the following
    ## fF r' 0
    ##       ^


    # fF r 0
    #      ^

    +
    # fF r 1
    #      ^
    [
        - # reset the flag
        <[->+>+>+<<<]
        >[-<+>]>
        # fF r 0 rr
        #        ^
        ## insert multiplication code here
#
###########

# multiplication code
[->>+<<]
# 0ab0
# ^
>[-
>[->+<<<+>>]
# ba0b
#   ^
>[-<+>]
# bab0
#    ^
<<
]
# p0b0
#  ^
>[-]
<<
# p000
# ^

###########
#
        # fF r 0 P
        #        ^
        <<<[->>+>>+<<<<]
        >>>>[-<<<<+>>>>]<<
        # fF r FP 0
        #      ^
        ## insert the comparison code here
#
###########

# 2500
# ^
# FP 0
# ^
## c == 0 iff P)F
# c00
# ^

>>>>+
# 25001
#     ^

[<<<<[->]>>]
# 03001
#   ^

>>[ # iff stopped on the first position
# 03001
#     ^
# if there are any remaining: clean them up
<<<<[-]>[[-]>+<]
# 00101
#  ^
>>>>
# 001010
#      ^
]
# clean up
<-<<<[-]<[-]+>>
# 101000
#   ^
[-<<->>]<<
# 00000
# ^

###########
#
        ## c == 0 iff P)F
        # fF r c
        #      ^
        <+> # increment r
    ]
    <--
    # fF r' 0
    #    ^
    [->+>+>+<<<]
    >>>[-<<<+>>>]<<
    # fF r rr
    #      ^
    ## insert multiplication code here
#
###########

# multiplication code
[->>+<<]
# 0ab0
# ^
>[-
>[->+<<<+>>]
# ba0b
#   ^
>[-<+>]
# bab0
#    ^
<<
]
# p0b0
#  ^
>[-]
<<
# p000
# ^

###########
#
    # fF r P
    #      ^
    <<[->>>+>+<<<<]
    >>>>[-<<<<+>>>>]<<
    # fF r PF
    #      ^
    ## insert equal comparison code here
#
###########

# 2200
# ^
>>>>+
# 22001
#     ^

[<<<<[->]>>]
# 00001
#   ^

>>[ # iff stopped on the first position
# 00001
#     ^
# if there are any remaining: clean them up and turn the flag to 1
<<<[>>>-<<<[-]]<[>>>>[-]<<<<[-]]
# 00001
# ^
>>>>+>
# 000020
#      ^
]
<-
<<<[-]<[-]+>>>>

# 00001
#     ^
[-<<<<->>>>]<<<<
# 00000
# ^

###########
#
    ## c == 0 iff P == F
    # fF r c
    #      ^
]
<<.


