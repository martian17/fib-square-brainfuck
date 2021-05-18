# 25
--

# main code from here
###########
>>>>+>>+++++++++++++++<<
# 25 0 0 0 1 0 15
#          ^
[
    <<<<
    # resetting the tally counter
    >+++++++++++++++>>>
    # 25 15 0 0 1 0 15
    #           ^
    [<<<<[->]>>]
    # 9 0 0 0 1 0 15
    #       ^
    +>
    # 9 0 0 1 1 0 15
    #         ^
    [ # iff there is remainder
        >+ # depositing the value
        << # matching the position with the other case
        -  # resetting the flag and exiting the condition
        # 9 0 0 0 1 1 15
        #       ^
    ]
    <
    # 0 6 1 0 1 1 15 (on the second loop)
    #     ^
    [ # iff there no remainder: end of loop
        # subtract from the second value
        <[->>>>>-<<<<<]> # subtraction
        >>-<< # exit from the main loop
        - # exit out from the condition
        # 0 0 0 0 1 1 9 (on the second loop)
        #     ^
    ]
    >>
]

>[-<<<<<+>>>>>]>[-<<<<<+>>>>>]<<<<<<


###########

,
